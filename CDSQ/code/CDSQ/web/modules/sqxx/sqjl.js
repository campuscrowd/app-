/**
 * 
 */
define(function(require, exports, module) {

	var utils = require('utils');
	var bs = require('./sqxxBS');
	var sqxxView = require('./sqxxView');
	var sqxxSave = require('./sqxxSave');

	var viewConfig = {
		initialize: function() {
           
			var view = utils.loadCompiledPage('sqjl');
			$("#sqjltab").html(view.render());	
			 this.initView();
			 this.eventMap = {

						"[data-action=edit]": this.actionEdit,
						"[data-action=detail]": this.actionDetail,
						 '[data-action=recommit]': sqxxSave.recommit,
 	                    '[data-action=detailYTGSPRowX]':sqxxSave.detailYTGSPRow,
 	                    '[data-action=YTGSP_detailX]': sqxxSave.detailYTGSP
					};
		},

		initView: function() {
            this._initAdvanceQuery();
            this._initTable();
        },
        
        actionEdit: function(e){
        	var sqbh = $(e.target).attr("data-x-sqbh");
        	var sqxxEditTpl = utils.loadCompiledPage('sqxxSave');
        	var data = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcksqxx', {SQBH:sqbh});
        	var dataZT = WIS_EMAP_SERV.getData(bs.api.pageModel,'T_CDSQ_SPZT_QUERY', {SQBH:sqbh});
        	$.bhPaperPileDialog.show({
        		content: sqxxEditTpl.render({}),
        		title: "修改",
        		ready: function($header, $body, $footer){
        			sqxxSave.initialize(dataZT);
        			data.rows[0].HDSJ=data.rows[0].HDSJ.split(":")[0]+","+data.rows[0].HDSJ.split("-")[1].split(":")[0];
        			$("#emapFormX").emapForm("setValue", data.rows[0]);
        			 $("#emapFormX").find("[data-name=LXFS]").after("<span style='color:red'>（为方便我们及时联系您，请保证手机号的准确性）</span>");
        			 setTimeout(function(){
           				$.bhPaperPileDialog.resetPageFooter(); //改变页面的页脚位置
                         $.bhPaperPileDialog.resetDialogFooter(); //改变弹框的页脚位置
           			},1000);
         			
             		
            	}
            });
        },
        
        actionDetail: function(e){
        	var sqbh = $(e.target).attr("data-x-sqbh");
        	var splbckViewTpl = utils.loadCompiledPage('sqxxView');
        	
        	$.bhPaperPileDialog.show({
        		content: splbckViewTpl.render({}),
        		title: "查看",
        		ready: function($header, $body, $footer){
        			sqxxView.initialize(sqbh);
            	}
            });
        },
        
        _initAdvanceQuery: function() {
			 var searchData = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'cksqlb', "search");
			 searchData.controls[1].xtype='text';
	            var $query = $('#emapAdvancedQuery').emapAdvancedQuery({
	                data: searchData,
	                contextPath : contextPath,
	                schema: true
	            });
	            $query.on('search', this._searchCallback);
       },

       _searchCallback: function(e, data, opts) {
    	   data=JSON.parse(data);
       	data.push({
       		builder:"include",
       		caption:"申请人工号",
       		linkOpt:"AND",
       		name:"SQRGH",
       		value:pageMeta.params.ZGH
       	});

       	for(var x in data){
       		if(data[x].name=="SQSJ"){
       			if(data[x].builder=="moreEqual"){
       				data[x].value+=" 00:00:00";
       			}
       			if(data[x].builder=="lessEqual"){
       				data[x].value+=" 24:00:00";
       			}
       		}
       	}
       	data=JSON.stringify(data);
           $('#emapdatatable').emapdatatable('reload', {
               querySetting: data
           });
       },
        _initTable: function() {
            var tableOptions = {
                pagePath: bs.api.pageModel,
                action: 'cksqlb',
                params: {SQRGH:pageMeta.params.ZGH},
                customColumns: [ {
                    colIndex: '0',
                    type: 'tpl',
                    column: {
                        text: '操作',
                        align: 'center',
                        cellsAlign: 'center',
                        cellsRenderer: function(row, column, value, rowData) {
                        	if(rowData.DQZT=='1'){
                            	return '<a href="javascript:void(0)" data-action="detail" data-x-sqbh=' + rowData.SQBH + '>' + '详情' + '</a>'+
                                ' | <a href="javascript:void(0)" data-action="edit" data-x-sqbh=' + rowData.SQBH + '>' + '修改' + '</a>';
                            } else {
                            	return '<a href="javascript:void(0)" data-action="detail" data-x-sqbh=' + rowData.SQBH + '>' + '详情' + '</a>';
                            }
                        }
                    }
                }]
            };
            $('#emapdatatable').emapdatatable(tableOptions);
        }
     
	};

	return viewConfig;
});