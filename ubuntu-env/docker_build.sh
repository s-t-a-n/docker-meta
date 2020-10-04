#!/bin/sh
source			./conf.env
docker build	--build-arg OS=$image					\
				--build-arg OS_RELEASE=$image_release	\
				-t $build_name:$build_version .
