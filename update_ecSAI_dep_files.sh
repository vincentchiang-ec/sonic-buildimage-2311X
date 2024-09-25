#!/bin/bash

export SONIC_BASE=$1

set +e 
## update files for as9736

cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9736_64d-r0/platform_ec.json \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9736_64d-r0/platform.json
cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9736_64d-r0/Accton-AS9736-64D-100G/th4-as9736-64x100G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9736_64d-r0/Accton-AS9736-64D-100G/th4-as9736-64x100G.config.yml


## update files for as9726

cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9726_32d-r0/Accton-AS9726-32D-100G/td4-as9726-32x100G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9726_32d-r0/Accton-AS9726-32D-100G/td4-as9726-32x100G.config.yml
cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9726_32d-r0/Accton-AS9726-32D/td4-as9726-32x400G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9726_32d-r0/Accton-AS9726-32D/td4-as9726-32x400G.config.yml

## update files for as9817

cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64d-r0/Accton-AS9817-64D-100G/th5-as9817-64d-64x100G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64d-r0/Accton-AS9817-64D-100G/th5-as9817-64d-64x100G.config.yml
cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64d-r0/Accton-AS9817-64D-400G/th5-as9817-64d-64x400G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64d-r0/Accton-AS9817-64D-400G/th5-as9817-64d-64x400G.config.yml
cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64d-r0/Accton-AS9817-64D/th5-as9817-64d-64x800G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64d-r0/Accton-AS9817-64D/th5-as9817-64d-64x800G.config.yml
                  

cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64o-r0/Accton-AS9817-64O-100G/th5-as9817-64o-64x100G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64o-r0/Accton-AS9817-64O-100G/th5-as9817-64o-64x100G.config.yml
cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64o-r0/Accton-AS9817-64O-2x400G/th5-as9817-64o-128x400G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64o-r0/Accton-AS9817-64O-2x400G/th5-as9817-64o-128x400G.config.yml
cp -f $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64o-r0/Accton-AS9817-64O/th5-as9817-64o-64x800G_ec.config.yml \
         $SONIC_BASE/sonic-buildimage/device/accton/x86_64-accton_as9817_64o-r0/Accton-AS9817-64O/th5-as9817-64o-64x800G.config.yml

## rebuild sonic-device-data
rm -f $SONIC_BASE/sonic-buildimage/target/debs/bullseye/sonic-device-data_1.0-1_all.deb

set -e 