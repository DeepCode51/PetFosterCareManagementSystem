package com.entity.view;

import com.entity.DiscussmendianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 门店信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
@TableName("discussmendianxinxi")
public class DiscussmendianxinxiView  extends DiscussmendianxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussmendianxinxiView(){
	}
 
 	public DiscussmendianxinxiView(DiscussmendianxinxiEntity discussmendianxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discussmendianxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
