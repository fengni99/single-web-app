package com.discovery.darchrow.web.controller;
/**
 * Copyright (c) 2016 Baozun All Rights Reserved.
 *
 * This software is the confidential and proprietary information of Baozun.
 * You shall not disclose such Confidential Information and shall use it only in
 * accordance with the terms of the license agreement you entered into
 * with Baozun.
 *
 * BAOZUN MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
 * SOFTWARE, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
 * PURPOSE, OR NON-INFRINGEMENT. BAOZUN SHALL NOT BE LIABLE FOR ANY DAMAGES
 * SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
 * THIS SOFTWARE OR ITS DERIVATIVES.
 *
 */

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.discovery.darchrow.sec.api.DemoItemService;
import com.discovery.darchrow.single.api.DemoUserService;
import com.discovery.darchrow.tools.jsonlib.JsonUtil;

@Controller
public class TestCosumerController {

//	private static final Logger log = LoggerFactory.getLogger(TestCosumerController.class);
	
	@Autowired
	private DemoUserService demoUserService;
	
	@Autowired
	private DemoItemService demoItemService;
	
	
	@RequestMapping(value = "/testquery.htm", method = RequestMethod.GET)
	public String testquery(HttpServletRequest request, Model model) {
		
		model.addAttribute("user", JsonUtil.format(demoUserService.findById(327)));
		
		model.addAttribute("item", JsonUtil.format(demoItemService.findById(1)));
		
		return "test/testquery";
	}
}
