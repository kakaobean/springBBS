package com.ktds.sample.controller;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
 
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.sample.service.SampleService;
 
@Controller
public class SampleController {
    Logger log = Logger.getLogger(this.getClass());
     
    @Resource(name="sampleService")
    private SampleService sampleService;
     
    @RequestMapping(value="/sample/openSampleBoardList.do")
    public ModelAndView openSampleBoardList(Map<String, Object> commandMap) throws Exception{
    	
        ModelAndView mv = new ModelAndView("redirect:/");
         
        System.out.println("controller1::");
        List<Map<String,Object>> list = sampleService.selectBoardList(commandMap);
        mv.addObject("list", list);
        System.out.println("controller2::");
         
        return mv;
    }
    
    @RequestMapping(value = "/sample22", method = RequestMethod.GET)
	public String boardList22(Locale locale, Model model) {
		String testData = "youngbin";
		model.addAttribute("serverTime", testData );
		
		return "boardList";
	}
}


