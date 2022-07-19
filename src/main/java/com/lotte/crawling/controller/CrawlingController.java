package com.lotte.crawling.controller;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lotte.crawling.dto.CrawlingCategoryDto;
import com.lotte.crawling.dto.CrawlingDto;
import com.lotte.crawling.service.CrawlingService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
public class CrawlingController {
    static Logger logger = LoggerFactory.getLogger(CrawlingController.class);

    @Autowired
    private CrawlingService service;

    @RequestMapping(value="crawlingStart", method= {RequestMethod.GET,RequestMethod.POST})
    public String crawlingStart(){
        logger.info("CrawlingController crawlingStart() " + new Date());

        return "crawling/crawling";
    }

    @ResponseBody
    @RequestMapping(value = "crawlingCategory", method={RequestMethod.GET,RequestMethod.POST})
    public void crawlingCategory(@RequestParam Map params) throws Exception {
        logger.info("crawlingCategory crawling() " + new Date());

        ObjectMapper mapper = new ObjectMapper();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        List<CrawlingCategoryDto> list = Arrays.asList(mapper.readValue(params.get("categories").toString(), CrawlingCategoryDto[].class));

        service.insertCategory(list);
    }

    @ResponseBody
    @RequestMapping(value="crawlingList", method= {RequestMethod.GET,RequestMethod.POST})
    public void crawlingList(@RequestParam Map params) throws Exception {
        logger.info("CrawlingController crawling() " + new Date());

       ObjectMapper mapper = new ObjectMapper();
       mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
       List<CrawlingDto> list = Arrays.asList(mapper.readValue(params.get("products").toString(), CrawlingDto[].class));

       service.insertProducts(list);
    }

}
