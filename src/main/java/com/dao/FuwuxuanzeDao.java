package com.dao;

import com.entity.FuwuxuanzeEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FuwuxuanzeVO;
import com.entity.view.FuwuxuanzeView;


/**
 * 服务选择
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public interface FuwuxuanzeDao extends BaseMapper<FuwuxuanzeEntity> {
	
	List<FuwuxuanzeVO> selectListVO(@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);
	
	FuwuxuanzeVO selectVO(@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);
	
	List<FuwuxuanzeView> selectListView(@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);

	List<FuwuxuanzeView> selectListView(Pagination page,@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);
	
	FuwuxuanzeView selectView(@Param("ew") Wrapper<FuwuxuanzeEntity> wrapper);
	

}
