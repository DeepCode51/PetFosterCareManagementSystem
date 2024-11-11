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


import com.dao.DiscussmendianxinxiDao;
import com.entity.DiscussmendianxinxiEntity;
import com.service.DiscussmendianxinxiService;
import com.entity.vo.DiscussmendianxinxiVO;
import com.entity.view.DiscussmendianxinxiView;

@Service("discussmendianxinxiService")
public class DiscussmendianxinxiServiceImpl extends ServiceImpl<DiscussmendianxinxiDao, DiscussmendianxinxiEntity> implements DiscussmendianxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussmendianxinxiEntity> page = this.selectPage(
                new Query<DiscussmendianxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussmendianxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussmendianxinxiEntity> wrapper) {
		  Page<DiscussmendianxinxiView> page =new Query<DiscussmendianxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussmendianxinxiVO> selectListVO(Wrapper<DiscussmendianxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussmendianxinxiVO selectVO(Wrapper<DiscussmendianxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussmendianxinxiView> selectListView(Wrapper<DiscussmendianxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussmendianxinxiView selectView(Wrapper<DiscussmendianxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
