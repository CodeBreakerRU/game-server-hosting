FROM debian:bookworm

## VARIABLES
ENV MAX_PLAYERS=24
ENV MAIN_SHARED=
ENV FS_GAME=mods/fps_promod_275
ENV CONFIG=server.cfg
ENV ARGS=

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y lib32stdc++6

RUN apt install ca-certificates -y

COPY bin/ cod4x-server
COPY main/ cod4x-server/main/
COPY zone/ cod4x-server/zone/
COPY plugins/ cod4x-server/plugins/
COPY mods/ cod4x-server/mods/
COPY usermaps/ cod4x-server/usermaps/

RUN chmod +x cod4x-server/cod4x18_dedrun
RUN groupadd -r cod && useradd --no-log-init -r -g cod cod

RUN chown -R cod:cod cod4x-server

#RUN mkdir cod4x-server/main
#RUN chown -R cod:cod cod4x-server/main

#VOLUME /cod4x-server-base/main /cod4x-server-base/zone /cod4x-server/plugins /cod4x-server/mods
EXPOSE 28960
USER cod

ENTRYPOINT cd cod4x-server && ./cod4x18_dedrun +set net_port 28960 +set g_gametype "sd" +map "mp_crossfire" +set r_xassetnum "xmodel=1200" +set sv_maxclients $MAX_PLAYERS +set fs_homepath "." +set fs_basepath "." +set fs_game "$FS_GAME" +exec "$CONFIG" +set "promod_mode knockout_mr12" $ARGS 
#ENTRYPOINT /bin/bash
