package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XiangcefenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XiangcefenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XiangcefenleiView;


/**
 * 相册分类
 *
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface XiangcefenleiService extends IService<XiangcefenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XiangcefenleiVO> selectListVO(Wrapper<XiangcefenleiEntity> wrapper);
   	
   	XiangcefenleiVO selectVO(@Param("ew") Wrapper<XiangcefenleiEntity> wrapper);
   	
   	List<XiangcefenleiView> selectListView(Wrapper<XiangcefenleiEntity> wrapper);
   	
   	XiangcefenleiView selectView(@Param("ew") Wrapper<XiangcefenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XiangcefenleiEntity> wrapper);
   	

}

