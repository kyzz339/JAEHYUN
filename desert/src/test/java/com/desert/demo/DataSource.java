package com.desert.demo;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

@SpringBootTest
public class DataSource {
	
	    @Autowired
	    private ApplicationContext context;
	    @Autowired
	    private SqlSessionFactory sessionFactory;
	    @Test
	    void contextLoads(){
	    }
	    @Test
	    public void textApplicationContext(){
	        try{
	            System.out.println("-----------------------");
	            System.out.println(context.getBean("sqlSessionFactory"));
	        }catch (Exception e){
	            e.printStackTrace();
	        }
	    }
	    @Test
	    public void testSqlSessionFactory() {
	        try {
	            System.out.println("=========================");
	            System.out.println(sessionFactory.toString());
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	
	
}
