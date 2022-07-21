package com.lotte.admin.controller;

import com.lotte.admin.service.StatisticService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminPageController {

    private static final Logger logger = LoggerFactory.getLogger(AdminPageController.class);

    private StatisticService statisticService;

    public AdminPageController(StatisticService statisticService) {
        this.statisticService = statisticService;
    }

    // TODO: push 하기 전 테스트코드 지우기
    @RequestMapping("/main")
    public String main(Model model) {
        model.addAttribute("category", statisticService.getProductCountByCategory());
        model.addAttribute("gender", statisticService.getPricesByGender());
        model.addAttribute("date", statisticService.getTotalByDate());
        model.addAttribute("age", statisticService.getPriceByAge());
        model.addAttribute("month", statisticService.getTotalByMonth());
        model.addAttribute("year", statisticService.getTotalByYear());
        return "/admin/admin-main";
    }
}
