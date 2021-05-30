#!bin/bash

mpvDir="$HOME/.config/mpv"
srcDir=$(pwd)

# function link {
#   fPath="${mpvDir}/${1}"
#   echo "Creating new symlink: ${fPath}"
#   sudo ln -s "${srcDir}/${1}" ${fPath}
# }

function link {
  dateStr=$(date +%Y-%m-%d-%H%M)
  fPath="${mpvDir}/${1}"
  if [ -h "${fPath}" ]; then
    # Existing symlink
    echo "Removing existing symlink: ${fPath}"
    rm ${fPath}

  elif [ -f "${fPath}" ]; then
    # Existing file
    echo "Backing up existing file: ${fPath}"
    mv ${fPath}{,.${dateStr}}

  elif [ -d "${fPath}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${fPath}"
    mv ${fPath}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${fPath}"
  ln -s ${srcDir}/${1} ${fPath}
}

link lua-modules
link lua-settings
link script-opts
link scripts
link input.conf
