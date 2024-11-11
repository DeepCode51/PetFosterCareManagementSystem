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


import com.dao.DiscussfuwuxinxiDao;
import com.entity.DiscussfuwuxinxiEntity;
import com.service.DiscussfuwuxinxiService;
import com.entity.vo.DiscussfuwuxinxiVO;
import com.entity.view.DiscussfuwuxinxiView;

@Service("discussfuwuxinxiService")
public class DiscussfuwuxinxiServiceImpl extends ServiceImpl<DiscussfuwuxinxiDao, DiscussfuwuxinxiEntity> implements DiscussfuwuxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussfuwuxinxiEntity> page = this.selectPage(
                new Query<DiscussfuwuxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussfuwuxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussfuwuxinxiEntity> wrapper) {
		  Page<DiscussfuwuxinxiView> page =new Query<DiscussfuwuxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussfuwuxinxiVO> selectListVO(Wrapper<DiscussfuwuxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussfuwuxinxiVO selectVO(Wrapper<DiscussfuwuxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussfuwuxinxiView> selectListView(Wrapper<DiscussfuwuxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussfuwuxinxiView selectView(Wrapper<DiscussfuwuxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
