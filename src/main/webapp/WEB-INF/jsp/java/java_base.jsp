<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--引入样式 -->
<link href="/storm/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/storm/static/css/style.css" rel="stylesheet">
<!--引入JQuery -->
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/menu.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div style="padding:75px;">
		<div>
			<br/>
		</div>
		<h2>Java 基础语法</h2>
		<p class="lead">一个Java程序可以认为是一系列对象的集合，而这些对象通过调用彼此的方法来协同工作。下面简要介绍下类、对象、方法和实例变量的概念。</p>
		
		<ul>
		  <li > 
		  	<strong >对象：</strong>对象是类的一个实例，有状态和行为。例如，一条狗是一个对象，它的状态有：颜色、名字、品种；行为有：摇尾巴、叫、吃等。
		  </li>
		  <li >
		  	<strong >类：</strong>类是一个模板，它描述一类对象的行为和状态。
		  </li>
		  <li >
		  	<strong >方法：</strong>方法就是行为，一个类可以有很多方法。逻辑运算、数据修改以及所有动作都是在方法中完成的。
		  </li>
		  <li >
		  	<strong >实例变量：</strong>每个对象都有独特的实例变量，对象的状态由这些实例变量的值决定。
		  </li>
		</ul>
		<hr/>
		<h3 class="min_title"> 基础语法</h3>
		<h3 style="text-indent:24px;"> 在编写Java程序的时候应该注意一下几点：</h3>
		<ul>
		   <li>
		      <strong >大小写敏感：</strong>Java是大小写敏感的，这就意味着标识符Hello与hello是不同的。
		   </li>
		   <li>
		   	  <strong >类名：</strong>对于所有的类来说，类名的首字母应该大写。如果类名由若干单词组成，那么每个单词的首字母应该大写，例如 MyFirstJavaClass 。
		   </li>
		   <li>
		      <strong >方法名：</strong>所有的方法名都应该以小写字母开头。如果方法名含有若干单词，则后面的每个单词首字母大写。
		   </li>
		   <li> 
		      <strong >源文件名：</strong>源文件名必须和类名相同。当保存文件的时候，你应该使用类名作为文件名保存（切记Java是大小写敏感的），文件名的后缀为.java。（如果文件名和类名不相同则会导致编译错误）。
		   </li>
		   <li>
		      <strong >主方法入口：</strong>所有的Java 程序由public static void main(String []args)方法开始执行。
		   </li>
		</ul>
		<hr/>
		
		<h3 class="min_title"> Java标识符</h3>
		<h3 style="text-indent:24px;"> Java所有的组成部分都需要名字。类名、变量名以及方法名都被称为标识符。</h3>
		<h3 style="text-indent:24px;"> 关于Java标识符，有以下几点需要注意：</h3>
		<ul>
		   <li>
		      <strong >大小写敏感：</strong>Java是大小写敏感的，这就意味着标识符Hello与hello是不同的。
		   </li>
		   <li>
		   	  <strong >类名：</strong>对于所有的类来说，类名的首字母应该大写。如果类名由若干单词组成，那么每个单词的首字母应该大写，例如 MyFirstJavaClass 。
		   </li>
		   <li>
		      <strong >方法名：</strong>所有的方法名都应该以小写字母开头。如果方法名含有若干单词，则后面的每个单词首字母大写。
		   </li>
		   <li> 
		      <strong >源文件名：</strong>源文件名必须和类名相同。当保存文件的时候，你应该使用类名作为文件名保存（切记Java是大小写敏感的），文件名的后缀为.java。（如果文件名和类名不相同则会导致编译错误）。
		   </li>
		   <li>
		      <strong >主方法入口：</strong>所有的Java 程序由public static void main(String []args)方法开始执行。
		   </li>
		</ul>
		<hr/>
		
		<h3 class="min_title"> Java修饰符</h3>
		<h3 style="text-indent:24px;"> 像其他语言一样，Java可以使用修饰符来修饰类中方法和属性。主要有两类修饰符：</h3>
		<ul>
		   <li>
		      <strong >访问控制修饰符：</strong>default, public , protected, private
		   </li>
		   <li>
		   	  <strong >非访问控制修饰符：</strong>final, abstract, strictfp
		   </li>
		</ul>
		<h3 style="text-indent:24px;"> 在后面的章节中我们会深入讨论Java修饰符。</h3>
		<hr/>
		
		<h3 class="min_title"> Java变量</h3>
		<h3 style="text-indent:24px;"> Java中主要有如下几种类型的变量：</h3>
		<ul>
		   <li>
		      <strong >局部变量</strong>
		   </li>
		   <li>
		   	  <strong >类变量（静态变量）</strong>
		   </li>
		   <li>
		   	  <strong >成员变量（非静态变量）</strong>
		   </li>
		</ul>
		<hr/>
		
		<h3 class="min_title"> Java关键字</h3>
		<h3 style="text-indent:24px;"> 下面列出了Java保留字。这些保留字不能用于常量、变量、和任何标识符的名称。</h3>
		<table class="table table-bordered table-condensed table-striped">
		    <thead style="color: honeydew;background: black;">
			    <tr>
			        <th  class="text-center">类别</th>
			        <th>关键字</th>
			        <th>说明</th>
			    </tr>
		    </thead>
		    
			<tr >
			  <td class="text-center" rowspan="3">访问控制</td>
			  <td>private</td>
			  <td>私有的</td>
			</tr>
			<tr>
			  <td>protected</td>
			  <td>受保护的</td>
			</tr>
			<tr>
			  <td>public</td>
			  <td>公共的</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="13">类、方法和变量修饰符</td>
			  <td>abstract</td>
			  <td>私声明抽象</td>
			</tr>
			<tr>
			  <td>class</td>
			  <td>类</td>
			</tr>
			<tr>
			  <td>extends</td>
			  <td>扩允,继承</td>
			</tr>
			<tr>
			  <td>final</td>
			  <td>最终值,不可改变的</td>
			</tr>
			<tr>
			  <td>implements</td>
			  <td>实现（接口）</td>
			</tr>
			<tr>
			  <td>interface</td>
			  <td>接口</td>
			</tr>
			<tr>
			  <td>native</td>
			  <td>本地，原生方法（非Java实现）</td>
			</tr>
			<tr>
			  <td>new</td>
			  <td>新,创建</td>
			</tr>
			<tr>
			  <td>static</td>
			  <td>静态</td>
			</tr>
			<tr>
			  <td>strictfp</td>
			  <td>严格,精准</td>
			</tr>
			<tr>
			  <td>synchronized</td>
			  <td>线程,同步</td>
			</tr>
			<tr>
			  <td>transient</td>
			  <td>短暂</td>
			</tr>
			<tr>
			  <td>volatile</td>
			  <td>易失</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="12">程序控制语句</td>
			  <td>break</td>
			  <td>跳出循环</td>
			</tr>
			<tr>
			  <td>case</td>
			  <td>定义一个值以供switch选择</td>
			</tr>
			<tr>
			  <td>continue</td>
			  <td>继续</td>
			</tr>
			<tr>
			  <td>default</td>
			  <td>默认</td>
			</tr>
			<tr>
			  <td>do</td>
			  <td>运行</td>
			</tr>
			<tr>
			  <td>else</td>
			  <td>否则</td>
			</tr>
			<tr>
			  <td>for</td>
			  <td>循环</td>
			</tr>
			<tr>
			  <td>if</td>
			  <td>如果</td>
			</tr>
			<tr>
			  <td>instanceof</td>
			  <td>实例</td>
			</tr>
			<tr>
			  <td>return</td>
			  <td>返回</td>
			</tr>
			<tr>
			  <td>switch</td>
			  <td>根据值选择执行</td>
			</tr>
			<tr>
			  <td>while</td>
			  <td>循环</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="6" style="background-color: white;">错误处理</td>
			  <td>assert</td>
			  <td>断言表达式是否为真</td>
			</tr>
			<tr>
			  <td>catch</td>
			  <td>捕捉异常</td>
			</tr>
			<tr>
			  <td>finally</td>
			  <td>有没有异常都执行</td>
			</tr>
			<tr>
			  <td>throw</td>
			  <td>抛出一个异常对象</td>
			</tr>
			<tr>
			  <td>throws</td>
			  <td>声明一个异常可能被抛出</td>
			</tr>
			<tr>
			  <td>try</td>
			  <td>捕获异常</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="2">包相关</td>
			  <td>import</td>
			  <td>引入</td>
			</tr>
			<tr>
			  <td>package</td>
			  <td>包</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="9" style="background-color: white;">基本类型</td>
			  <td>boolean</td>
			  <td>布尔型</td>
			</tr>
			<tr>
			  <td>byte</td>
			  <td>字节型</td>
			</tr>
			<tr>
			  <td>char</td>
			  <td>字符型</td>
			</tr>
			<tr>
			  <td>double</td>
			  <td>双精度浮点</td>
			</tr>
			<tr>
			  <td>float</td>
			  <td>单精度浮点</td>
			</tr>
			<tr>
			  <td>int</td>
			  <td>整型</td>
			</tr>
			<tr>
			  <td>long</td>
			  <td>长整型</td>
			</tr>
			<tr>
			  <td>short</td>
			  <td>短整型</td>
			</tr>
			<tr>
			  <td>null</td>
			  <td>空</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="3" style="background-color: #f8f8f8;">变量引用</td>
			  <td>super</td>
			  <td>父类,超类</td>
			</tr>
			<tr>
			  <td>this</td>
			  <td>本类</td>
			</tr>
			<tr>
			  <td>void</td>
			  <td>无返回值</td>
			</tr>
			
			<tr >
			  <td class="text-center" rowspan="2" style="background-color: white;">保留关键字</td>
			  <td>goto</td>
			  <td>是关键字，但不能使用</td>
			</tr>
			<tr>
			  <td>const</td>
			  <td>是关键字，但不能使用</td>
			</tr>
		</table>
		
		<hr/>
		<h3 class="min_title"> 继承</h3>
		<p style="text-indent:24px;"> 在Java中，一个类可以由其他类派生。如果你要创建一个类，而且已经存在一个类具有你所需要的属性或方法，那么你可以将新创建的类继承该类。</p>
		<p style="text-indent:24px;"> 利用继承的方法，可以重用已存在类的方法和属性，而不用重写这些代码。被继承的类称为超类（super class），派生类称为子类（subclass）。</p>
		
		<hr/>
		<h3 class="min_title"> 接口</h3>
		<p style="text-indent:24px;"> 在Java中，接口可理解为对象间相互通信的协议。接口在继承中扮演着很重要的角色。</p>
		<p style="text-indent:24px;"> 接口只定义派生要用到的方法，但是方法的具体实现完全取决于派生类。</p>
		
		<hr/>
		<h3 class="min_title"> Java 源程序与编译型运行区别</h3>
		<h3 style="text-indent:24px;"> 如下图所示：</h3>
		<img alt="" src="/storm/imge/ZSSDMld.png"></img>
	
		<hr/>
	</div>
	<%@ include file="/WEB-INF/jsp/jumpPage.jsp" %>
</body>
<style>
	hr{
		color:#333;
	}

	.min_title{
		color:#333;
		font-size: 25px;
		font-family: Verdana, 微软雅黑,宋体;
	}
    h2{display:none;}
    li{padding: 5px;}
</style>
<script type="text/javascript" charset="utf-8">
	 $(function(){
		 $("h2").fadeIn();
	 });
</script>
</html>