#!/bin/sh
source			./conf.env
docker run		--rm														\
				--name $build_name											\
				-it															\
				-p $port_low:$port_high										\
				$build_name:$build_version
