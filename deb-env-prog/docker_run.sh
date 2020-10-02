#!/bin/sh
source			env.conf
docker run		--rm														\
				--name $build_name											\
				-it															\
				--mount type=bind,source="$HOME",target="/root"				\
				-p 4200:4200												\
				$build_name:$build_version
