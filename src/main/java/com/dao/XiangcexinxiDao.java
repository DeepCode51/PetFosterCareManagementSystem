package com.dao;

import com.entity.XiangcexinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XiangcexinxiVO;
import com.entity.view.XiangcexinxiView;


/**
 * 相册信息
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface XiangcexinxiDao extends BaseMapper<XiangcexinxiEntity> {
	
	List<XiangcexinxiVO> selectListVO(@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);
	
	XiangcexinxiVO selectVO(@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);
	
	List<XiangcexinxiView> selectListView(@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);

	List<XiangcexinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);
	
	XiangcexinxiView selectView(@Param("ew") Wrapper<XiangcexinxiEntity> wrapper);
	

}
