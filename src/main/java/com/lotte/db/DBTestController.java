package com.lotte.db;

import com.lotte.db.service.DBTestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DBTestController {

    private final DBTestService service;

    public DBTestController(DBTestService service) {
        this.service = service;
    }

    @GetMapping("/db")
    public String getDBTestVo() {
        return service.getDBTestVO().toString();
    }

}
