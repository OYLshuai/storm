<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>Insert title here</title>
</head>
<style type="text/css">

.p1 {
    background-color:#E7EAEB;
    font-size:12px; 
    text-indent:24px;
    padding:15px;
    }

</style>
<body >
	<div style="padding:75px;">
		<div>
			<br/>
		</div>
		<h2>欢迎来到-Java 从入门到放弃</h2>
		<h1>Java 简介</h1>
		<p class="lead">
			Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程。
		</p>
		<p class="lead">
            Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点 。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等。
		</p>
		<ul>
			<li>
				简单性
				<p class="p1">
					Java看起来设计得很像C++，但是为了使语言小和容易熟悉，设计者们把C++语言中许多可用的特征去掉了，这些特征是一般程序员很少使用的。例如，Java不支持go to语句，代之以提供break和continue语句以及异常处理。Java还剔除了C++的操作符过载（overload）和多继承特征，并且不使用主文件，免去了预处理程序。因为Java没有结构，数组和串都是对象，所以不需要指针。Java能够自动处理对象的引用和间接引用，实现自动的无用单元收集，使用户不必为存储管理问题烦恼，能更多的时间和精力花在研发上。
				</p>
			</li>
			<li>
				面向对象
				<p class="p1">
					Java是一个面向对象的语言。对程序员来说，这意味着要注意应中的数据和操纵数据的方法（method），而不是严格地用过程来思考。在一个面向对象的系统中，类（class）是数据和操作数据的方法的集合。数据和方法一起描述对象（object）的状态和行为。每一对象是其状态和行为的封装。类是按一定体系和层次安排的，使得子类可以从超类继承行为。在这个类层次体系中有一个根类，它是具有一般行为的类。Java程序是用类来组织的。
				</p>
			</li>
			<li>
				分布式
				<p class="p1">
					Java设计成支持在网络上应用，它是分布式语言。Java既支持各种层次的网络连接，又以Socket类支持可靠的流（stream）网络连接，所以用户可以产生分布式的客户机和服务器。网络变成软件应用的分布运载工具。Java程序只要编写一次，就可到处运行。
				</p>
			</li>
			<li>
				健壮性
				<p class="p1">
					Java原来是用作编写消费类家用电子产品软件的语言，所以它是被设计成写高可靠和稳健软件的。Java消除了某些编程错误，使得用它写可靠软件相当容易。
					Java是一个强类型语言，它允许扩展编译时检查潜在类型不匹配问题的功能。Java要求显式的方法声明，它不支持C风格的隐式声明。这些严格的要求保证编译程序能捕捉调用错误，这就导致更可靠的程序。
					可靠性方面最重要的增强之一是Java的存储模型。Java不支持指针，它消除重写存储和讹误数据的可能性。类似地，Java自动的“无用单元收集”预防存储漏泄和其它有关动态存储分配和解除分配的有害错误。Java解释程序也执行许多运行时的检查，诸如验证所有数组和串访问是否在界限之内。
					异常处理是Java中使得程序更稳健的另一个特征。异常是某种类似于错误的异常条件出现的信号。使用try/catch/finally语句，程序员可以找到出错的处理代码，这就简化了出错处理和恢复的任务。
				</p>
			</li>
			<li>
				安全性
				<p class="p1">
					Java的存储分配模型是它防御恶意代码的主要方法之一。Java没有指针，所以程序员不能得到隐蔽起来的内幕和伪造指针去指向存储器。更重要的是，Java编译程序不处理存储安排决策，所以程序员不能通过查看声明去猜测类的实际存储安排。编译的Java代码中的存储引用在运行时由Java解释程序决定实际存储地址。
                    Java运行系统使用字节码验证过程来保证装载到网络上的代码不违背任何Java语言限制。这个安全机制部分包括类如何从网上装载。例如，装载的类是放在分开的名字空间而不是局部类，预防恶意的小应用程序用它自己的版本来代替标准Java类。
				</p>
			</li>
			<li>
				可移植性
				<p class="p1">
					Java使得语言声明不依赖于实现的方面。例如，Java显式说明每个基本数据类型的大小和它的运算行为（这些数据类型由Java语法描述）。
					Java环境本身对新的硬件平台和操作系统是可移植的。Java编译程序也用Java编写，而Java运行系统用ANSIC语言编写。
				</p>
			</li>
			<li>
				多线程
				<p class="p1">
					Java是多线索语言，它提供支持多线索的执行（也称为轻便过程），能处理不同任务，使具有线索的程序设计很容易。Java的lang包提供一个Thread类，它支持开始线索、运行线索、停止线索和检查线索状态的方法。
					Java的线索支持也包括一组同步原语。这些原语是基于监督程序和条件变量风范，由C.A.R.Haore开发的广泛使用的同步化方案。用关键词synchronized，程序员可以说明某些方法在一个类中不能并发地运行。这些方法在监督程序控制之下，确保变量维持在一个一致的状态。
				</p>
			</li>
			<li>
				动态性
				<p class="p1">
					Java语言设计成适应于变化的环境，它是一个动态的语言。例如，Java中的类是根据需要载入的，甚至有些是通过网络获取的。
				</p>
			</li>
			<li>
				高性能
				<p class="p1">
					Java是一种先编译后解释的语言，所以它不如全编译性语言快。但是有些情况下性能是很要紧的，为了支持这些情况，Java设计者制作了“及时”编译程序，它能在运行时把Java字节码翻译成特定CPU（中央处理器）的机器代码，也就是实现全编译了。
					Java字节码格式设计时考虑到这些“及时”编译程序的需要，所以生成机器代码的过程相当简单，它能产生相当好的代码。
				</p>
			</li>
			<li>
				编译和解释性
				<p class="p1">
					Java看起来设计得很像C++，但是为了使语言小和容易熟悉，设计者们把C++语言中许多可用的特征去掉了，这些特征是一般程序员很少使用的。例如，Java不支持go to语句，代之以提供break和continue语句以及异常处理。Java还剔除了C++的操作符过载（overload）和多继承特征，并且不使用主文件，免去了预处理程序。因为Java没有结构，数组和串都是对象，所以不需要指针。Java能够自动处理对象的引用和间接引用，实现自动的无用单元收集，使用户不必为存储管理问题烦恼，能更多的时间和精力花在研发上。
				</p>
			</li>
		</ul>
	</div>
	<%@ include file="/WEB-INF/jsp/jumpPage.jsp" %>
</body>
<style>
    h2{display:none;}
    li{padding: 10px;}
</style>
<script type="text/javascript" charset="utf-8">
	 $(function(){
		 $("h2").fadeIn();
	 });
</script>
</html>