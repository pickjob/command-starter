# 
# MSYS构建Gvim
#       git clone https://github.com/vim/vim
cd vim/src
CC=clang CXX=clang++ mingw32-make.exe -f Make_ming.mak clean
CC=clang CXX=clang++ mingw32-make.exe -f Make_ming.mak \
    PYTHON3=/clang64 \
    PYTHON3_VER=312 \
    PYTHON3_HOME=/clang64 \
    PYTHON3INC=-I/clang64/include/python3.12 \
    DYNAMIC_PYTHON3=yes \
    DYNAMIC_PYTHON3_DLL=libpython3.12.dll \
    XPM=no \
    ARCH=x86-64
cd vim
mkdir --parent dist/runtime && rm --recursive --force dist/runtime
cp --recursive --force --verbose runtime dist/runtime && \
    cp --force --verbose src/gvim.exe dist && \
    cp --force --verbose src/vimrun.exe dist && \
    cp --force --verbose src/tee/tee.exe dist && \
    cp --force --verbose src/xxd/xxd.exe dist && \
    cp --force --verbose src/GvimExt/GvimExt.reg dist && \
    cp --force --verbose src/GvimExt/gvimext.dll dist && \
    cp --force --verbose vimtutor.bat dist && \
    cp --force --verbose /clang64/bin/libc++.dll dist