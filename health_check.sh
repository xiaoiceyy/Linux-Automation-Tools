#!/bin/bash

echo "=== 服务器健康检查报告 ==="
echo "时间: $(date)"
echo ""
echo "1. 磁盘使用率:"
df -h
echo ""
echo "2. 内存使用:"
free -h
echo ""
echo "3. CPU负载:"
uptime
echo ""
echo "4. 关键进程（示例检查nginx）:"
ps aux | grep nginx | grep -v grep || echo "nginx未运行"
