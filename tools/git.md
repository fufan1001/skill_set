推送本地标签：git push origin 标签名  （注意标签名不要和分支名重复）
如果与远程分支重名，用：git push origin tag_risk_v2.1.0:refs/tags/tag_risk_v2.1.0
删除本地分支：git tag -d 标签名
删除远程标签：git push origin :refs/tags/标签名 


git push origin HEAD:refs/for/v2.1.1.0


删除远程提交：
git reset commitId
git push origin 分支名 -f

checkout远程分支：
git checkout -b serverfix origin/serverfix
git checkout -b v2.2.0.0 origin/v2.2.0.0
     

删除远程分支：
git push origin :分支名

迁移代码仓：

	1. 将原仓git clone 到本地（默认master分支）；
	2. 将原仓需要迁移的分支checkout到本地：git checkout -b 新建分支名 origin/远程分支名  （备注：新建分支名最好同名与远程分支名）
	3. cd到本地原仓库.git目录；
	4. 将原仓库.git目录推送到目标远程仓库：git push --mirror 目标远程仓库地址；
	5. git clone目标仓库到本地;

原理：将原仓库的.git目录复制目标仓库里，目标仓库自然就包含了原仓库所有的提交、分支、tag记录；

### git set alias
$ git config --global alias.co checkout
$ git config --global alias.br branch
$ git config --global alias.ci commit
$ git config --global alias.st status
