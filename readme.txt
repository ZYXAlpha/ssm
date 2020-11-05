SSM整合开发
Spring SpringMVC Mybatis
Spring:业务层 ，管理Service，dao，工具类对象
SpringMVC:视图层 界面层，负责接收请求，显示处理结果的
Mybatis:持久层 访问数据库
用户发起请求---springMVC接收-----spring中的Service对象dao对象----Mybatis处理数据
SSI
整合中有容器
1.第一个容器未springMVC容器，管理Controller控制器对象
2.第二个为spring容器，管理service dao 工具类对象
我们要做的是把使用的对象交给合适的容器创建，管理
将Controller还有web开发的对象交给sptingMVC容器，这些web应用的对象写在springMVC配置文件中

service dao对象定义在spring的配置文件中，让spring来管理这些对象

springMVC容器时spring容器的子容器，类似Java中的继承，它俩可以互相访问
在子容器中的Controller可以访问父容器中的Service对象，实现了Controller使用Service对象


实现步骤：
1.使用Oracle数据库，添加表及数据
2.新建一个maven项目
3.加入依赖
    spring，springmvc，mybatis三个框架的依赖，jackson依赖，Oracle驱动，连接池
    jsp  servlet依赖
4.写web.xml
    注册DispatcherServlet 目的：1.创建springmvc对象，才能创建Controller对象
                               2.创建的时Servlet才能接收用户的请求
    注册spring监听器 ContextLoaderListener，目的：创建spring的容器对象，才能创建Service  dao等对象
    注册字符过滤器，解决post请求乱码的问题
5.创建包   controller    service   dao   以及实体类的包
6.写springmvc  spring   mybatis的配置文件
    1.springMVC的配置文件
    2.spring的配置文件
    3.mybatis的配置文件
    4.数据库的属性配置文件
7.写代码   dao  mapper   service 和 实现类   controller  实体类
8.写jsp页面















