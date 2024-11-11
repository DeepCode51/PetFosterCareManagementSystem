package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FuwuxuanzeEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FuwuxuanzeVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FuwuxuanzeView;


/**
 * 服务选择
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public interface FuwuxuanzeService extends IService<FuwuxuanzeEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FuwuxuanzeVO> selectListVO(Wrapper<FuwuxuanzeEntity> wrapper);
   	
   	FuwuxuanzeVO selectVO(@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);
   	
   	List<FuwuxuanzeView> selectListView(Wrapper<FuwuxuanzeEntity> wrapper);
   	
   	FuwuxuanzeView selectView(@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FuwuxuanzeEntity> wrapper);
   	

}

