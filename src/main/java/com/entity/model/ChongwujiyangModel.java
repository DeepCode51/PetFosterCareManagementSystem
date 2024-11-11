package com.entity.model;

import com.entity.ChongwujiyangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 宠物寄养
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-02-21 12:35:39
 */
public class ChongwujiyangModel  implements Serializable {
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
	 * 寄养价格
	 */
	
	private Float jiyangjiage;
		
	/**
	 * 是否寄养
	 */
	
	private String shifoujiyang;
		
	/**
	 * 宠物名称
	 */
	
	private String chongwumingcheng;
		
	/**
	 * 宠物分类
	 */
	
	private String chongwufenlei;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 是否绝育
	 */
	
	private String shifoujueyu;
		
	/**
	 * 年龄
	 */
	
	private String nianling;
		
	/**
	 * 寄养日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jiyangriqi;
		
	/**
	 * 寄养原因
	 */
	
	private String jiyangyuanyin;
		
	/**
	 * 用户账号
	 */
	
	private String yonghuzhanghao;
		
	/**
	 * 用户姓名
	 */
	
	private String yonghuxingming;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
		
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
	 * 设置：是否寄养
	 */
	 
	public void setShifoujiyang(String shifoujiyang) {
		this.shifoujiyang = shifoujiyang;
	}
	
	/**
	 * 获取：是否寄养
	 */
	public String getShifoujiyang() {
		return shifoujiyang;
	}
				
	
	/**
	 * 设置：宠物名称
	 */
	 
	public void setChongwumingcheng(String chongwumingcheng) {
		this.chongwumingcheng = chongwumingcheng;
	}
	
	/**
	 * 获取：宠物名称
	 */
	public String getChongwumingcheng() {
		return chongwumingcheng;
	}
				
	
	/**
	 * 设置：宠物分类
	 */
	 
	public void setChongwufenlei(String chongwufenlei) {
		this.chongwufenlei = chongwufenlei;
	}
	
	/**
	 * 获取：宠物分类
	 */
	public String getChongwufenlei() {
		return chongwufenlei;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：是否绝育
	 */
	 
	public void setShifoujueyu(String shifoujueyu) {
		this.shifoujueyu = shifoujueyu;
	}
	
	/**
	 * 获取：是否绝育
	 */
	public String getShifoujueyu() {
		return shifoujueyu;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(String nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public String getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：寄养日期
	 */
	 
	public void setJiyangriqi(Date jiyangriqi) {
		this.jiyangriqi = jiyangriqi;
	}
	
	/**
	 * 获取：寄养日期
	 */
	public Date getJiyangriqi() {
		return jiyangriqi;
	}
				
	
	/**
	 * 设置：寄养原因
	 */
	 
	public void setJiyangyuanyin(String jiyangyuanyin) {
		this.jiyangyuanyin = jiyangyuanyin;
	}
	
	/**
	 * 获取：寄养原因
	 */
	public String getJiyangyuanyin() {
		return jiyangyuanyin;
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
