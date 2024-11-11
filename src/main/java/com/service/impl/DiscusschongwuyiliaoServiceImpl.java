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


import com.dao.DiscusschongwuyiliaoDao;
import com.entity.DiscusschongwuyiliaoEntity;
import com.service.DiscusschongwuyiliaoService;
import com.entity.vo.DiscusschongwuyiliaoVO;
import com.entity.view.DiscusschongwuyiliaoView;

@Service("discusschongwuyiliaoService")
public class DiscusschongwuyiliaoServiceImpl extends ServiceImpl<DiscusschongwuyiliaoDao, DiscusschongwuyiliaoEntity> implements DiscusschongwuyiliaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschongwuyiliaoEntity> page = this.selectPage(
                new Query<DiscusschongwuyiliaoEntity>(params).getPage(),
                new EntityWrapper<DiscusschongwuyiliaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschongwuyiliaoEntity> wrapper) {
		  Page<DiscusschongwuyiliaoView> page =new Query<DiscusschongwuyiliaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschongwuyiliaoVO> selectListVO(Wrapper<DiscusschongwuyiliaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschongwuyiliaoVO selectVO(Wrapper<DiscusschongwuyiliaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschongwuyiliaoView> selectListView(Wrapper<DiscusschongwuyiliaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschongwuyiliaoView selectView(Wrapper<DiscusschongwuyiliaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
