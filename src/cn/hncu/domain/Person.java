package cn.hncu.domain;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/*
 * 标准的JavaBean:
 * 	1.实现序列化接口
 *  2.是一个public类
 *  3.有一个空参构造
 *  4.每个成员变量都有相应的getter/setter方法。 
 */
@SuppressWarnings("serial")
public class Person implements Serializable {
	private String name;
	private Integer age; //建议不要用int，否则后面无法和Spring框架无缝结合
	
	//为演示jsp:setProperty与jsp:getProperty标签的一点细节，故意添加的一个非基本数据类型属性
	private Date birth;
	
	public Person() {
		System.out.println("创建了一个Person-Bean...."+this.hashCode());
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + "]";
	}
	
	
	////////////////以下用于演示jsp:setProperty与jsp:getProperty标签的一点细节////////////////////
	/*WA版本
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	*/
	
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	//该方法的功能: 把birth变量中的数据经过处理，以String的类型返回，这样jsp:getProperty才能读取出来
	public String getBirthday() {
		return sdf.format(birth);
	}
	//该方法的功能: 把str经过处理，赋值给birth变量
	public void setBirthday(String str) { 
		Date d=null;
		try {
			d = sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		this.birth = d;
	}
	
}
