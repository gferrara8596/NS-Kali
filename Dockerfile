FROM kalilinux/kali-rolling

EXPOSE 5901
ENV USER=vncuser
ENV PASSWORD=password
RUN apt-get update 
RUN apt-get upgrade -y 
#RUN apt-get install -y kali-linux-headless
#RUN apt-get install -y kali-linux-large 
RUN apt-get install -y wpscan
RUN apt-get install -y nmap
RUN apt-get install -y hashcat
RUN apt-get install -y dbus-x11
RUN apt-get install -y tightvncserver xfce4 xfce4-goodies
RUN apt-get install -y firefox-esr

RUN adduser --disabled-password vncuser;
RUN echo "${USER}:${PASSWORD}" | chpasswd;
RUN export USER=vncuser
RUN export HOME=/home/vncuser

RUN echo "startxfce4" >> /home/vncuser/.bashrc;

COPY ./start.sh /usr/local/bin/start.sh
COPY ./rockyou.txt /home/
COPY ./discover_psw.sh /home/discover_psw.sh
COPY ./vnc.sh /home/vnc.sh
COPY ./rce.txt /home/rce.txt
COPY ./sql_inj_script.js /home/sql_inj_script.js
COPY ./mail_masta.txt /home/mail_masta.txt
COPY ./hash.txt /home/
RUN chmod +x /usr/local/bin/start.sh
RUN chmod +x /home/discover_psw.sh
RUN chmod +x /home/vnc.sh

ENTRYPOINT [ "/usr/local/bin/start.sh"]