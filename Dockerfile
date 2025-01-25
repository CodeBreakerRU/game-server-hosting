FROM debian:bullseye

RUN dpkg --add-architecture i386
RUN apt-get update -y
RUN apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 -y
RUN apt-get install vim nano iftop -y
RUN useradd cod4

ADD cod4 /home/cod4
COPY server.cfg /home/cod4/main/
ADD usermaps /home/cod4/usermaps
ADD plugins /home/cod4/plugins
RUN mkdir -p /home/cod4/screenshots && mkdir -p /home/cod4/main/screenshots
RUN chown -R cod4:cod4 /home/cod4

USER cod4
WORKDIR /home/cod4

ENTRYPOINT ["/home/cod4/cod4x18_dedrun"]

CMD ["+exec server.cfg", "+set logfile 2", "+set fs_basepath .", "+set fs_homepath .", "+set net_port 28960", "+map mp_crossfire", "+set fs_game mods/pml220", "+set promod_mode knockout_mr12", "+set g_logsync 2"]
