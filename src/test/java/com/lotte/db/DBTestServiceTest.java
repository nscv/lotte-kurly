package com.lotte.db;

import com.lotte.db.service.DBTestService;
import com.lotte.db.vo.DBTestVO;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;


@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/applicationContext.xml",
                                   "file:src/main/webapp/WEB-INF/spring/servlet-context.xml"})
class DBTestServiceTest {

    @Autowired
    DBTestService service;

    @Test
    void getDBTestVO() {
        List<DBTestVO> list = service.getDBTestVO();
        list.forEach(System.out::println);
    }
}