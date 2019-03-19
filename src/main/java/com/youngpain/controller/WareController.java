package com.youngpain.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.youngpain.entity.WareDO;
import com.youngpain.response.CommonResult;
import com.youngpain.service.WareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @ClassName WareController
 * @Author pain
 * @Date 2019/3/19 11:06
 * @Version 1.0
 **/
@RestController
public class WareController {

    @Autowired
    WareService wareService;

    @GetMapping("/")
    public String index() {
        return "hello";
    }

    @GetMapping("/wares")
    public CommonResult listWares() {
        List<WareDO> wareModelList = wareService.listWares();
        return CommonResult.create(wareModelList, "success");
    }

    @GetMapping("/ware/{id}")
    public CommonResult getWareById(@PathVariable("id") Integer id) {
        // 根据商品id获取商品详情
        WareDO wareDO = wareService.getWareDOById(id);

        return CommonResult.create(wareDO, "success");
    }

    @GetMapping("/wareList/{page}")
    public CommonResult listAllEmps(@PathVariable("page") Integer page) {
        // 获取指定页数据，大小为6
        PageHelper.startPage(page, 6);
        // 查询所有信息
        List<WareDO> wareDOList = wareService.listWares();
        // 使用PageInfo包装数据
        PageInfo pageInfo = new PageInfo(wareDOList, 5);
        return CommonResult.create(pageInfo, "success");
    }

}
