<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>商品增加</title>
<link rel="stylesheet" href="css/mr-01.css" type="text/css">
</head>

<body>
	<!-- 主体内容 -->
	<div id="mr-mainbody" class="container mr-mainbody">
		<div class="row">
			<div id="mr-content" class="mr-content col-xs-12">
				<div class="login-wrap" style="margin-bottom: 60px; margin-top: 50px">
					<div style="max-width: 540px; margin: 0 auto;">
						<a href="index.jsp" title="点击返回首页"><img src="images/51logo.png"></a>
					</div>
					<div class="login">
						<div class="page-header" style="pause: 0px;">
							<h1 class="login_h1">商品增加</h1>
						</div>
						<!-- 商品表单 -->
						<form id="member-registration" action="AddProductServlet"
							onsubmit="return regis();" method="post" class="form-horizontal">
							<fieldset>
								<div class="form-group">
									<div class="col-sm-4 control-label">
										<label id="username-lbl" for="pname" class="required">
											商品名 ：</label>
									</div>
									<div class="col-sm-8">
										<!-- 账户文本框 -->
										<input type="text" name="pname" id="pname" value=""
											class="required" size="38" required="required"
											aria-required="true"><span class="star">&nbsp;*</span>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-4 control-label">
										<label id="password-lbl" for="market_price" class="required">
											商品价格 ：</label>
									</div>
									<div class="col-sm-8">
										<input type="text" name="market_price" id="jform_username"
											value="" class="validate-username required" size="38"
											required="required" aria-required="true"><span
											class="star">&nbsp;*</span>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-4 control-label">
										<label id="password-lbl" for="categoryId" class="required">
											商品分类 ：</label>
									</div>
									<div class="col-sm-8">
										<select name="categoryId">
				                        <c:forEach var="category" items="${categoryList }">
					                    <option value="${category.cid }">${category.cname }</option>
				                        </c:forEach>
			                            </select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-4 control-label">
										<label class="required">
											商品描述 ：</label>
									</div>
									<div class="col-sm-8" style="clear: none;">
										
										<input type="text" name="pdesc" class="validate-email " id="pdesc"
											value="" size="38" aria-required="true">
									</div>
								</div>
								<div class="form-group">
									<div style="float: right; padding-right: 216px;">
										51商城<a href="" style="color: #0885B1;">《使用条款》</a>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-4 col-sm-8">
										<button type="submit" class="btn btn-primary login">确定添加</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //主体内容 -->
</body>
<script src="js/jquery.1.3.2.js" type="text/javascript"></script>
</html>