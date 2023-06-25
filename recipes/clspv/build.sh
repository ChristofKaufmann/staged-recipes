mkdir build
cd build

cmake -GNinja \
  -DEXTERNAL_LLVM=1 \
  -DCLSPV_LLVM_SOURCE_DIR=../llvm/llvm \
  -DCLSPV_CLANG_SOURCE_DIR=../llvm/clang \
  -DCLSPV_LLVM_BINARY_DIR=$PREFIX \
  -DSPIRV_TOOLS_SOURCE_DIR=$PREFIX \
  -DSPIRV_HEADERS_SOURCE_DIR=$PREFIX \
  -DSPIRV_TOOLS_BINARY_DIR=$PREFIX \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_INSTALL_INCLUDEDIR=include \
  -DCMAKE_BUILD_TYPE=Release \
  ..

ninja -j${CPU_COUNT}
ninja install
