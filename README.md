# hust_yqtb
华中科技大学疫情健康填报 
利用Docker构建填报
使用方法：
'''
docker run -d \
--name=transmission \
-e UID=U201xxxxxx \
-e PASSWD=you_password \
-e EMAIL=xxxx@xxx.com \
-e EMAILPWD=your_email_password
-e FM=you_family_name
'''
