export C_INCLUDE_PATH="$PREFIX/include":$C_INCLUDE_PATH
export INCLUDE_PATH="$PREFIX/include":$INCLUDE_PATH
export CPLUS_INCLUDE_PATH="$PREFIX/include":$CPLUS_INCLUDE_PATH
export LD_LIBRARY_PATH="$PREFIX/lib":$LD_LIBRARY_PATH
export CFLAGS=" -L$PREFIX/lib $CFLAGS"
export CPPFLAGS=" -L$PREFIX/lib $CPPFLAGS"
export CXXFLAGS=" -L$PREFIX/lib $CXXFLAGS"
export LD_FLAGS=" -L$PREFIX/lib $LD_FLAGS"


if [[ $(uname -s) == Darwin ]]; then
  RPATH='@loader_path/../lib'
else
  ORIGIN='$ORIGIN'
  export ORIGIN
  RPATH='$${ORIGIN}/../lib'
fi
make condainstall PREFIX=$PREFIX CC=$CC CXX=$CXX

