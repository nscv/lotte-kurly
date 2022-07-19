package com.lotte.crawling.controller;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lotte.crawling.dto.CrawlingDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
public class CrawlingController {
    static Logger logger = LoggerFactory.getLogger(CrawlingController.class);

    @ResponseBody
    @RequestMapping(value="crawling", method= {RequestMethod.GET,RequestMethod.POST})
    public String crawling(@RequestParam Map params) throws Exception {
        //List list = mapper.readValue(params.get("products").toString(), new TypeReference<List<Map<String, Object>>>(){});

       ObjectMapper mapper = new ObjectMapper();
       mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
       List<CrawlingDto> list = Arrays.asList(mapper.readValue(params.get("products").toString(), CrawlingDto[].class));

       System.out.println("~~~~~~~~~~~~~~~");
       System.out.println(list.get(0));
       System.out.println("~~~~~~~~~~~~~~~");

       //System.out.println(list.get(0).toString());
       // System.out.println(list.get(0));


        /*JSONParser parser = new JSONParser();
        Object obj = parser.parse(products);
        JSONObject jsonObj = (JSONObject) obj;
        System.out.println(jsonObj);
*/
        return "1";
    }
}
