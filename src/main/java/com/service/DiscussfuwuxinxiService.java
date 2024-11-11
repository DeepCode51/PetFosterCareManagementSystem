package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussfuwuxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussfuwuxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussfuwuxinxiView;


/**
 * 服务信息评论表
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscussfuwuxinxiService extends IService<DiscussfuwuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussfuwuxinxiVO> selectListVO(Wrapper<DiscussfuwuxinxiEntity> wrapper);
   	
   	DiscussfuwuxinxiVO selectVO(@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);
   	
   	List<DiscussfuwuxinxiView> selectListView(Wrapper<DiscussfuwuxinxiEntity> wrapper);
   	
   	DiscussfuwuxinxiView selectView(@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussfuwuxinxiEntity> wrapper);
   	

}

