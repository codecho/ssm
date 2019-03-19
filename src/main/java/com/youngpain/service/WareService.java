package com.youngpain.service;

import com.youngpain.dao.WareDOMapper;
import com.youngpain.entity.WareDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName WareService
 * @Author pain
 * @Date 2019/3/19 11:08
 * @Version 1.0
 **/
@Service
public class WareService {

    @Autowired
    WareDOMapper wareDOMapper;

    public WareDO getWareDOById(Integer id) {
        return wareDOMapper.selectByPrimaryKey(id);
    }

    public List<WareDO> listWares() {
        return wareDOMapper.listWares();
    }

}
