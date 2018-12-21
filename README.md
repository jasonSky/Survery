SurveySystem
============

基于Java Web的在线问卷调查系统

网站入口
![](img/1.png)

登录
![](img/2.png)

注册
![](img/3.png)


1. 新建db:survery
运行baseBao里面的main方法 来创建数据库及init数据
或者使用sql 来source下即可


2. 编译src下源码到web-inf class下
eclipse导入后将tomcat下的servlet-api.jar应用
修改src编译完后的路径到WEB-INF下

3. 将webroot拷贝到webapps下部署
tomcat lib目录需要放入mysql-connector-java-5.1.7-bin.jar用于数据库连接

