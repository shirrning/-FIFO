# FIFO
1.实验概述:实现异步流水线，其中握手协议采用两段握手协议，数据编码方式采用数据打包协议；

2.结构设计:

3.各模块详解:
	muler_c:c单元模块；
	cp_latch:cp_latch模块，功能是c和p不同则通过；
	stage模块：将muler_c模块和cp_latch模块组合起来加上组合逻辑形成一个stage;
	stage_combine:将两个stage模块组合起来；
	stage_all:组合3个stage_combine模块，形成一个大的模块，就是最后的6级流水线；
  

更新：
添加了用petri工具得到的电路替换了之前的电路并比较了二者的波形；
