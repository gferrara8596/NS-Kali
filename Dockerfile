FROM kalilinux/kali-rolling

RUN apt  update 
RUN apt upgrade -y 
#RUN apt install -y kali-linux-headless
#RUN apt install -y kali-linux-large 
RUN apt install -y wpscan
RUN apt install -y nmap
RUN apt install -y hashcat
COPY ./start.sh /usr/local/bin/start.sh
COPY ./rockyou.txt /home/
COPY ./discover_psw.sh /home/
COPY ./hash.txt /home/
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT [ "/usr/local/bin/start.sh"]