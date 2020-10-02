#!/bin/sh
source			env.conf
docker build	-t $build_name:$build_version .
