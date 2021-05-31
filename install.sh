#!/usr/bin/env sh
#

lscolors_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"

if command -v dircolors > /dev/null; then
  dircolors=dircolors
elif command -v gdircolors > /dev/null; then
  dircolors=gdircolors
else
  echo 'LS_COLORS/install.sh: (g)dircolors not found. Please install GNU coreutils.'
  exit 69  # EX_UNAVAILABLE; see sysexits(3)
fi

if $dircolors -b LS_COLORS > lscolors.sh && $dircolors -c LS_COLORS > lscolors.csh ; then
  if mv -t "$lscolors_data_dir" lscolors.sh lscolors.csh ; then
    cat <<EOF
To enable the colors, add the following line to your shell's start-up script:

For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):
  . "$lscolors_data_dir/lscolors.sh"

For C shell (e.g. ~/.cshrc):
  . "$lscolors_data_dir/lscolors.csh"

EOF
  fi
fi
