#!/bin/bash

steamcmd \
    +force_install_dir "/carriercommand" \
		+@sSteamCmdForcePlatformType windows \
		+login ${STEAM_USERNAME} \
		+app_update 1489630 validate \
		+app_update 1007 validate \
		+logout \
		+quit
