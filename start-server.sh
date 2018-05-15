#!/bin/bash
cd "/home/cod4" //add your cod4 server path here

screen -S server1 ./cod4_lnxded +exec config.cfg +set net_port 28960 +map mp_crossfire +set fs_game mods/pml220 +set rcon_password "YourPasswordHere" +set promod_mode knockout_mr12
