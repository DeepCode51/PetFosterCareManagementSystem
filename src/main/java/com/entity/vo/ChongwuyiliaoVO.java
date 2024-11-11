package com.entity.vo;

import com.entity.ChongwuyiliaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 宠物医疗
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public class ChongwuyiliaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 项目封面
	 */
	
	private String xiangmufengmian;
		
	/**
	 * 适合宠物
	 */
	
	private String shihechongwu;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 咨询电话
	 */
	
	private String zixundianhua;
		
	/**
	 * 地址
	 */
	
	private String dizhi;
		
	/**
	 * 项目简介
	 */
	
	private String xiangmujianjie;
				
	
	/**
	 * 设置：项目封面
	 */
	 
	public void setXiangmufengmian(String xiangmufengmian) {
		this.xiangmufengmian = xiangmufengmian;
	}
	
	/**
	 * 获取：项目封面
	 */
	public String getXiangmufengmian() {
		return xiangmufengmian;
	}
				
	
	/**
	 * 设置：适合宠物
	 */
	 
	public void setShihechongwu(String shihechongwu) {
		this.shihechongwu = shihechongwu;
	}
	
	/**
	 * 获取：适合宠物
	 */
	public String getShihechongwu() {
		return shihechongwu;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
				
	
	/**
	 * 设置：咨询电话
	 */
	 
	public void setZixundianhua(String zixundianhua) {
		this.zixundianhua = zixundianhua;
	}
	
	/**
	 * 获取：咨询电话
	 */
	public String getZixundianhua() {
		return zixundianhua;
	}
				
	
	/**
	 * 设置：地址
	 */
	 
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	
	/**
	 * 获取：地址
	 */
	public String getDizhi() {
		return dizhi;
	}
				
	
	/**
	 * 设置：项目简介
	 */
	 
	public void setXiangmujianjie(String xiangmujianjie) {
		this.xiangmujianjie = xiangmujianjie;
	}
	
	/**
	 * 获取：项目简介
	 */
	public String getXiangmujianjie() {
		return xiangmujianjie;
	}
			
}
