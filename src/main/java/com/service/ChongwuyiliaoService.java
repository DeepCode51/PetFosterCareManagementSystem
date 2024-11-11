package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChongwuyiliaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChongwuyiliaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChongwuyiliaoView;


/**
 * 宠物医疗
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public interface ChongwuyiliaoService extends IService<ChongwuyiliaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChongwuyiliaoVO> selectListVO(Wrapper<ChongwuyiliaoEntity> wrapper);
   	
   	ChongwuyiliaoVO selectVO(@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);
   	
   	List<ChongwuyiliaoView> selectListView(Wrapper<ChongwuyiliaoEntity> wrapper);
   	
   	ChongwuyiliaoView selectView(@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChongwuyiliaoEntity> wrapper);
   	

}

