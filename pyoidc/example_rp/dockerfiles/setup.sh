#!/bin/bash

apt-get update
apt-get install -y \
        wget \
        unzip

# Create a folder for the pyoidc src
mkdir /opt/dirg/src
cd /opt/dirg/src

# Download and unzip pyoidc
wget "https://github.com/rohe/pyoidc/archive/master.zip"
zip_name=$(ls)
unzip ${zip_name}
rm ${zip_name}
src_name=$(ls)
mv ${src_name} pyoidc-master

# install oidc_example/rp3 dependencies
pip install cherrypy==3.2.4
pip install -e /opt/dirg/src/pyoidc-master/
