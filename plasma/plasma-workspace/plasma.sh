#!/bin/sh
if [ "$USER" != "root" ];then
# setup KDE5 environment for SMGL
QTDIR=/opt/qt5
export KF5=$QTDIR
export PATH=$KF5/bin:$PATH
export XDG_CONFIG_DIRS=/etc/xdg
export XDG_DATA_DIRS=$KF5/share:/usr/share
#export XDG_CONFIG_HOME=$HOME/.kde5
export QT_PLUGIN_PATH=$KF5/lib/plugins:$QTDIR/plugins:$QT_PLUGIN_PATH

export QML2_IMPORT_PATH=$KF5/lib/qml
export QML_IMPORT_PATH=$QML2_IMPORT_PATH
export KDEDIR=$QTDIR
export KDE_SESSION_VERSION=5
export KDE_FULL_SESSION=true

export XDG_DATA_HOME=$HOME/.local5
export XDG_CONFIG_HOME=$HOME/.config5
export XDG_CACHE_HOME=$HOME/.cache5
export XCURSOR_PATH=$KF5/share/icons:~/.icons:/usr/share/icons:/usr/share/pixmaps

# temporary runtime directories
export XDG_RUNTIME_DIR=${TMPDIR-/tmp}/plasma-$USER

# Ensure that they exist
mkdir -p $XDG_RUNTIME_DIR
fi

# if already in kde4, need a separate dbus session for kf5
# eval `dbus-launch`
# before using kf5, need to run:
#    kbuildsycoca5
# if kwin is already running, use the following command
# kwin_x11 --replace &


