FROM kalilinux/kali-rolling

EXPOSE 5901
ENV USER=vncuser
RUN apt  update 
RUN apt upgrade -y 
#RUN apt install -y kali-linux-headless
#RUN apt install -y kali-linux-large 
RUN apt install -y wpscan
RUN apt install -y nmap
RUN apt install -y hashcat
RUN apt install -y dbus-x11
RUN apt install -y tightvncserver xfce4 xfce4-goodies
RUN apt install -y firefox-esr
COPY ./start.sh /usr/local/bin/start.sh
COPY ./rockyou.txt /home/
COPY ./discover_psw.sh /home/discover_psw.sh
COPY ./hash.txt /home/
RUN chmod +x /usr/local/bin/start.sh
RUN chmod +x /home/discover_psw.sh
ENTRYPOINT [ "/usr/local/bin/start.sh"]