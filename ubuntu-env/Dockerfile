From ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN ln -fs /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime

RUN echo y | unminimize && apt update && apt install -y vim ranger netcat openssh-server net-tools zsh bash wget sudo git

RUN wget -O /etc/skel/.zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
RUN wget -O /etc/skel/.zshrc.local  https://git.grml.org/f/grml-etc-core/etc/skel/.zshrc

RUN useradd -m ubuntu && echo "ubuntu:ubuntu" | chpasswd
RUN chsh -s /bin/zsh ubuntu

RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && groupadd wheel && usermod ubuntu -a -G wheel

RUN echo "Port 2222" >> /etc/ssh/sshd_config

ENTRYPOINT service ssh restart && bash
