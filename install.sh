#!/bin/bash

tmpdir=/tmp/split-"$RANDOM"
mkdir -p "$tmpdir"

cd "$tmpdir"

if wget -q https://raw.githubusercontent.com/ndbeals/recursive-split/master/split-recursive > /dev/null &&
	wget -q https://raw.githubusercontent.com/ndbeals/recursive-split/master/merge-recursive > /dev/null
then
	chmod +x "$tmpdir"/*

	if mv "$tmpdir"/* /usr/local/bin 2> /dev/null
	then
		echo -e "\e[92mSUCCESS\e[39m: installed recursive-split successfully"
	else
		echo -e "\e[91mFAILURE\e[39m: failed to move files in /usr/local/bin"
	fi

	rm -rf "$tmpdir"
else
	echo -e "\e[91mFAILURE\e[39m: failed to download the scripts from github"
fi



