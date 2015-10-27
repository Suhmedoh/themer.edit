#!/usr/bin/env python

#   PLEASE READ THE README FILE
#
#   Please change the config file
#   to the paths you want to change
#
#   default configs are
#   i3 
#   i3status
#   xresources
#

import os
import sys
import yaml
import datetime
import shutil

CONFIG_ROOT = os.path.join(os.path.expanduser('~'), '.config')
THEMER_ROOT = os.path.join(CONFIG_ROOT, 'themer')
TEMPLATE_ROOT = os.path.join(THEMER_ROOT, 'templates')
configPath = os.path.join(THEMER_ROOT, "config.yml")

if not os.access(CONFIG_ROOT, os.W_OK):
    print "please run as sudo or give write access to .config"

def read_config(config):
    with open(config) as config:
        data = yaml.load(config)
    files = data['files']
    return files

def backup(files):
    if  os.path.exists(files):
        timestamp = str(datetime.datetime.now()) 
        shutil.copy(files, files+timestamp)
        shutil.move(files, os.path.join(TEMPLATE_ROOT, os.path.basename(files)))
	return True
    else:
        print "Files does not exist, please check your config file"
	return False

def symlink(filePath):
    if not os.path.islink(filePath):
	filename = os.path.basename(filePath)
    	THEMER_CURRENT = os.path.join(THEMER_ROOT, "current")
    	os.symlink(os.path.join(THEMER_CURRENT, filename), filePath)
    else:
	print "Already linked, ...skipping..."

#make dirs.

if not os.path.exists(THEMER_ROOT):
    os.makedirs(THEMER_ROOT)

if not os.path.exists(TEMPLATE_ROOT):
    os.makedirs(TEMPLATE_ROOT)

filePaths = read_config('config.yml')

#make backup of existing files

for key, configs in filePaths.iteritems():
    if backup(configs):
    	symlink(configs)

#move themer.py to /usr/local/bin/themer
#enables themer to be run anywhere

try:
    shutil.copy("themer.py", "/usr/local/bin/themer")
except:
    print "Are you running as sudo?"

#move config file to .config/themer

#try:
#   shutil.copy("config.yml", os.path.join(THEMER_ROOT, "config.yml"))
#except:
#   print "I don't think you should get this error?"

