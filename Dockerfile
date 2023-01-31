FROM kalilinux/kali-rolling

RUN apt  update 
RUN apt upgrade -y 
#RUN apt install -y kali-linux-headless
#RUN apt install -y kali-linux-large 
RUN apt install -y wpscan
RUN apt install -y metasploit-framework
RUN apt install -y python3
COPY ./Wordpress/start.sh /usr/local/bin/start.sh
COPY ./rockyou.txt /home/
COPY ./sql-injection.py /home/
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT [ "/usr/local/bin/start.sh"]