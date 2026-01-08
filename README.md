# Linux Automation Tools 

个人Linux运维自动化工具集（大二自学项目）

这个仓库收集了我写的实用Shell脚本，用于日常服务器监控和维护。

## 包含脚本

- **disk_monitor.sh**：监控磁盘使用率，超过80%写日志告警
- **backup_script.sh**：自动备份指定目录，保留最近7天备份
- **health_check.sh**：一键输出服务器健康报告（磁盘、内存、CPU、进程）

## 使用方法

```bash
# 给脚本执行权限
chmod +x *.sh

# 测试运行
./disk_monitor.sh
./backup_script.sh
./health_check.sh
