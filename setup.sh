#!bin/bash

mpvDir = '~/.config/mpv'

srcDir=$(pwd)

function link {
  echo "Creating new symlink: ${mpvDir}"
  ln -s ${srcDir}/${1} ${mpvDir}
}

link lua-modules
link scripts-opts
link scripts
link input.conf

# function linkDotfile {
#   dateStr=$(date +%Y-%m-%d-%H%M)

#   if [ -h "${mpvDir}" ]; then
#     # Existing symlink
#     echo "Removing existing symlink: ${mpvDir}"
#     rm ${mpvDir}

#   elif [ -f "${mpvDir}" ]; then
#     # Existing file
#     echo "Backing up existing file: ${mpvDir}"
#     mv ${mpvDir}{,.${dateStr}}

#   elif [ -d "${mpvDir}" ]; then
#     # Existing dir
#     echo "Backing up existing dir: ${mpvDir}"
#     mv ${mpvDir}{,.${dateStr}}
#   fi

#   echo "Creating new symlink: ${mpvDir}"
#   ln -s ${srcDir}/${1} ${mpvDir}
# }
