#!/bin/sh

set_governors() {
    for (( i = 0; i < 4; i++ )); do
        echo ${1} > /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_governor
    done
}

set $*

group=${1%%/*}
action=${1#*/}
device=$2
id=$3
value=$4

log_unhandled() {
	logger "ACPI event unhandled: $*"
}

case "$group" in
    ac_adapter)
        case "$value" in
            # Add code here to handle when the system is unplugged
            # (maybe change cpu scaling to powersave mode).  For
            # multicore systems, make sure you set powersave mode
            # for each core!
            #*0)
            #	cpufreq-set -g powersave
            #	;;
        *0)
            logger "setting governors to powersave"
            set_governors "powersave"
            ;;

            # Add code here to handle when the system is plugged in
            # (maybe change cpu scaling to performance mode).  For
            # multicore systems, make sure you set performance mode
            # for each core!
            #*1)
            #	cpufreq-set -g performance
            #	;;
        *1)
            logger "setting governors to conservative"
            set_governors "conservative"
            ;;

        *)	log_unhandled $* ;;
    esac
    ;;

	*)	log_unhandled $* ;;
esac
