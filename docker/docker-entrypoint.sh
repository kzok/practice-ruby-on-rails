#!/usr/bin/env bash -eu

if [ ! -z $USER_NAME ] && [ ! -z $USER_ID ] && [ ! -z $GROUP_ID ]; then
	# create user that have same name and id of host machine.
	set +e
	useradd -s /bin/bash -m ${USER_NAME}
	usermod -u ${USER_ID} ${USER_NAME}
	usermod -g ${GROUP_ID} ${USER_NAME}
	usermod -aG sudo ${USER_NAME}
	su ${USER_NAME}
	set -e
fi

rails tmp:clear
rails server -b 0.0.0.0
