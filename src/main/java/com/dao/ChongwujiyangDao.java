package com.dao;

import com.entity.ChongwujiyangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChongwujiyangVO;
import com.entity.view.ChongwujiyangView;


/**
 * 宠物寄养
 * 
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public interface ChongwujiyangDao extends BaseMapper<ChongwujiyangEntity> {
	
	List<ChongwujiyangVO> selectListVO(@Param("ew") Wrapper<ChongwujiyangEntity> wrapper);
	
	ChongwujiyangVO selectVO(@Param("ew") Wrapper<ChongwujiyangEntity> wrapper);
	
	List<ChongwujiyangView> selectListView(@Param("ew") Wrapper<ChongwujiyangEntity> wrapper);

	List<ChongwujiyangView> selectListView(Pagination page,@Param("ew") Wrapper<ChongwujiyangEntity> wrapper);
	
	ChongwujiyangView selectView(@Param("ew") Wrapper<ChongwujiyangEntity> wrapper);
	

}
