package com.entity.model;

import com.entity.MendianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 门店信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public class MendianxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 门店名称
	 */
	
	private String mendianmingcheng;
		
	/**
	 * 门店地址
	 */
	
	private String mendiandizhi;
		
	/**
	 * 门店封面
	 */
	
	private String mendianfengmian;
		
	/**
	 * 咨询电话
	 */
	
	private String zixundianhua;
		
	/**
	 * 寄养价格
	 */
	
	private Float jiyangjiage;
		
	/**
	 * 门店详情
	 */
	
	private String mendianxiangqing;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：门店名称
	 */
	 
	public void setMendianmingcheng(String mendianmingcheng) {
		this.mendianmingcheng = mendianmingcheng;
	}
	
	/**
	 * 获取：门店名称
	 */
	public String getMendianmingcheng() {
		return mendianmingcheng;
	}
				
	
	/**
	 * 设置：门店地址
	 */
	 
	public void setMendiandizhi(String mendiandizhi) {
		this.mendiandizhi = mendiandizhi;
	}
	
	/**
	 * 获取：门店地址
	 */
	public String getMendiandizhi() {
		return mendiandizhi;
	}
				
	
	/**
	 * 设置：门店封面
	 */
	 
	public void setMendianfengmian(String mendianfengmian) {
		this.mendianfengmian = mendianfengmian;
	}
	
	/**
	 * 获取：门店封面
	 */
	public String getMendianfengmian() {
		return mendianfengmian;
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
	 * 设置：寄养价格
	 */
	 
	public void setJiyangjiage(Float jiyangjiage) {
		this.jiyangjiage = jiyangjiage;
	}
	
	/**
	 * 获取：寄养价格
	 */
	public Float getJiyangjiage() {
		return jiyangjiage;
	}
				
	
	/**
	 * 设置：门店详情
	 */
	 
	public void setMendianxiangqing(String mendianxiangqing) {
		this.mendianxiangqing = mendianxiangqing;
	}
	
	/**
	 * 获取：门店详情
	 */
	public String getMendianxiangqing() {
		return mendianxiangqing;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
