#! /bin/bash
format=$1
device=$2
point_mount=$3

mkfs -t $format $device
mkdir -p $point_mount
mount $device $point_mount
