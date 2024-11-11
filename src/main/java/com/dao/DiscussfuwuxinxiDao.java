package com.dao;

import com.entity.DiscussfuwuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussfuwuxinxiVO;
import com.entity.view.DiscussfuwuxinxiView;


/**
 * 服务信息评论表
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscussfuwuxinxiDao extends BaseMapper<DiscussfuwuxinxiEntity> {
	
	List<DiscussfuwuxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);
	
	DiscussfuwuxinxiVO selectVO(@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);
	
	List<DiscussfuwuxinxiView> selectListView(@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);

	List<DiscussfuwuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);
	
	DiscussfuwuxinxiView selectView(@Param("ew") Wrapper<DiscussfuwuxinxiEntity> wrapper);
	

}
