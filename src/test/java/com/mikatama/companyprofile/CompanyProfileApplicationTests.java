package com.mikatama.companyprofile;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.mikatama.cp.dao.OrderProcessDao;
import com.mikatama.cp.service.OrderProcessService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes=CompanyProfileApplicationTests.class)
@TestPropertySource(locations = "classpath:application.properties")
public class CompanyProfileApplicationTests {

	@Autowired
	OrderProcessService orderProcessService;
	
	@Test
	public void contextLoads() {
	}
	
	@Test
	public void testGetLatestId(){
		String latesId = orderProcessService.getLatestId();
		assertEquals("5", latesId);
	}

}
