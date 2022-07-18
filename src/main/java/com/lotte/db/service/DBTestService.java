package com.lotte.db.service;

import com.lotte.db.dao.DBTestDao;
import com.lotte.db.vo.DBTestVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class DBTestService {

    private final DBTestDao dbTestDao;

    public DBTestService(DBTestDao dbTestDao) {
        this.dbTestDao = dbTestDao;
    }

    public List<DBTestVO> getDBTestVO() {
        return dbTestDao.getDBTestVo();
    }

}
