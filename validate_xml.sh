#!/bin/sh

which xmlstarlet >/dev/null || (echo "xmlstarlet not found" && return 1) || return 1

ls -1 *.xml \
	| while read line
	do xmlstarlet val -e -d ladspa-swh.dtd "$line"
	done
