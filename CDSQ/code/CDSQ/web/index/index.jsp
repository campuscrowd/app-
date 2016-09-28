<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tags/emap.tld" prefix="e" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <!-- all.css 转测时开放（执行gulp buildapp 命令可以生成该文件）-->
    <!-- <link rel="stylesheet" href="./dest/all.css"/> -->

    <!-- commomlib include jquery.js jquery.nicescroll.js jquery.fileupload.js director.min.js hogan.min.js lodash.min.js globalize.js-->
    <script src="http://res.wisedu.com/fe_components/commonlib.js"></script>
    <!-- 此处可以放置第三方库-->
    <script src="http://res.wisedu.com/fe_components/appcore-min.js"></script>

    <!-- package.js 转测时开放（执行gulp buildapp 命令可以生成该文件）-->
    <!-- <script type="text/javascript" src="./dest/package.js"></script> -->
    <script src="../public/javascript/dateUtils.js"></script>
    <!-- 全局变量pageMeta-->
    <script type="text/javascript">
        var pageMeta = <e:page/>;
        var contextPath = "<%= request.getContextPath() %>";
         $.ajax({
				url : contextPath + "/sys/"+pageMeta.models[0].appName+"/*default/"+pageMeta.models[0].url,
				data : {
					ZGH : pageMeta.params.username,
				},
				type : 'post',
				dataType : 'json',
				async: true,
				success : function(ret) {
					pageMeta.params.ZGH=ret.datas.T_CDSQ_YHXX_QUERY.ZGH;
					pageMeta.params.XM=ret.datas.T_CDSQ_YHXX_QUERY.XM;
					pageMeta.params.SQDWDM=ret.datas.T_CDSQ_YHXX_QUERY.SZDWD;
					pageMeta.params.SQDW=ret.datas.T_CDSQ_YHXX_QUERY.SZDWD_DISPLAY;
					pageMeta.params.SJH=ret.datas.T_CDSQ_YHXX_QUERY.SJH;
				},
				error : function(resp) {
					if (resp.status == 401 || resp.status == 403)
						console.log('获取用户信息失败');
		pageMeta.params.ZGH="职工号"
        pageMeta.params.XM="姓名";
        pageMeta.params.SQDWDM="单位代码";
        pageMeta.params.SQDW="单位名称";
        pageMeta.params.SJH="手机号";
				}
			});
    </script>
</head>

<body>
</body>

</html>
