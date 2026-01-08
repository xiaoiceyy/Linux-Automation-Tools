#!/bin/bash

# Linux磁盘使用率监控脚本 - 超过80%写日志告警
# 作者：你的名字（或GitHub用户名）
# 用法：chmod +x disk_monitor.sh && ./disk_monitor.sh

THRESHOLD=80                  # 阈值，可改
LOG_FILE="/tmp/disk_monitor.log"  # 测试用日志路径

echo "$(date '+%Y-%m-%d %H:%M:%S'): 开始检查磁盘使用率..." >> $LOG_FILE

# 获取所有真实分区使用率
df -h | grep -vE '^tmpfs|cdrom|Filesystem' | awk '{print $5 " " $6}' | while read usage mount; do
    percent=${usage%?}        # 去掉%号
    if [ "$percent" -ge $THRESHOLD ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S'): 警告！分区 $mount 使用率达到 ${percent}%！" >> $LOG_FILE
    fi
done

echo "$(date '+%Y-%m-%d %H:%M:%S'): 检查完成" >> $LOG_FILE

echo "检查完成，日志已写入 $LOG_FILE"
cat $LOG_FILE                    # 控制台也显示
