#!/bin/bash

# 自动备份脚本 - 备份指定目录，保留最近7天
SOURCE_DIR="/path/to/backup"      # 改成你要备份的目录，比如 /home/yourdata
BACKUP_DIR="/backup"              # 备份存储目录

mkdir -p $BACKUP_DIR/$(date +%Y%m%d)

tar -czf $BACKUP_DIR/$(date +%Y%m%d)/backup_$(date +%H%M).tar.gz $SOURCE_DIR

# 删除7天前的备份
find $BACKUP_DIR -mtime +7 -delete

echo "备份完成！存储在 $BACKUP_DIR"
