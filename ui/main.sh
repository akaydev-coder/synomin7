#!/bin/bash
# Filename: main.sh - coded in utf-8

#                webmin
#
#        Copyright (C) 2023 by Akay-Devel 
# Member of the German Synology Community Forum
#             License GNU GPLv3
#   https://www.gnu.org/licenses/gpl-3.0.html


# Load header
# --------------------------------------------------------------
header

# Show home page
# --------------------------------------------------------------
if [[ "${get[page]}" == "main" && "${get[section]}" == "start" ]]; then
	[[ -f "${post_request}" ]] && source "${post_request}"
	
	echo '<p>Home [main.sh]</p>'

fi
