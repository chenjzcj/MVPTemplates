###Android Studio 构建mvp的模板

####1.将MVPActivity文件夹放在如：
	D:\AndroidStudio\plugins\android\lib\templates\activities 下面


####2.使用前修改MVPActivity文件夹里面globals.xml.ftl里面的value值，改为自己的名称,如Felix

 	<global id="userName" type="string" value="Felix" />

####3.将mvp.jar包放入项目的libs文件夹下

####4.android studio的使用方法：

	在所需构建的包名下，鼠标右键：New -> MVP,选择所需构建的Activity或Fragment
![](https://i.imgur.com/iQO4jS6.png)

####5.MVP模块源码在mvp压缩文件中,可以自行打包
	https://blog.csdn.net/qq_35373333/article/details/76055556
	
####6.如果创建Activity的时候报错,请将MVPTemplates/MVPActivity/root/AndroidManifest.xml.ftl文件中的package="${packageName}"去掉


