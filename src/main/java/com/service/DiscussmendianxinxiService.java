package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussmendianxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussmendianxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussmendianxinxiView;


/**
 * 门店信息评论表
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscussmendianxinxiService extends IService<DiscussmendianxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussmendianxinxiVO> selectListVO(Wrapper<DiscussmendianxinxiEntity> wrapper);
   	
   	DiscussmendianxinxiVO selectVO(@Param("ew") Wrapper<DiscussmendianxinxiEntity> wrapper);
   	
   	List<DiscussmendianxinxiView> selectListView(Wrapper<DiscussmendianxinxiEntity> wrapper);
   	
   	DiscussmendianxinxiView selectView(@Param("ew") Wrapper<DiscussmendianxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussmendianxinxiEntity> wrapper);
   	

}

