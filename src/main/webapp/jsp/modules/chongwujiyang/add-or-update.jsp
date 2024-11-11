<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑宠物寄养</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>宠物寄养管理</span></li>
								<li class="breadcrumb-item active"><span>编辑宠物寄养</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">宠物寄养信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>寄养单号</label>
										<input id="jiyangdanhao" name="jiyangdanhao" class="form-control" value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>门店名称</label>
										<input name="mendianmingcheng" id="mendianmingcheng" name="mendianmingcheng" class="form-control" placeholder="门店名称">
									</div>
									<div class="form-group col-md-6">
										<label>门店地址</label>
										<input name="mendiandizhi" id="mendiandizhi" name="mendiandizhi" class="form-control" placeholder="门店地址">
									</div>
									<div class="form-group col-md-6">
										<label>门店封面</label>
										<div><img id="mendianfengmianImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="mendianfengmianupload" class="form-control-file"></div>
										<input name="mendianfengmian" id="mendianfengmian-input" type="hidden"></div>
									</div>
									<div class="form-group col-md-6">
										<label>寄养价格</label>
										<input name="jiyangjiage" id="jiyangjiage" name="jiyangjiage" class="form-control" placeholder="寄养价格">
									</div>
									<div class="form-group col-md-6">
										<label>是否寄养</label>
										<select id="shifoujiyangSelect" name="shifoujiyang" class="form-control">
												<option value=""></option>
												<option class="shifoujiyangOption" value="是">
													是
												</option>
												<option class="shifoujiyangOption" value="否">
													否
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>宠物名称</label>
										<input name="chongwumingcheng" id="chongwumingcheng" name="chongwumingcheng" class="form-control" placeholder="宠物名称">
									</div>
									<div class="form-group col-md-6">
										<label>宠物分类</label>
										<select id="chongwufenleiSelect" name="chongwufenlei" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>性别</label>
										<select id="xingbieSelect" name="xingbie" class="form-control">
												<option value=""></option>
												<option class="xingbieOption" value="公">
													公
												</option>
												<option class="xingbieOption" value="母">
													母
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>是否绝育</label>
										<select id="shifoujueyuSelect" name="shifoujueyu" class="form-control">
												<option value=""></option>
												<option class="shifoujueyuOption" value="是">
													是
												</option>
												<option class="shifoujueyuOption" value="否">
													否
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>年龄</label>
										<input name="nianling" id="nianling" name="nianling" class="form-control" placeholder="年龄">
									</div>
									<div class="form-group col-md-6">
										<label>寄养日期</label>
										<div id="jiyangriqiDate" class="input-append date form_datetime">
											<input id="jiyangriqi-input" name="jiyangriqi" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>寄养原因</label>
										<input name="jiyangyuanyin" id="jiyangyuanyin" name="jiyangyuanyin" class="form-control" placeholder="寄养原因">
									</div>
									<div class="form-group col-md-6">
										<label>用户账号</label>
										<input name="yonghuzhanghao" id="yonghuzhanghao" name="yonghuzhanghao" class="form-control" placeholder="用户账号">
									</div>
									<div class="form-group col-md-6">
										<label>用户姓名</label>
										<input name="yonghuxingming" id="yonghuxingming" name="yonghuxingming" class="form-control" placeholder="用户姓名">
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "chongwujiyang";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var chongwufenleiOptions = [];

		function jiyangdanhaoUuid(){
			if($("#jiyangdanhao").val() == null || $("#jiyangdanhao").val() == "null" || $("#jiyangdanhao").val() == ""){
				$("#jiyangdanhao").attr("value",Math.round(new Date().getTime()/1000));
			}
		}				
		function chongwufenleiSelect(){
			http("option/chongwufenlei/chongwufenlei","GET",{},(res)=>{
				if(res.code == 0){
					chongwufenleiOptions = res.data;
					var nullOption = document.createElement('option');
					var chongwufenleiSelect = document.getElementById('chongwufenleiSelect');
					chongwufenleiSelect.appendChild(nullOption);
					for(var i=0;i<chongwufenleiOptions.length;i++){
						var chongwufenleiOption = document.createElement('option');
						chongwufenleiOption.setAttribute('name','chongwufenleiOption');
						chongwufenleiOption.setAttribute('value',chongwufenleiOptions[i]);
						chongwufenleiOption.innerHTML = chongwufenleiOptions[i];									
						if(ruleForm.chongwufenlei == chongwufenleiOptions[i]){
							chongwufenleiOption.setAttribute('selected','selected');
						}
						chongwufenleiSelect.appendChild(chongwufenleiOption);
					}
				}
			});
		}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "chongwujiyang/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#mendianfengmianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('mendianfengmian-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('mendianfengmianFileName') != null){
						document.getElementById('mendianfengmianFileName').innerHTML = "上传成功!";
					}				
					$("#mendianfengmianImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("chongwujiyang/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("chongwujiyang/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("chongwujiyang/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    mendianmingcheng: {
					},
				    mendiandizhi: {
					},
				    mendianfengmian: {
					},
				    jiyangjiage: {
					number: true,
					},
				    shifoujiyang: {
					},
				    chongwumingcheng: {
					},
				    chongwufenlei: {
					},
				    xingbie: {
					},
				    shifoujueyu: {
					},
				    nianling: {
					},
				    jiyangriqi: {
					},
				    jiyangyuanyin: {
					},
				    yonghuzhanghao: {
					},
				    yonghuxingming: {
					},
				    ispay: {
					},
				    clicknum: {
					digits: true,
					},
				},
				messages: {
					mendianmingcheng: {
					},
					mendiandizhi: {
					},
					mendianfengmian: {
					},
					jiyangjiage: {
						number: "请输入数字",	
					},
					shifoujiyang: {
					},
					chongwumingcheng: {
					},
					chongwufenlei: {
					},
					xingbie: {
					},
					shifoujueyu: {
					},
					nianling: {
					},
					jiyangriqi: {
					},
					jiyangyuanyin: {
					},
					yonghuzhanghao: {
					},
					yonghuxingming: {
					},
					ispay: {
					},
					clicknum: {
						digits: "请输入整数",
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("chongwujiyang/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												chongwufenleiSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				jiyangdanhaoUuid();
				chongwufenleiSelect();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#jiyangriqiDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
		}		
		function calculationSE(colName){
			//单列求和接口
			http("chongwujiyang"+colName,"GET",{
				tableName: "chongwujiyang",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.yonghuzhanghao != null && res.data.yonghuzhanghao != ''){
							$('#yonghuzhanghao').val(res.data.yonghuzhanghao)
							$("#yonghuzhanghao").attr('readonly','readonly');
						}
						if(res.data !=null && res.data.yonghuxingming != null && res.data.yonghuxingming != ''){
							$('#yonghuxingming').val(res.data.yonghuxingming)
							$("#yonghuxingming").attr('readonly','readonly');
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#jiyangdanhao").val(ruleForm.jiyangdanhao);	
			$("#mendianmingcheng").val(ruleForm.mendianmingcheng);	
			$("#mendiandizhi").val(ruleForm.mendiandizhi);	
			$("#mendianfengmian-input").val(ruleForm.mendianfengmian);
			$("#jiyangjiage").val(ruleForm.jiyangjiage);	
			var shifoujiyangOptions = document.getElementsByClassName("shifoujiyangOption");
			for(var shifoujiyangCount = 0; shifoujiyangCount < shifoujiyangOptions.length;shifoujiyangCount++){
				if(shifoujiyangOptions[shifoujiyangCount].getAttribute('value') == ruleForm.shifoujiyang){
					shifoujiyangOptions[shifoujiyangCount].setAttribute('selected','selected');
				}
			}
			$("#chongwumingcheng").val(ruleForm.chongwumingcheng);	
			var chongwufenleiOptions = document.getElementsByClassName("chongwufenleiOption");
			for(var chongwufenleiCount = 0; chongwufenleiCount < chongwufenleiOptions.length;chongwufenleiCount++){
				if(chongwufenleiOptions[chongwufenleiCount].getAttribute('value') == ruleForm.chongwufenlei){
					chongwufenleiOptions[chongwufenleiCount].setAttribute('selected','selected');
				}
			}
			var xingbieOptions = document.getElementsByClassName("xingbieOption");
			for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
				if(xingbieOptions[xingbieCount].getAttribute('value') == ruleForm.xingbie){
					xingbieOptions[xingbieCount].setAttribute('selected','selected');
				}
			}
			var shifoujueyuOptions = document.getElementsByClassName("shifoujueyuOption");
			for(var shifoujueyuCount = 0; shifoujueyuCount < shifoujueyuOptions.length;shifoujueyuCount++){
				if(shifoujueyuOptions[shifoujueyuCount].getAttribute('value') == ruleForm.shifoujueyu){
					shifoujueyuOptions[shifoujueyuCount].setAttribute('selected','selected');
				}
			}
			$("#nianling").val(ruleForm.nianling);	
			$("#jiyangriqi-input").val(ruleForm.jiyangriqi);
			$("#jiyangyuanyin").val(ruleForm.jiyangyuanyin);	
			$("#yonghuzhanghao").val(ruleForm.yonghuzhanghao);	
			$("#yonghuxingming").val(ruleForm.yonghuxingming);	
			$("#ispay").val(ruleForm.ispay);	

		}		
		//图片显示
		function showImg(){
			var mendianfengmianFileName = "\"" + ruleForm.mendianfengmian + "\"";
			$("#mendianfengmianImg").attr("src",baseUrl+ruleForm.mendianfengmian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.jiyangdanhao != null && res.data.jiyangdanhao != ''){

						$("#jiyangdanhao").val(res.data.jiyangdanhao);
						$("#jiyangdanhao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.mendianmingcheng != null && res.data.mendianmingcheng != ''){

						$("#mendianmingcheng").val(res.data.mendianmingcheng);
						$("#mendianmingcheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.mendiandizhi != null && res.data.mendiandizhi != ''){

						$("#mendiandizhi").val(res.data.mendiandizhi);
						$("#mendiandizhi").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.mendianfengmian != null && res.data.mendianfengmian != ''){

						$("#mendianfengmianImg").attr("src",baseUrl+res.data.mendianfengmian);
						$("#mendianfengmian-input").val(res.data.mendianfengmian);
					}
					if(res.data != null && res.data != '' && res.data.jiyangjiage != null && res.data.jiyangjiage != ''){

						$("#jiyangjiage").val(res.data.jiyangjiage);
						$("#jiyangjiage").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shifoujiyang != null && res.data.shifoujiyang != ''){

						var shifoujiyangOptions = document.getElementsByClassName("shifoujiyangOption");
						for(var shifoujiyangCount = 0; shifoujiyangCount < shifoujiyangOptions.length;shifoujiyangCount++){
							if(shifoujiyangOptions[shifoujiyangCount].getAttribute('value') == res.data.shifoujiyang){
								shifoujiyangOptions[shifoujiyangCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.chongwumingcheng != null && res.data.chongwumingcheng != ''){

						$("#chongwumingcheng").val(res.data.chongwumingcheng);
						$("#chongwumingcheng").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.chongwufenlei != null && res.data.chongwufenlei != ''){

						var chongwufenleiOptions = document.getElementsByClassName("chongwufenleiOption");
						for(var chongwufenleiCount = 0; chongwufenleiCount < chongwufenleiOptions.length;chongwufenleiCount++){
							if(chongwufenleiOptions[chongwufenleiCount].getAttribute('value') == res.data.chongwufenlei){
								chongwufenleiOptions[chongwufenleiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xingbie != null && res.data.xingbie != ''){

						var xingbieOptions = document.getElementsByClassName("xingbieOption");
						for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
							if(xingbieOptions[xingbieCount].getAttribute('value') == res.data.xingbie){
								xingbieOptions[xingbieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.shifoujueyu != null && res.data.shifoujueyu != ''){

						var shifoujueyuOptions = document.getElementsByClassName("shifoujueyuOption");
						for(var shifoujueyuCount = 0; shifoujueyuCount < shifoujueyuOptions.length;shifoujueyuCount++){
							if(shifoujueyuOptions[shifoujueyuCount].getAttribute('value') == res.data.shifoujueyu){
								shifoujueyuOptions[shifoujueyuCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.nianling != null && res.data.nianling != ''){

						$("#nianling").val(res.data.nianling);
						$("#nianling").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.jiyangriqi != null && res.data.jiyangriqi != ''){

						$("#jiyangriqi-input").val(res.data.jiyangriqi);
						$('#jiyangriqiFileName').val(res.data.jiyangriqi)
					}
					if(res.data != null && res.data != '' && res.data.jiyangyuanyin != null && res.data.jiyangyuanyin != ''){

						$("#jiyangyuanyin").val(res.data.jiyangyuanyin);
						$("#jiyangyuanyin").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yonghuzhanghao != null && res.data.yonghuzhanghao != ''){

						$("#yonghuzhanghao").val(res.data.yonghuzhanghao);
						$("#yonghuzhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.yonghuxingming != null && res.data.yonghuxingming != ''){

						$("#yonghuxingming").val(res.data.yonghuxingming);
						$("#yonghuxingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.ispay != null && res.data.ispay != ''){

						$("#ispay").val(res.data.ispay);
						$("#ispay").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.clicknum != null && res.data.clicknum != ''){

					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
