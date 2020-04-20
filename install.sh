#!/usr/bin/env sh

mytmpdir=$(mktemp -d 2>/dev/null || mktemp -d -t 'mytmpdir')

# 3 finger claw technique for POSIX shell programming
shout() { echo "$0: $*" >&2; }
die() { shout "${@:2}"; rm -rf "$mytmpdir"; exit $1; }
try() { "$@" || die $? "cannot $*"; }

status=0

lscolors_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"

if [ ! -d $lscolors_data_dir ]; then
    echo "Creating '$lscolors_data_dir' directory..."
    try mkdir --mode 700 --parents "$lscolors_data_dir"
fi

if dircolors -b LS_COLORS > "${mytmpdir}/lscolors.sh" && dircolors -c LS_COLORS > "${mytmpdir}/lscolors.csh" ; then
  echo "Created the color configuration files."
  try mv -t "$lscolors_data_dir" "${mytmpdir}/lscolors.sh" "${mytmpdir}/lscolors.csh"
  cat <<EOF
Moved color configuration files to '$lscolors_data_dir'.

To enable the colors, add the following line to your shell's start-up script:

For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):
  . "$lscolors_data_dir/lscolors.sh"

For C shell (e.g. ~/.cshrc):
  . "$lscolors_data_dir/lscolors.csh"

EOF
  rm -rf "$mytmpdir"
else
  status=$?
  cat <<EOF
Install was unable to create the color configuration files.
EOF
  rm -rf "$mytmpdir"
  exit $status
fi
