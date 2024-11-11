package com.dao;

import com.entity.DiscussxiangcexinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussxiangcexinxiVO;
import com.entity.view.DiscussxiangcexinxiView;


/**
 * 相册信息评论表
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscussxiangcexinxiDao extends BaseMapper<DiscussxiangcexinxiEntity> {
	
	List<DiscussxiangcexinxiVO> selectListVO(@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);
	
	DiscussxiangcexinxiVO selectVO(@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);
	
	List<DiscussxiangcexinxiView> selectListView(@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);

	List<DiscussxiangcexinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);
	
	DiscussxiangcexinxiView selectView(@Param("ew") Wrapper<DiscussxiangcexinxiEntity> wrapper);
	

}
