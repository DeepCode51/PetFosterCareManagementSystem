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


import com.dao.FuwuxinxiDao;
import com.entity.FuwuxinxiEntity;
import com.service.FuwuxinxiService;
import com.entity.vo.FuwuxinxiVO;
import com.entity.view.FuwuxinxiView;

@Service("fuwuxinxiService")
public class FuwuxinxiServiceImpl extends ServiceImpl<FuwuxinxiDao, FuwuxinxiEntity> implements FuwuxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FuwuxinxiEntity> page = this.selectPage(
                new Query<FuwuxinxiEntity>(params).getPage(),
                new EntityWrapper<FuwuxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FuwuxinxiEntity> wrapper) {
		  Page<FuwuxinxiView> page =new Query<FuwuxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FuwuxinxiVO> selectListVO(Wrapper<FuwuxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FuwuxinxiVO selectVO(Wrapper<FuwuxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FuwuxinxiView> selectListView(Wrapper<FuwuxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FuwuxinxiView selectView(Wrapper<FuwuxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
