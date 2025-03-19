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
							<h3 class="block-title">编辑课表信息</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>课表信息管理</span></li>
								<li class="breadcrumb-item active"><span>编辑课表信息</span></li>
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
							<h3 class="widget-title">课表信息信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>班级</label>
										<select id="banjiSelect" name="banji" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>学期</label>
										<select id="xueqiSelect" name="xueqi" class="form-control">
												<option value=""></option>
												<option class="xueqiOption" value="上学期">
													上学期
												</option>
												<option class="xueqiOption" value="下学期">
													下学期
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>星期</label>
										<select id="xingqiSelect" name="xingqi" class="form-control">
												<option value=""></option>
												<option class="xingqiOption" value="星期一">
													星期一
												</option>
												<option class="xingqiOption" value="星期二">
													星期二
												</option>
												<option class="xingqiOption" value="星期三">
													星期三
												</option>
												<option class="xingqiOption" value="星期四">
													星期四
												</option>
												<option class="xingqiOption" value="星期五">
													星期五
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第一节</label>
										<select id="diyijieSelect" name="diyijie" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第二节</label>
										<select id="dierjieSelect" name="dierjie" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第三节</label>
										<select id="disanjieSelect" name="disanjie" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第四节</label>
										<select id="disijieSelect" name="disijie" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第五节</label>
										<select id="diwujieSelect" name="diwujie" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第六节</label>
										<select id="diliujieSelect" name="diliujie" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>第七节</label>
										<select id="diqijieSelect" name="diqijie" class="form-control">
										</select>	
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
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "kebiaoxinxi";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var banjiOptions = [];
		var diyijieOptions = [];
		var dierjieOptions = [];
		var disanjieOptions = [];
		var disijieOptions = [];
		var diwujieOptions = [];
		var diliujieOptions = [];
		var diqijieOptions = [];

				function banjiSelect(){
					http("option/banji/banji","GET",{},(res)=>{
						if(res.code == 0){
							banjiOptions = res.data;
							var nullOption = document.createElement('option');
							var banjiSelect = document.getElementById('banjiSelect');
							banjiSelect.appendChild(nullOption);
							for(var i=0;i<banjiOptions.length;i++){
								var banjiOption = document.createElement('option');
								banjiOption.setAttribute('name','banjiOption');
								banjiOption.setAttribute('value',banjiOptions[i]);
								banjiOption.innerHTML = banjiOptions[i];									
								if(ruleForm.banji == banjiOptions[i]){
									banjiOption.setAttribute('selected','selected');
								}
								banjiSelect.appendChild(banjiOption);
							}
						}
					});
				}	
				function diyijieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							diyijieOptions = res.data;
							var nullOption = document.createElement('option');
							var diyijieSelect = document.getElementById('diyijieSelect');
							diyijieSelect.appendChild(nullOption);
							for(var i=0;i<diyijieOptions.length;i++){
								var diyijieOption = document.createElement('option');
								diyijieOption.setAttribute('name','diyijieOption');
								diyijieOption.setAttribute('value',diyijieOptions[i]);
								diyijieOption.innerHTML = diyijieOptions[i];									
								if(ruleForm.diyijie == diyijieOptions[i]){
									diyijieOption.setAttribute('selected','selected');
								}
								diyijieSelect.appendChild(diyijieOption);
							}
						}
					});
				}	
				function dierjieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							dierjieOptions = res.data;
							var nullOption = document.createElement('option');
							var dierjieSelect = document.getElementById('dierjieSelect');
							dierjieSelect.appendChild(nullOption);
							for(var i=0;i<dierjieOptions.length;i++){
								var dierjieOption = document.createElement('option');
								dierjieOption.setAttribute('name','dierjieOption');
								dierjieOption.setAttribute('value',dierjieOptions[i]);
								dierjieOption.innerHTML = dierjieOptions[i];									
								if(ruleForm.dierjie == dierjieOptions[i]){
									dierjieOption.setAttribute('selected','selected');
								}
								dierjieSelect.appendChild(dierjieOption);
							}
						}
					});
				}	
				function disanjieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							disanjieOptions = res.data;
							var nullOption = document.createElement('option');
							var disanjieSelect = document.getElementById('disanjieSelect');
							disanjieSelect.appendChild(nullOption);
							for(var i=0;i<disanjieOptions.length;i++){
								var disanjieOption = document.createElement('option');
								disanjieOption.setAttribute('name','disanjieOption');
								disanjieOption.setAttribute('value',disanjieOptions[i]);
								disanjieOption.innerHTML = disanjieOptions[i];									
								if(ruleForm.disanjie == disanjieOptions[i]){
									disanjieOption.setAttribute('selected','selected');
								}
								disanjieSelect.appendChild(disanjieOption);
							}
						}
					});
				}	
				function disijieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							disijieOptions = res.data;
							var nullOption = document.createElement('option');
							var disijieSelect = document.getElementById('disijieSelect');
							disijieSelect.appendChild(nullOption);
							for(var i=0;i<disijieOptions.length;i++){
								var disijieOption = document.createElement('option');
								disijieOption.setAttribute('name','disijieOption');
								disijieOption.setAttribute('value',disijieOptions[i]);
								disijieOption.innerHTML = disijieOptions[i];									
								if(ruleForm.disijie == disijieOptions[i]){
									disijieOption.setAttribute('selected','selected');
								}
								disijieSelect.appendChild(disijieOption);
							}
						}
					});
				}	
				function diwujieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							diwujieOptions = res.data;
							var nullOption = document.createElement('option');
							var diwujieSelect = document.getElementById('diwujieSelect');
							diwujieSelect.appendChild(nullOption);
							for(var i=0;i<diwujieOptions.length;i++){
								var diwujieOption = document.createElement('option');
								diwujieOption.setAttribute('name','diwujieOption');
								diwujieOption.setAttribute('value',diwujieOptions[i]);
								diwujieOption.innerHTML = diwujieOptions[i];									
								if(ruleForm.diwujie == diwujieOptions[i]){
									diwujieOption.setAttribute('selected','selected');
								}
								diwujieSelect.appendChild(diwujieOption);
							}
						}
					});
				}	
				function diliujieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							diliujieOptions = res.data;
							var nullOption = document.createElement('option');
							var diliujieSelect = document.getElementById('diliujieSelect');
							diliujieSelect.appendChild(nullOption);
							for(var i=0;i<diliujieOptions.length;i++){
								var diliujieOption = document.createElement('option');
								diliujieOption.setAttribute('name','diliujieOption');
								diliujieOption.setAttribute('value',diliujieOptions[i]);
								diliujieOption.innerHTML = diliujieOptions[i];									
								if(ruleForm.diliujie == diliujieOptions[i]){
									diliujieOption.setAttribute('selected','selected');
								}
								diliujieSelect.appendChild(diliujieOption);
							}
						}
					});
				}	
				function diqijieSelect(){
					http("option/kechengmingcheng/kechengmingcheng","GET",{},(res)=>{
						if(res.code == 0){
							diqijieOptions = res.data;
							var nullOption = document.createElement('option');
							var diqijieSelect = document.getElementById('diqijieSelect');
							diqijieSelect.appendChild(nullOption);
							for(var i=0;i<diqijieOptions.length;i++){
								var diqijieOption = document.createElement('option');
								diqijieOption.setAttribute('name','diqijieOption');
								diqijieOption.setAttribute('value',diqijieOptions[i]);
								diqijieOption.innerHTML = diqijieOptions[i];									
								if(ruleForm.diqijie == diqijieOptions[i]){
									diqijieOption.setAttribute('selected','selected');
								}
								diqijieSelect.appendChild(diqijieOption);
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
		                url: baseUrl + "kebiaoxinxi/info/" + id,
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
		}  
		//取消 
		function cancel() {
			window.location.href="list.jsp";
		}

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
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
				httpJson("kebiaoxinxi/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
						if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
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
				    xueqi: {
					},
				    xingqi: {
					},
				    diyijie: {
					},
				    dierjie: {
					},
				    disanjie: {
					},
				    disijie: {
					},
				    diwujie: {
					},
				    diliujie: {
					},
				    diqijie: {
					},
				},
				messages: {
					xueqi: {
					},
					xingqi: {
					},
					diyijie: {
					},
					dierjie: {
					},
					disanjie: {
					},
					disijie: {
					},
					diwujie: {
					},
					diliujie: {
					},
					diqijie: {
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
				http("kebiaoxinxi/info/" + id,"GET",{},(res)=>{
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
												banjiSelect();
						diyijieSelect();
						dierjieSelect();
						disanjieSelect();
						disijieSelect();
						diwujieSelect();
						diliujieSelect();
						diqijieSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				banjiSelect();	
				diyijieSelect();	
				dierjieSelect();	
				disanjieSelect();	
				disijieSelect();	
				diwujieSelect();	
				diliujieSelect();	
				diqijieSelect();	

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
			http("kebiaoxinxi"+colName,"GET",{
				tableName: "kebiaoxinxi",
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
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			var banjiOptions = document.getElementsByClassName("banjiOption");
			for(var banjiCount = 0; banjiCount < banjiOptions.length;banjiCount++){
				if(banjiOptions[banjiCount].getAttribute('value') == ruleForm.banji){
					banjiOptions[banjiCount].setAttribute('selected','selected');
				}
			}
			var xueqiOptions = document.getElementsByClassName("xueqiOption");
			for(var xueqiCount = 0; xueqiCount < xueqiOptions.length;xueqiCount++){
				if(xueqiOptions[xueqiCount].getAttribute('value') == ruleForm.xueqi){
					xueqiOptions[xueqiCount].setAttribute('selected','selected');
				}
			}
			var xingqiOptions = document.getElementsByClassName("xingqiOption");
			for(var xingqiCount = 0; xingqiCount < xingqiOptions.length;xingqiCount++){
				if(xingqiOptions[xingqiCount].getAttribute('value') == ruleForm.xingqi){
					xingqiOptions[xingqiCount].setAttribute('selected','selected');
				}
			}
			var diyijieOptions = document.getElementsByClassName("diyijieOption");
			for(var diyijieCount = 0; diyijieCount < diyijieOptions.length;diyijieCount++){
				if(diyijieOptions[diyijieCount].getAttribute('value') == ruleForm.diyijie){
					diyijieOptions[diyijieCount].setAttribute('selected','selected');
				}
			}
			var dierjieOptions = document.getElementsByClassName("dierjieOption");
			for(var dierjieCount = 0; dierjieCount < dierjieOptions.length;dierjieCount++){
				if(dierjieOptions[dierjieCount].getAttribute('value') == ruleForm.dierjie){
					dierjieOptions[dierjieCount].setAttribute('selected','selected');
				}
			}
			var disanjieOptions = document.getElementsByClassName("disanjieOption");
			for(var disanjieCount = 0; disanjieCount < disanjieOptions.length;disanjieCount++){
				if(disanjieOptions[disanjieCount].getAttribute('value') == ruleForm.disanjie){
					disanjieOptions[disanjieCount].setAttribute('selected','selected');
				}
			}
			var disijieOptions = document.getElementsByClassName("disijieOption");
			for(var disijieCount = 0; disijieCount < disijieOptions.length;disijieCount++){
				if(disijieOptions[disijieCount].getAttribute('value') == ruleForm.disijie){
					disijieOptions[disijieCount].setAttribute('selected','selected');
				}
			}
			var diwujieOptions = document.getElementsByClassName("diwujieOption");
			for(var diwujieCount = 0; diwujieCount < diwujieOptions.length;diwujieCount++){
				if(diwujieOptions[diwujieCount].getAttribute('value') == ruleForm.diwujie){
					diwujieOptions[diwujieCount].setAttribute('selected','selected');
				}
			}
			var diliujieOptions = document.getElementsByClassName("diliujieOption");
			for(var diliujieCount = 0; diliujieCount < diliujieOptions.length;diliujieCount++){
				if(diliujieOptions[diliujieCount].getAttribute('value') == ruleForm.diliujie){
					diliujieOptions[diliujieCount].setAttribute('selected','selected');
				}
			}
			var diqijieOptions = document.getElementsByClassName("diqijieOption");
			for(var diqijieCount = 0; diqijieCount < diqijieOptions.length;diqijieCount++){
				if(diqijieOptions[diqijieCount].getAttribute('value') == ruleForm.diqijie){
					diqijieOptions[diqijieCount].setAttribute('selected','selected');
				}
			}
		}		
		//图片显示
		function showImg(){
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
					if(res.data != null && res.data != '' && res.data.banji != null && res.data.banji != ''){

					var banjiOptions = document.getElementsByClassName("banjiOption");
						for(var banjiCount = 0; banjiCount < banjiOptions.length;banjiCount++){
							if(banjiOptions[banjiCount].getAttribute('value') == res.data.banji){
								banjiOptions[banjiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xueqi != null && res.data.xueqi != ''){

					var xueqiOptions = document.getElementsByClassName("xueqiOption");
						for(var xueqiCount = 0; xueqiCount < xueqiOptions.length;xueqiCount++){
							if(xueqiOptions[xueqiCount].getAttribute('value') == res.data.xueqi){
								xueqiOptions[xueqiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xingqi != null && res.data.xingqi != ''){

					var xingqiOptions = document.getElementsByClassName("xingqiOption");
						for(var xingqiCount = 0; xingqiCount < xingqiOptions.length;xingqiCount++){
							if(xingqiOptions[xingqiCount].getAttribute('value') == res.data.xingqi){
								xingqiOptions[xingqiCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.diyijie != null && res.data.diyijie != ''){

					var diyijieOptions = document.getElementsByClassName("diyijieOption");
						for(var diyijieCount = 0; diyijieCount < diyijieOptions.length;diyijieCount++){
							if(diyijieOptions[diyijieCount].getAttribute('value') == res.data.diyijie){
								diyijieOptions[diyijieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.dierjie != null && res.data.dierjie != ''){

					var dierjieOptions = document.getElementsByClassName("dierjieOption");
						for(var dierjieCount = 0; dierjieCount < dierjieOptions.length;dierjieCount++){
							if(dierjieOptions[dierjieCount].getAttribute('value') == res.data.dierjie){
								dierjieOptions[dierjieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.disanjie != null && res.data.disanjie != ''){

					var disanjieOptions = document.getElementsByClassName("disanjieOption");
						for(var disanjieCount = 0; disanjieCount < disanjieOptions.length;disanjieCount++){
							if(disanjieOptions[disanjieCount].getAttribute('value') == res.data.disanjie){
								disanjieOptions[disanjieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.disijie != null && res.data.disijie != ''){

					var disijieOptions = document.getElementsByClassName("disijieOption");
						for(var disijieCount = 0; disijieCount < disijieOptions.length;disijieCount++){
							if(disijieOptions[disijieCount].getAttribute('value') == res.data.disijie){
								disijieOptions[disijieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.diwujie != null && res.data.diwujie != ''){

					var diwujieOptions = document.getElementsByClassName("diwujieOption");
						for(var diwujieCount = 0; diwujieCount < diwujieOptions.length;diwujieCount++){
							if(diwujieOptions[diwujieCount].getAttribute('value') == res.data.diwujie){
								diwujieOptions[diwujieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.diliujie != null && res.data.diliujie != ''){

					var diliujieOptions = document.getElementsByClassName("diliujieOption");
						for(var diliujieCount = 0; diliujieCount < diliujieOptions.length;diliujieCount++){
							if(diliujieOptions[diliujieCount].getAttribute('value') == res.data.diliujie){
								diliujieOptions[diliujieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.diqijie != null && res.data.diqijie != ''){

					var diqijieOptions = document.getElementsByClassName("diqijieOption");
						for(var diqijieCount = 0; diqijieCount < diqijieOptions.length;diqijieCount++){
							if(diqijieOptions[diqijieCount].getAttribute('value') == res.data.diqijie){
								diqijieOptions[diqijieCount].setAttribute('selected','selected');
							}
						}
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
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
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
