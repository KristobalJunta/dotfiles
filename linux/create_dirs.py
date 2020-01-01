#!/usr/bin/env python3
import os

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
    if os.path.isdir(userdir):
        return True
    else:
        if os.path.exists(userdir):
            print(f"{userdir} already exists and is not a directory")
            return False
        else:
            os.makedirs(userdir)
            return True

    if os.path.isdir(userdir.capitalize()):
        os.rename(userdir.capitalize(), userdir)
        return True

    return False

for userdir in dirs:
    result = create_dir(userdir)
    if result:
        print(f"{userdir} created successfully")
    else:
        print(f"{userdir} creation failed")

for userdir in delete_dirs:
    try:
        os.rmdir(userdir)
    except FileNotFoundError:
        print(f"{userdir} does not exist, skipping deletion")
    except OSError:
        print(f"{userdir} is not empty, skipping deletion")
