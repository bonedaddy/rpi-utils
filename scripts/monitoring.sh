#! /bin/bash


# for command information see https://elinux.org/RPI_vcgencmd_usage

case "$1" in

	cpu_temp)
		vcgencmd measure_temp
		;;
	cur_cpu_freq)
		cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
		;;
	max_cpu_freq)
		vcgencmd get_config arm_freq | awk -F '=' '{print $2}'
		;;
	get_cpu_mem)
		vcgencmd get_mem arm | awk -F '=' '{print $2}'
		;;
	get_gpu_mem)
		vcgencmd get_mem gpu | awk -F '=' '{print $2}'
		;;
	measure_volts)
		#defaults to core if not specified
		vcgencmd measure_volts "$3" | awk -F '=' '{print $2}'
		;;
	*)
		echo "cpu_temp, cur_cpu_freq, max_cpu_freq, get_cpu_mem, get_gpu_mem, measure_volts"
		;;		
	
esac
