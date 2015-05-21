#!/bin/sh

FWNAME=opus

if [ ! -d dependencies ]; then
    echo "Please run build-libopus.sh first!"
    exit 1
fi

if [ -d $FWNAME.framework ]; then
    echo "Removing previous $FWNAME.framework copy"
    rm -rf $FWNAME.framework
fi

if [ "$1" == "dynamic" ]; then
    LIBTOOL_FLAGS="-dynamic -undefined dynamic_lookup"
else
    LIBTOOL_FLAGS="-static"
fi

echo "Creating $FWNAME.framework"
mkdir -p $FWNAME.framework/Headers
libtool -no_warning_for_no_symbols $LIBTOOL_FLAGS -o $FWNAME.framework/$FWNAME dependencies/lib/libopus.a 
cp -r dependencies/include/* $FWNAME.framework/Headers/
echo "Created $FWNAME.framework"
