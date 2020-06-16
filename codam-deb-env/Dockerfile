from debian:buster

run apt update && apt -y install vim nasm gcc clang lldb gdb openssh-server git zsh
run chsh -s /usr/bin/zsh root
entrypoint service start sshd; tail -f /dev/null
