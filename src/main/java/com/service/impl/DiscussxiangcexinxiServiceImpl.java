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


import com.dao.DiscussxiangcexinxiDao;
import com.entity.DiscussxiangcexinxiEntity;
import com.service.DiscussxiangcexinxiService;
import com.entity.vo.DiscussxiangcexinxiVO;
import com.entity.view.DiscussxiangcexinxiView;

@Service("discussxiangcexinxiService")
public class DiscussxiangcexinxiServiceImpl extends ServiceImpl<DiscussxiangcexinxiDao, DiscussxiangcexinxiEntity> implements DiscussxiangcexinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussxiangcexinxiEntity> page = this.selectPage(
                new Query<DiscussxiangcexinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussxiangcexinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussxiangcexinxiEntity> wrapper) {
		  Page<DiscussxiangcexinxiView> page =new Query<DiscussxiangcexinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussxiangcexinxiVO> selectListVO(Wrapper<DiscussxiangcexinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussxiangcexinxiVO selectVO(Wrapper<DiscussxiangcexinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussxiangcexinxiView> selectListView(Wrapper<DiscussxiangcexinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussxiangcexinxiView selectView(Wrapper<DiscussxiangcexinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
