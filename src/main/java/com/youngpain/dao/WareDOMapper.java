package com.youngpain.dao;

import com.youngpain.entity.WareDO;

import java.util.List;

public interface WareDOMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WareDO record);

    int insertSelective(WareDO record);

    WareDO selectByPrimaryKey(Integer id);

    List<WareDO> listWares();

    int updateByPrimaryKeySelective(WareDO record);

    int updateByPrimaryKey(WareDO record);
}