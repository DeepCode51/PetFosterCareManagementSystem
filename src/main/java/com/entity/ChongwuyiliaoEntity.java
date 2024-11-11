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
 * 宠物医疗
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
@TableName("chongwuyiliao")
public class ChongwuyiliaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ChongwuyiliaoEntity() {
		
	}
	
	public ChongwuyiliaoEntity(T t) {
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
	 * 项目名称
	 */
					
	private String xiangmumingcheng;
	
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
	 * 设置：项目名称
	 */
	public void setXiangmumingcheng(String xiangmumingcheng) {
		this.xiangmumingcheng = xiangmumingcheng;
	}
	/**
	 * 获取：项目名称
	 */
	public String getXiangmumingcheng() {
		return xiangmumingcheng;
	}
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
