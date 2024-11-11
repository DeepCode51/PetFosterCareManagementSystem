package com.dao;

import com.entity.DiscusschongwuyiliaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschongwuyiliaoVO;
import com.entity.view.DiscusschongwuyiliaoView;


/**
 * 宠物医疗评论表
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public interface DiscusschongwuyiliaoDao extends BaseMapper<DiscusschongwuyiliaoEntity> {
	
	List<DiscusschongwuyiliaoVO> selectListVO(@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);
	
	DiscusschongwuyiliaoVO selectVO(@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);
	
	List<DiscusschongwuyiliaoView> selectListView(@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);

	List<DiscusschongwuyiliaoView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);
	
	DiscusschongwuyiliaoView selectView(@Param("ew") Wrapper<DiscusschongwuyiliaoEntity> wrapper);
	

}
