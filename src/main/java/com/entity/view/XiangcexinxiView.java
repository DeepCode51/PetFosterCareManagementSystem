package com.entity.view;

import com.entity.XiangcexinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 相册信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
@TableName("xiangcexinxi")
public class XiangcexinxiView  extends XiangcexinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XiangcexinxiView(){
	}
 
 	public XiangcexinxiView(XiangcexinxiEntity xiangcexinxiEntity){
 	try {
			BeanUtils.copyProperties(this, xiangcexinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
