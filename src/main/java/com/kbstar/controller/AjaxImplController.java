package com.kbstar.controller;
import com.kbstar.dto.Sales;

import com.kbstar.service.SalesService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@Slf4j
// 일반적인 컨트롤러는 화면jsp파일을 return 해 주니, ajax 요청은 이걸 이용하자
@RestController
public class AjaxImplController {


    @Autowired
    SalesService salesService;

    @RequestMapping("/getdatasales")
    public Object getdatasales() throws Exception {
        List <Sales> list= null;
        try {
            list = salesService.getdatasales();
        } catch (Exception e) {
            throw new Exception("시스템 장애");
        }
        JSONArray jaM=new JSONArray();
        JSONArray jaF=new JSONArray();

        JSONObject jo = new JSONObject();

        for(Sales obj:list){
            if (obj.getGender().equals("M")) {
                jaM.add(obj.getPrice());
            }else{
                jaF.add(obj.getPrice());
            }
        }
            jo.put("Male",jaM);
            jo.put("Female",jaF);
            log.info(jaM.toJSONString());
        log.info(jaF.toJSONString());
            return jo;
    }


}