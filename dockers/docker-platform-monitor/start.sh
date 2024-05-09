#!/usr/bin/env bash

SONIC_PLATFORM_WHEEL="/usr/share/sonic/platform/sonic_platform-1.0-py3-none-any.whl"
# If the Python 3 sonic-platform package is not installed, try to install it
python3 -c "import sonic_platform" > /dev/null 2>&1 || pip3 show sonic-platform > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "sonic-platform package not installed, attempting to install..."
    if [ -e ${SONIC_PLATFORM_WHEEL} ]; then
        pip3 install ${SONIC_PLATFORM_WHEEL}
        if [ $? -eq 0 ]; then
            echo "Successfully installed ${SONIC_PLATFORM_WHEEL}"
        else
            echo "Error: Failed to install ${SONIC_PLATFORM_WHEEL}"
        fi
    else
        echo "Error: Unable to locate ${SONIC_PLATFORM_WHEEL}"
    fi
else
    # Check that the sonic-platform package is installed correctly.
    # Otherwise, force re-install the sonic-platform package.
    python_lib_path=$(pip3 show sonic-platform | grep Location | cut -d ' ' -f 2)
    metadata_path="${python_lib_path}/sonic_platform-1.0.dist-info/METADATA"
    if [ ! -s $metadata_path ]; then
        echo "sonic-platform package is installed incompletely, force re-install again !!"
        pip3 install --force-reinstall ${SONIC_PLATFORM_WHEEL}
        if [ $? -eq 0 ]; then
            echo "Successfully re-installed ${SONIC_PLATFORM_WHEEL}"
        else
            echo "Error: Failed to re-install ${SONIC_PLATFORM_WHEEL}"
        fi
    else
        echo "sonic-platform package has already been installed"
    fi
fi

exit 0