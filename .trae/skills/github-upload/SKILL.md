---
name: "github-upload"
description: "将本地项目上传到GitHub仓库。当用户需要将项目托管到GitHub或分享代码时调用。"
---

# GitHub上传技能

## 功能

此技能帮助用户将本地项目上传到GitHub仓库，包括初始化Git仓库、创建远程仓库、推送代码等步骤。

## 使用场景

- 首次将项目上传到GitHub
- 现有项目需要托管到GitHub
- 分享代码给他人
- 备份项目到云端

## 上传步骤

### 1. 检查Git是否安装

首先确认本地是否安装了Git：

```bash
git --version
```

如果未安装，请先下载并安装Git：https://git-scm.com/downloads

### 2. 初始化Git仓库

在项目根目录执行：

```bash
git init
git add .
git commit -m "Initial commit"
```

### 3. 创建GitHub远程仓库

- 登录GitHub账号
- 点击"New repository"按钮
- 填写仓库名称和描述
- 选择公开或私有
- 点击"Create repository"

### 4. 关联本地仓库和远程仓库

复制GitHub仓库的HTTPS或SSH地址，然后执行：

```bash
git remote add origin <repository-url>
git push -u origin main
```

### 5. 验证上传

在GitHub上查看仓库，确认代码已成功上传。

## 常见问题

### 1. 推送失败

如果推送失败，可能是因为：
- GitHub账号未登录
- 权限不足
- 网络问题

### 2. 分支问题

如果默认分支不是main，使用对应分支名称：

```bash
git push -u origin master
```

### 3. 忽略文件

创建.gitignore文件，排除不需要上传的文件：

```
# 示例.gitignore内容
node_modules/
dist/
*.log
.env
```

## 示例

完整上传流程：

```bash
# 初始化仓库
git init
git add .
git commit -m "Initial commit"

# 关联远程仓库
git remote add origin https://github.com/username/repository.git

# 推送代码
git push -u origin main
```

## 注意事项

- 确保项目中没有敏感信息（如API密钥、密码等）
- 合理设置.gitignore文件
- 定期推送代码以备份项目