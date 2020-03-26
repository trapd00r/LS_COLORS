#!/usr/bin/env sh
#
# Exit codes
# 0 - Install was successful.
# 1 - EPERM - Installation failed due to lack of permissions for ~/.local[/share]
# 2 - mkdir returned an error other than EPERM.

lscolors_data_dir="${XDG_DATA_HOME:-$HOME/.local/share}"

if [[ ! -d $lscolors_data_dir ]]; then
	echo "Creating $lscolors_data_dir directory..."
	mkdir --parents $lscolors_data_dir > /dev/null 2>&1
	status=$?
	case $status in
	0) echo "\nInstallation succeeded.\n"
		break
		;;
	1) cat <<EOF

Install was unable to create the needed directory due to a permissions problem.

Please ensure that you have proper access to:

	$HOME/.local

You can execute the following command and try to install again:

	find ~/.local -type d -exec chmod u+rwx {} +

EOF
		exit 1
		;;
	*) cat << EOF

Install was unable to create the needed directory. The command 'mkdir' returned
the following error code: $status

EOF
		exit 2
		;;
	esac
fi

if dircolors -b LS_COLORS > lscolors.sh && dircolors -c LS_COLORS > lscolors.csh ; then
  if mv -t "$lscolors_data_dir" lscolors.sh lscolors.csh ; then
    cat <<EOF
To enable the colors, add the following line to your shell's start-up script:

For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):
  . $lscolors_data_dir/lscolors.sh

For C shell (e.g. ~/.cshrc):
  . $lscolors_data_dir/lscolors.csh

EOF
  fi
fi

exit 0
