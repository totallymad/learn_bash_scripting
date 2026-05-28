#!/bin/bash
# ---------------
# Exit Codes
# ----------------

# exit code = 0 -> SUCCESS
# exit code >< 0 -> FAILURE

package=notexists
echo "---------$(date)-----------" >> package_install_results.log
sudo apt install $package >> package_install_results.log
exit_code=$?
echo "-------------------------" >> package_install_results.log

echo $exit_code

if [[ "$exit_code" -eq 0 ]]; then
	echo "The installation of $package was succesfull"
	echo "The new command is available here:"
	which $package
else
	echo "$package failed to install" >> package_install_failure.log
fi

echo "-------------------------" >> package_install_failure.log
