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
 * 相册信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:40
 */
@TableName("xiangcexinxi")
public class XiangcexinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XiangcexinxiEntity() {
		
	}
	
	public XiangcexinxiEntity(T t) {
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
	 * 相册编号
	 */
					
	private String xiangcebianhao;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	 * 设置：相册编号
	 */
	public void setXiangcebianhao(String xiangcebianhao) {
		this.xiangcebianhao = xiangcebianhao;
	}
	/**
	 * 获取：相册编号
	 */
	public String getXiangcebianhao() {
		return xiangcebianhao;
	}
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
