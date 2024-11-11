package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusschongwuyiliaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusschongwuyiliaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusschongwuyiliaoView;


/**
 * 宠物医疗评论表
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscusschongwuyiliaoService extends IService<DiscusschongwuyiliaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschongwuyiliaoVO> selectListVO(Wrapper<DiscusschongwuyiliaoEntity> wrapper);
   	
   	DiscusschongwuyiliaoVO selectVO(@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);
   	
   	List<DiscusschongwuyiliaoView> selectListView(Wrapper<DiscusschongwuyiliaoEntity> wrapper);
   	
   	DiscusschongwuyiliaoView selectView(@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusschongwuyiliaoEntity> wrapper);
   	

}

