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


import com.dao.XiangcexinxiDao;
import com.entity.XiangcexinxiEntity;
import com.service.XiangcexinxiService;
import com.entity.vo.XiangcexinxiVO;
import com.entity.view.XiangcexinxiView;

@Service("xiangcexinxiService")
public class XiangcexinxiServiceImpl extends ServiceImpl<XiangcexinxiDao, XiangcexinxiEntity> implements XiangcexinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiangcexinxiEntity> page = this.selectPage(
                new Query<XiangcexinxiEntity>(params).getPage(),
                new EntityWrapper<XiangcexinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiangcexinxiEntity> wrapper) {
		  Page<XiangcexinxiView> page =new Query<XiangcexinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XiangcexinxiVO> selectListVO(Wrapper<XiangcexinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XiangcexinxiVO selectVO(Wrapper<XiangcexinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XiangcexinxiView> selectListView(Wrapper<XiangcexinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiangcexinxiView selectView(Wrapper<XiangcexinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
