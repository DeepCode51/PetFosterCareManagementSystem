package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 服务选择
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
@TableName("fuwuxuanze")
public class FuwuxuanzeEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public FuwuxuanzeEntity() {
		
	}
	
	public FuwuxuanzeEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 选择编号
	 */
					
	private String xuanzebianhao;
	
	/**
	 * 服务项目
	 */
					
	private String fuwuxiangmu;
	
	/**
	 * 服务类型
	 */
					
	private String fuwuleixing;
	
	/**
	 * 服务价格
	 */
					
	private Float fuwujiage;
	
	/**
	 * 服务封面
	 */
					
	private String fuwufengmian;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 用户账号
	 */
					
	private String yonghuzhanghao;
	
	/**
	 * 用户姓名
	 */
					
	private String yonghuxingming;
	
	/**
	 * 联系方式
	 */
					
	private String lianxifangshi;
	
	/**
	 * 选择日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date xuanzeriqi;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：选择编号
	 */
	public void setXuanzebianhao(String xuanzebianhao) {
		this.xuanzebianhao = xuanzebianhao;
	}
	/**
	 * 获取：选择编号
	 */
	public String getXuanzebianhao() {
		return xuanzebianhao;
	}
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
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
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
	/**
	 * 设置：联系方式
	 */
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
	/**
	 * 设置：选择日期
	 */
	public void setXuanzeriqi(Date xuanzeriqi) {
		this.xuanzeriqi = xuanzeriqi;
	}
	/**
	 * 获取：选择日期
	 */
	public Date getXuanzeriqi() {
		return xuanzeriqi;
	}
	/**
	 * 设置：是否支付
	 */
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}

}
