#!/bin/bash
# this script is run by jenkins to test our dev env and publish it for reuse in the Vagrantfile

BOXNAME=docker-trusty64-basebox.box
VMNAME=full_build

vagrant destroy -f

# build everything and wrap it up, on success clean up the vagrant box
# on fail we might want to inspect the artifact, so don't destroy in that case
vagrant up $VMNAME && vagrant halt $VMNAME && vagrant package $VMNAME --output $BOXNAME
if [ ! -e "$BOXNAME" ]; then
    echo "Failed to build VM"
fi

echo "Done!"
