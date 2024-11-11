package com.entity.vo;

import com.entity.XiangcexinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 相册信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
public class XiangcexinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 相册名称
	 */
	
	private String xiangcemingcheng;
		
	/**
	 * 相册分类
	 */
	
	private String xiangcefenlei;
		
	/**
	 * 相册封面
	 */
	
	private String xiangcefengmian;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
		
	/**
	 * 相册内容
	 */
	
	private String xiangceneirong;
		
	/**
	 * 用户账号
	 */
	
	private String yonghuzhanghao;
		
	/**
	 * 用户姓名
	 */
	
	private String yonghuxingming;
				
	
	/**
	 * 设置：相册名称
	 */
	 
	public void setXiangcemingcheng(String xiangcemingcheng) {
		this.xiangcemingcheng = xiangcemingcheng;
	}
	
	/**
	 * 获取：相册名称
	 */
	public String getXiangcemingcheng() {
		return xiangcemingcheng;
	}
				
	
	/**
	 * 设置：相册分类
	 */
	 
	public void setXiangcefenlei(String xiangcefenlei) {
		this.xiangcefenlei = xiangcefenlei;
	}
	
	/**
	 * 获取：相册分类
	 */
	public String getXiangcefenlei() {
		return xiangcefenlei;
	}
				
	
	/**
	 * 设置：相册封面
	 */
	 
	public void setXiangcefengmian(String xiangcefengmian) {
		this.xiangcefengmian = xiangcefengmian;
	}
	
	/**
	 * 获取：相册封面
	 */
	public String getXiangcefengmian() {
		return xiangcefengmian;
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
	 * 设置：相册内容
	 */
	 
	public void setXiangceneirong(String xiangceneirong) {
		this.xiangceneirong = xiangceneirong;
	}
	
	/**
	 * 获取：相册内容
	 */
	public String getXiangceneirong() {
		return xiangceneirong;
	}
				
	
	/**
	 * 设置：用户账号
	 */
	 
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
				
	
	/**
	 * 设置：用户姓名
	 */
	 
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
			
}
