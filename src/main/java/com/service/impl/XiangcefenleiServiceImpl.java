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


import com.dao.XiangcefenleiDao;
import com.entity.XiangcefenleiEntity;
import com.service.XiangcefenleiService;
import com.entity.vo.XiangcefenleiVO;
import com.entity.view.XiangcefenleiView;

@Service("xiangcefenleiService")
public class XiangcefenleiServiceImpl extends ServiceImpl<XiangcefenleiDao, XiangcefenleiEntity> implements XiangcefenleiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiangcefenleiEntity> page = this.selectPage(
                new Query<XiangcefenleiEntity>(params).getPage(),
                new EntityWrapper<XiangcefenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiangcefenleiEntity> wrapper) {
		  Page<XiangcefenleiView> page =new Query<XiangcefenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XiangcefenleiVO> selectListVO(Wrapper<XiangcefenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XiangcefenleiVO selectVO(Wrapper<XiangcefenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XiangcefenleiView> selectListView(Wrapper<XiangcefenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiangcefenleiView selectView(Wrapper<XiangcefenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
