#!/bin/sh
docker run		--rm														\
				--name nasm													\
				-it															\
				--mount type=bind,source="$HOME",target="/root"				\
				nasm:v1

#				-p 22:22													\
#				--mount type=bind,source="$HOME/.ssh",target="/root/.ssh"	\
#				--mount type=bind,source="$HOME/Projects/libasm",target="/root/libasm"	\
