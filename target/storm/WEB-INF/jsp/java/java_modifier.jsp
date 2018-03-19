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
<link href="/storm/static/css/myStyle.css" rel="stylesheet">
<!--引入JQuery -->
<script src="/storm/static/js/uitl.js"></script>
<script src="/storm/static/js/menu.js"></script>
<script src="/storm/static/js/jquery.min.js"></script>
<script src="/storm/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
		<h2>Java 修饰符和运算符</h2>
		<P style="text-indent:24px;">Java语言提供了很多修饰符，主要分为以下两类：</P>
		<ul>
		   <li>访问修饰符
		   <li>非访问修饰符
		</ul>
		<P style="text-indent:24px;">修饰符用来定义类、方法或者变量，通常放在语句的最前端。我们通过下面的例子来说明：</P>
		<pre>
public class className {
   // ...
}
private boolean myFlag;
static final double weeks = 9.5;
protected static final int BOXWIDTH = 42;
public static void main(String[] arguments) {
   // 方法体
}
		</pre>
		<hr/>
		
		<h3 class="min_title">访问控制修饰符</h3>
		<P style="text-indent:24px;">Java中，可以使用访问控制符来保护对类、变量、方法和构造方法的访问。Java 支持 4 种不同的访问权限。</P>
		<ul>
		   <li>
		   	  <b>default (即缺省，什么也不写）:</b>在同一包内可见，不使用任何修饰符。使用对象：类、接口、变量、方法。
		   </li>
		   <li>
		   	  <b>private : </b>在同一类内可见。使用对象：变量、方法。 <b>注意：不能修饰类（外部类）</b>
		   </li>
		   <li>
		   	  <b>public :</b>对所有类可见。使用对象：类、接口、变量、方法
		   </li>
		   <li>
		   	  <b>protected : </b>对同一包内的类和所有子类可见。使用对象：变量、方法。  <b>注意：不能修饰类（外部类）</b>
		   </li>
		</ul>
		<P style="text-indent:24px;">我们可以可以通过以下表来说明访问权限：</P>
		<table class="table table-bordered table-condensed table-striped">
			<thead>
			  <tr>
				<th>修饰符</th>
				<th>当前类</th>
				<th>同一包内</th>
				<th>子孙类</th>
				<th>其他包</th>
				<th>其他包子孙类</th>
			  </tr>
			</thead>
			<tr>
			  <td>public</td>
			  <td>Y</td>
			  <td>Y</td>
			  <td>Y</td>
			  <td>Y</td>
			  <td>Y</td>
			</tr>
			<tr>
			  <td>protected</td>
			  <td>Y</td>
			  <td>Y</td>
			  <td>Y</td>
			  <td>N</td>
			  <td>Y/N</td>
			</tr>
			<tr>
			  <td>default</td>
			  <td>Y</td>
			  <td>Y</td>
			  <td>N</td>
			  <td>N</td>
			  <td>N</td>
			</tr>
			<tr>
			  <td>private</td>
			  <td>Y</td>
			  <td>N</td>
			  <td>N</td>
			  <td>N</td>
			  <td>N</td>
			</tr>
		</table>
		
		<h4 style="color:#333;">默认访问修饰符-不使用任何关键字</h4>
		<P style="text-indent:24px;">私有访问修饰符是最严格的访问级别，所以被声明为 private 的方法、变量和构造方法只能被所属类访问，并且类和接口不能声明为 private。</P>
		<P style="text-indent:24px;">声明为私有访问类型的变量只能通过类中公共的 getter 方法被外部类访问。</P>
		<P style="text-indent:24px;">Private 访问修饰符的使用主要用来隐藏类的实现细节和保护类的数据。</P>
		<br/>
		<h4 style="color:#333;">公有访问修饰符-public</h4>
		<P style="text-indent:24px;">被声明为 public 的类、方法、构造方法和接口能够被任何其他类访问。</P>
		<P style="text-indent:24px;">如果几个相互访问的 public 类分布在不同的包中，则需要导入相应 public 类所在的包。由于类的继承性，类所有的公有方法和变量都能被其子类继承。</P>
		<P style="text-indent:24px;">Java 程序的 main() 方法必须设置成公有的，否则，Java 解释器将不能运行该类。</P>
		<br/>
		<h4 style="color:#333;">受保护的访问修饰符-protected</h4>
		<P style="text-indent:24px;">protected 需要从以下两个点来分析说明：</P>
		<ul>
		<li>
			<b>子类与基类在同一包中：</b>被声明为 protected 的变量、方法和构造器能被同一个包中的任何其他类访问；
		</li>
		<li>
			<b>子类与基类不在同一包中：</b>那么在子类中，子类实例可以访问其从基类继承而来的 protected 方法，而不能访问基类实例的protected方法。
		</li>
		</ul>
		<P style="text-indent:24px;">protected 访问修饰符不能修饰类和接口，方法和成员变量能够声明为 protected，但是接口的成员变量和成员方法不能声明为 protected。</P>
		<P style="text-indent:24px;">子类能访问 protected 修饰符声明的方法和变量，这样就能保护不相关的类使用这些方法和变量。</P>
		<br/>
		<p>未完待续</p>
	</div>
	<%@ include file="/WEB-INF/jsp/jumpPage.jsp" %>
</body>

<script type="text/javascript" charset="utf-8">
	 $(function(){
		 $("h2").fadeIn();
	 });
</script>
</html>