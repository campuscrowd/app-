define(function(require, exports, module) {

	var config = {

		/*
			业务线开发模式，转测时置false
		 */
		"DEBUG_MODE": true,

		/*
			资源服务器地址
		 */
		"RESOURCE_SERVER": "http://res.wisedu.com",

		/*
		 * 主题 blue purple
		 */
		"THEME": "purple",

		/*
			服务器端生成配置API(API_BASE_PATH目录下)
			@example "/config.do" ./mock/serverconfig.json
		 */
		"SERVER_CONFIG_API": "",

		/*
			APP默认路由
		 */
		'APP_ENTRY': "",

		/*
		 	APP标题
		 */
		"APP_TITLE": "校园室外活动场地申请",

		/*
			应用底部说明文本
		 */
		"FOOTER_TEXT": "",

		/*
			需要展示的模块
		 */
		"MODULES": [

		 {            title:"校园室外活动场地配置",            route:"xyswhdcdpz"         }         ,{            title:"申请信息",            route:"sqxx"         }         ,{            title:"所属院系学工处领导审批",            route:"ssyxxgcldsp"         }         ,{            title:"社团指导老师审批",            route:"stzdlssp"         }         ,{            title:"团委负责人审批",            route:"twfzrsp"         }         ,{            title:"保卫处审批",            route:"bwcsp"         }         ,{            title:"保卫处领导审批",            route:"bwcldsp"         },{            title:"安全负责人审批",            route:"aqfzrsp"         }         //placeHolder_module

		],

		/*
			头部配置
		 */
		"HEADER" : {
			"dropMenu" : [ {
				"text" : pageMeta.params.role,
				"active" : true
			} ],
			"logo" : "./public/images/logo.png",
			"icons" : [ "icon-apps" ],
			"userImage" : "./public/images/user.png",
			"userInfo" : {
				"image" : "./public/images/user.png",
				"info" : [ "工号:" + pageMeta.params.ZGH,
						"姓名:" + pageMeta.params.XM, 
						"学校：南京理工大学",
						"部门:" + pageMeta.params.SQDW,
						"电话:" + pageMeta.params.SJH ],
				"logoutHref" : "javascript:void(0);"
			}
		}
	};

	return config;

});