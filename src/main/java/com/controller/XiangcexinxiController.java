package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XiangcexinxiEntity;
import com.entity.view.XiangcexinxiView;

import com.service.XiangcexinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 相册信息
 * 后端接口
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
@RestController
@RequestMapping("/xiangcexinxi")
public class XiangcexinxiController {
    @Autowired
    private XiangcexinxiService xiangcexinxiService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XiangcexinxiEntity xiangcexinxi, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			xiangcexinxi.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XiangcexinxiEntity> ew = new EntityWrapper<XiangcexinxiEntity>();
    	PageUtils page = xiangcexinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiangcexinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XiangcexinxiEntity xiangcexinxi, 
		HttpServletRequest request){
        EntityWrapper<XiangcexinxiEntity> ew = new EntityWrapper<XiangcexinxiEntity>();
    	PageUtils page = xiangcexinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xiangcexinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XiangcexinxiEntity xiangcexinxi){
       	EntityWrapper<XiangcexinxiEntity> ew = new EntityWrapper<XiangcexinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xiangcexinxi, "xiangcexinxi")); 
        return R.ok().put("data", xiangcexinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XiangcexinxiEntity xiangcexinxi){
        EntityWrapper< XiangcexinxiEntity> ew = new EntityWrapper< XiangcexinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xiangcexinxi, "xiangcexinxi")); 
		XiangcexinxiView xiangcexinxiView =  xiangcexinxiService.selectView(ew);
		return R.ok("查询相册信息成功").put("data", xiangcexinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XiangcexinxiEntity xiangcexinxi = xiangcexinxiService.selectById(id);
        return R.ok().put("data", xiangcexinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XiangcexinxiEntity xiangcexinxi = xiangcexinxiService.selectById(id);
        return R.ok().put("data", xiangcexinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XiangcexinxiEntity xiangcexinxi, HttpServletRequest request){
    	xiangcexinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xiangcexinxi);

        xiangcexinxiService.insert(xiangcexinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XiangcexinxiEntity xiangcexinxi, HttpServletRequest request){
    	xiangcexinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xiangcexinxi);

        xiangcexinxiService.insert(xiangcexinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody XiangcexinxiEntity xiangcexinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xiangcexinxi);
        xiangcexinxiService.updateById(xiangcexinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xiangcexinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XiangcexinxiEntity> wrapper = new EntityWrapper<XiangcexinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuzhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = xiangcexinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	





}
