# hust_yqtb
华中科技大学疫情健康自动填报，每天清晨7点-8点自动生成填报信息提交，并发送一封填报邮件给设定邮箱以告知填报结果.

结合他人程序，并构建了一个Docker部署

使用方法：

docker run -itd \\ \
--name=sbh \\ \
-e UID=U201xxxxxx \\ \
-e PASSWD=you_password \\ \
-e EMAIL=xxxx@xxx.com \\ \
-e EMAILPWD=your_email_password \\ \
-e FAM=you_family_name \\ \
--restart=always \\ \
phoenixfly/hust_yqtb
