-- native_lsp.lua
-- Direct LSP client implementation without using lspconfig

local M = {}

-- Setup for ast-grep
function M.setup_ast_grep()
  local filetypes = {
    "c", "cpp", "rust", "go", "java", "python", 
    "javascript", "typescript", "html", "css", 
    "kotlin", "dart", "lua"
  }
  
  -- Create filetype autocmd for attaching the LSP client
  vim.api.nvim_create_autocmd("FileType", {
    pattern = filetypes,
    callback = function(args)
      local bufnr = args.buf
      local fname = vim.api.nvim_buf_get_name(bufnr)
      
      -- Check for sgconfig.yaml or sgconfig.yml in project root
      local root_found = false
      local current_dir = vim.fs.dirname(fname)
      
      while current_dir and current_dir ~= "" do
        for _, config_file in ipairs({"sgconfig.yaml", "sgconfig.yml"}) do
          local config_path = current_dir .. "/" .. config_file
          if vim.fn.filereadable(config_path) == 1 then
            root_found = true
            
            -- Setup client
            vim.lsp.start({
              name = "ast-grep",
              cmd = { "ast-grep", "lsp" },
              root_dir = current_dir,
            }, {
              bufnr = bufnr
            })
            
            break
          end
        end
        
        if root_found then break end
        
        -- Move up one directory
        local parent = vim.fn.fnamemodify(current_dir, ":h")
        if parent == current_dir then break end
        current_dir = parent
      end
    end
  })
end

-- Setup for marksman
function M.setup_marksman()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "markdown.mdx" },
    callback = function(args)
      local bufnr = args.buf
      local fname = vim.api.nvim_buf_get_name(bufnr)
      
      -- Find root dir (either .marksman.toml or .git directory)
      local root_dir
      local current_dir = vim.fs.dirname(fname)
      
      -- First check for .marksman.toml
      while current_dir and current_dir ~= "" do
        local config_path = current_dir .. "/.marksman.toml"
        if vim.fn.filereadable(config_path) == 1 then
          root_dir = current_dir
          break
        end
        
        -- Move up one directory
        local parent = vim.fn.fnamemodify(current_dir, ":h")
        if parent == current_dir then break end
        current_dir = parent
      end
      
      -- If no .marksman.toml, look for .git
      if not root_dir then
        current_dir = vim.fs.dirname(fname)
        while current_dir and current_dir ~= "" do
          local git_dir = current_dir .. "/.git"
          if vim.fn.isdirectory(git_dir) == 1 then
            root_dir = current_dir
            break
          end
          
          -- Move up one directory
          local parent = vim.fn.fnamemodify(current_dir, ":h")
          if parent == current_dir then break end
          current_dir = parent
        end
      end
      
      -- If no root found, use the file's directory (single file support)
      if not root_dir then
        root_dir = vim.fs.dirname(fname)
      end
      
      -- Setup client
      vim.lsp.start({
        name = "marksman",
        cmd = { "marksman", "server" },
        root_dir = root_dir,
      }, {
        bufnr = bufnr
      })
    end
  })
end

-- Setup all LSP servers
function M.setup_all()
  M.setup_ast_grep()
  M.setup_marksman()
end

return M