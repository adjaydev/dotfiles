#!/usr/bin/env bash

spin() {
	while true;
	do for var in / - \\ \|;
	do echo -en "\r$var";
		sleep .1;
	done;
done
}
