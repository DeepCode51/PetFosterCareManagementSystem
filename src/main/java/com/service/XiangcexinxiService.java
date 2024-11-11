package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XiangcexinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XiangcexinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XiangcexinxiView;


/**
 * 相册信息
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface XiangcexinxiService extends IService<XiangcexinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiangcexinxiVO> selectListVO(Wrapper<XiangcexinxiEntity> wrapper);
   	
   	XiangcexinxiVO selectVO(@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);
   	
   	List<XiangcexinxiView> selectListView(Wrapper<XiangcexinxiEntity> wrapper);
   	
   	XiangcexinxiView selectView(@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiangcexinxiEntity> wrapper);
   	

}

