#!/usr/bin/env python3
"""
All directories in lists must be specified as relative paths
from user $HOME
"""

import os
from os.path import join, expanduser


dirs = [
    'bin',
    'desktop',
    'documents',
    'downloads',
    'music',
    'pictures',
    '.public',
    'Sync',
    '.templates',
    'videos',
    'work',
]

delete_dirs = [
    'Public',
    'Templates',
]

homedir = expanduser('~')


def create_dir(userdir: str) -> bool:
    dirpath = join(homedir, userdir)

    if os.path.isdir(dirpath):
        return
    elif os.path.exists(dirpath):
        raise Exception(f"{dirpath} already exists and is not a directory")
    else:
        cap_dirpath = join(homedir, userdir.capitalize())
        if os.path.isdir(cap_dirpath):
            os.rename(cap_dirpath, dirpath)
        else:
            os.makedirs(dirpath)


for userdir in dirs:
    try:
        create_dir(userdir)
    except Exception as err:
        print(f"{userdir} creation failed: {err}")
    else:
        print(f"{userdir} created successfully")

for userdir in delete_dirs:
    userdir = join(homedir, userdir)
    try:
        os.rmdir(userdir)
    except FileNotFoundError:
        print(f"{userdir} does not exist, skipping deletion")
    except OSError:
        print(f"{userdir} is not empty, skipping deletion")
