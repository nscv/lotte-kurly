package com.lotte.db.dao;

import com.lotte.db.vo.DBTestVO;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DBTestDao {

    List<DBTestVO> getDBTestVo();

}
