#!/bin/bash
#首先将宿主机的内存挂载成磁盘（http://www.linuxidc.com/Linux/2011-09/42396.htm）

tmp_dir_path="/mnt/tmp"

if [ ! -f "$tmp_dir_path" ]
then
  mount  -t tmpfs -o size=100m  tmpfs $tmp_dir_path
fi
#再将虚拟盘挂载给docker（http://www.linuxidc.com/Linux/2015-09/123519.htm）
docker run -it -v $tmp_dir_path:/Volumes/RamDisk windcao/scrapy:2.0 /bin/sh
