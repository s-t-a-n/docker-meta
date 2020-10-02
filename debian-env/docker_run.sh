#!/bin/sh
source			env.conf
docker run		--rm														\
				--name $build_name											\
				-it															\
				--mount type=bind,source="$HOME",target="/root"				\
				-p 2222:2222												\
				$build_name:$build_version
