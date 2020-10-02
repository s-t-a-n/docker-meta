From debian:latest

RUN apt update && apt install -y vim ranger netcat openssh-server net-tools zsh bash wget sudo git

RUN wget -O /etc/skel/.zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
RUN wget -O /etc/skel/.zshrc.local  https://git.grml.org/f/grml-etc-core/etc/skel/.zshrc

RUN useradd -m debian && echo "debian:debian" | chpasswd
RUN chsh -s /bin/zsh debian

RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers && groupadd wheel && usermod debian -a -G wheel

RUN echo "Port 2222" >> /etc/ssh/sshd_config

ENTRYPOINT service ssh restart && bash
