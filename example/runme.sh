#!/bin/bash

#1. install chefdk first

#2. Run berks with vendoring
berks vendor

#3. Change the chef.config to use current `pwd` PATH
PWD=`pwd`
sed "s,PWD,$PWD,g" chef.config.template > chef.config

#4. run chef
sudo chef-solo -c chef.config -j chef.json
