package org.game.test;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

/**
 * @program: game
 * @author: Guo
 * @create: 2020-07-05 08:39
 * @description: NO description
 **/
/*@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {"classpath:applicationContext.xml","classpath:springmvc-servlet.xml"})
*/
public class MVCTest {
/*    WebApplicationContext context;
    MockMvc mockMvc;
    @Before
    public void initMockMv(){
        mockMvc= MockMvcBuilders.webAppContextSetup(context).build();
    }
    @Test
    public void testPage()throws Exception {
        MvcResult result=mockMvc.perform(MockMvcRequestBuilders.get("/emps").param("pn","1")).andReturn();
        MockHttpServletRequest request = result.getRequest();
        Object pageInfo = request.getAttribute("pageInfo");

    }*/

}
