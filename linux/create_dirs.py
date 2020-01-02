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


def create_dir(userdir: str) -> bool:
    dirpath = join(expanduser('~'), userdir)

    if os.path.isdir(dirpath):
        return True
    else:
        if os.path.exists(dirpath):
            print(f"{dirpath} already exists and is not a directory")
            return False
        else:
            cap_dirpath = join(expanduser('~'), userdir.capitalize())
            if os.path.isdir(cap_dirpath):
                os.rename(cap_dirpath, dirpath)
            else:
                os.makedirs(dirpath)

            return True

    return False


for userdir in dirs:
    result = create_dir(userdir)
    if result:
        print(f"{userdir} created successfully")
    else:
        print(f"{userdir} creation failed")

for userdir in delete_dirs:
    userdir = join(expanduser('~'), userdir)
    try:
        os.rmdir(userdir)
    except FileNotFoundError:
        print(f"{userdir} does not exist, skipping deletion")
    except OSError:
        print(f"{userdir} is not empty, skipping deletion")
