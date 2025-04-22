export CC=clang
export CXX=clang++
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
#
#
# export CC="/opt/homebrew/opt/llvm/bin/clang"
# export CXX="/opt/homebrew/opt/llvm/bin/clang++"
# export SDKROOT="$(xcrun --show-sdk-path)"
#
# # If still missing headers, set CFLAGS/CXXFLAGS:
# export CFLAGS="-isysroot $SDKROOT"
# export CXXFLAGS="-isysroot $SDKROOT"
