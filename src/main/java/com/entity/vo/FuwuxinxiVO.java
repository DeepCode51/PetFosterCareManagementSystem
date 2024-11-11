package com.entity.vo;

import com.entity.FuwuxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 服务信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public class FuwuxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 服务项目
	 */
	
	private String fuwuxiangmu;
		
	/**
	 * 服务类型
	 */
	
	private String fuwuleixing;
		
	/**
	 * 项目等级
	 */
	
	private String xiangmudengji;
		
	/**
	 * 服务价格
	 */
	
	private Float fuwujiage;
		
	/**
	 * 服务封面
	 */
	
	private String fuwufengmian;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
		
	/**
	 * 服务介绍
	 */
	
	private String fuwujieshao;
				
	
	/**
	 * 设置：服务项目
	 */
	 
	public void setFuwuxiangmu(String fuwuxiangmu) {
		this.fuwuxiangmu = fuwuxiangmu;
	}
	
	/**
	 * 获取：服务项目
	 */
	public String getFuwuxiangmu() {
		return fuwuxiangmu;
	}
				
	
	/**
	 * 设置：服务类型
	 */
	 
	public void setFuwuleixing(String fuwuleixing) {
		this.fuwuleixing = fuwuleixing;
	}
	
	/**
	 * 获取：服务类型
	 */
	public String getFuwuleixing() {
		return fuwuleixing;
	}
				
	
	/**
	 * 设置：项目等级
	 */
	 
	public void setXiangmudengji(String xiangmudengji) {
		this.xiangmudengji = xiangmudengji;
	}
	
	/**
	 * 获取：项目等级
	 */
	public String getXiangmudengji() {
		return xiangmudengji;
	}
				
	
	/**
	 * 设置：服务价格
	 */
	 
	public void setFuwujiage(Float fuwujiage) {
		this.fuwujiage = fuwujiage;
	}
	
	/**
	 * 获取：服务价格
	 */
	public Float getFuwujiage() {
		return fuwujiage;
	}
				
	
	/**
	 * 设置：服务封面
	 */
	 
	public void setFuwufengmian(String fuwufengmian) {
		this.fuwufengmian = fuwufengmian;
	}
	
	/**
	 * 获取：服务封面
	 */
	public String getFuwufengmian() {
		return fuwufengmian;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
				
	
	/**
	 * 设置：服务介绍
	 */
	 
	public void setFuwujieshao(String fuwujieshao) {
		this.fuwujieshao = fuwujieshao;
	}
	
	/**
	 * 获取：服务介绍
	 */
	public String getFuwujieshao() {
		return fuwujieshao;
	}
			
}
