package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ChongwuyiliaoDao;
import com.entity.ChongwuyiliaoEntity;
import com.service.ChongwuyiliaoService;
import com.entity.vo.ChongwuyiliaoVO;
import com.entity.view.ChongwuyiliaoView;

@Service("chongwuyiliaoService")
public class ChongwuyiliaoServiceImpl extends ServiceImpl<ChongwuyiliaoDao, ChongwuyiliaoEntity> implements ChongwuyiliaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChongwuyiliaoEntity> page = this.selectPage(
                new Query<ChongwuyiliaoEntity>(params).getPage(),
                new EntityWrapper<ChongwuyiliaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChongwuyiliaoEntity> wrapper) {
		  Page<ChongwuyiliaoView> page =new Query<ChongwuyiliaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChongwuyiliaoVO> selectListVO(Wrapper<ChongwuyiliaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChongwuyiliaoVO selectVO(Wrapper<ChongwuyiliaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChongwuyiliaoView> selectListView(Wrapper<ChongwuyiliaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChongwuyiliaoView selectView(Wrapper<ChongwuyiliaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
