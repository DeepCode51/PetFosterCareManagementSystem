package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FuwuxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FuwuxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FuwuxinxiView;


/**
 * 服务信息
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public interface FuwuxinxiService extends IService<FuwuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FuwuxinxiVO> selectListVO(Wrapper<FuwuxinxiEntity> wrapper);
   	
   	FuwuxinxiVO selectVO(@Param("ew") Wrapper<FuwuxinxiEntity> wrapper);
   	
   	List<FuwuxinxiView> selectListView(Wrapper<FuwuxinxiEntity> wrapper);
   	
   	FuwuxinxiView selectView(@Param("ew") Wrapper<FuwuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FuwuxinxiEntity> wrapper);
   	

}

