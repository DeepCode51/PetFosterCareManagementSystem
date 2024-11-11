package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussxiangcexinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussxiangcexinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussxiangcexinxiView;


/**
 * 相册信息评论表
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscussxiangcexinxiService extends IService<DiscussxiangcexinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussxiangcexinxiVO> selectListVO(Wrapper<DiscussxiangcexinxiEntity> wrapper);
   	
   	DiscussxiangcexinxiVO selectVO(@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);
   	
   	List<DiscussxiangcexinxiView> selectListView(Wrapper<DiscussxiangcexinxiEntity> wrapper);
   	
   	DiscussxiangcexinxiView selectView(@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussxiangcexinxiEntity> wrapper);
   	

}

