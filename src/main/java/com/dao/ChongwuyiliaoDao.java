package com.dao;

import com.entity.ChongwuyiliaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChongwuyiliaoVO;
import com.entity.view.ChongwuyiliaoView;


/**
 * 宠物医疗
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public interface ChongwuyiliaoDao extends BaseMapper<ChongwuyiliaoEntity> {
	
	List<ChongwuyiliaoVO> selectListVO(@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);
	
	ChongwuyiliaoVO selectVO(@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);
	
	List<ChongwuyiliaoView> selectListView(@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);

	List<ChongwuyiliaoView> selectListView(Pagination page,@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);
	
	ChongwuyiliaoView selectView(@Param("ew") Wrapper<ChongwuyiliaoEntity> wrapper);
	

}
