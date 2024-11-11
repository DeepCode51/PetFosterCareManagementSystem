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


import com.dao.FuwuxuanzeDao;
import com.entity.FuwuxuanzeEntity;
import com.service.FuwuxuanzeService;
import com.entity.vo.FuwuxuanzeVO;
import com.entity.view.FuwuxuanzeView;

@Service("fuwuxuanzeService")
public class FuwuxuanzeServiceImpl extends ServiceImpl<FuwuxuanzeDao, FuwuxuanzeEntity> implements FuwuxuanzeService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FuwuxuanzeEntity> page = this.selectPage(
                new Query<FuwuxuanzeEntity>(params).getPage(),
                new EntityWrapper<FuwuxuanzeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FuwuxuanzeEntity> wrapper) {
		  Page<FuwuxuanzeView> page =new Query<FuwuxuanzeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FuwuxuanzeVO> selectListVO(Wrapper<FuwuxuanzeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FuwuxuanzeVO selectVO(Wrapper<FuwuxuanzeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FuwuxuanzeView> selectListView(Wrapper<FuwuxuanzeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FuwuxuanzeView selectView(Wrapper<FuwuxuanzeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
