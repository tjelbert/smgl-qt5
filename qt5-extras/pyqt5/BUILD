if [ $PYQT_BIG == y ];then
  VBIG=-c
fi &&
# in some cases, we set a symlink to python in the source directory
PATH="$SOURCE_DIRECTORY:$PATH" &&
$PYTHON  ./configure.py --confirm-license $VBIG  -j $MAKE_NJOBS &&
make
