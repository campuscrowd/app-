define(function(require, exports, module) {

	var utils = require('utils');
	var bs = require('./xyswhdcdpzBS');
	var xyswhdcdpzAdd = require('./xyswhdcdpzSave');

	var viewConfig = {
		initialize: function() {
			var view = utils.loadCompiledPage('xyswhdcdpz');
            this.$rootElement.html(view.render({}), true);
            this.pushSubView([xyswhdcdpzSave]);
            this.initView();

			this.eventMap = {
				"[data-action=add]": this.actionAdd,
//				"[data-action=edit]": this.actionEdit,
//				"[data-action=detail]": this.actionDetail,
				"[data-action=delete]": this.actionDelete,
				"[data-action=open]": this.actionOpen,
				"[data-action=close]": this.actionClose,
			};
		},

		initView: function() {
            this._initAdvanceQuery();
            this._initTable();
        },

        actionAdd: function(){
        	var xyswhdcdpzNewTpl = utils.loadCompiledPage('xyswhdcdpzAdd');
        	$.bhPaperPileDialog.show({
        		content: xyswhdcdpzNewTpl.render({}),
        		title: "新建",
        		ready: function($header, $body, $footer){
        			xyswhdcdpzAdd.initialize();
            	}
            });
        },
        
        actionDelete: function(){
    		var row = $("#emapdatatable").emapdatatable("checkedRecords");
    		if(row.length > 0){
    			var params = row.map(function(el){
    				return {WID:el.WID};	//模型主键
    			});
    			bs.del(params).done(function(data){
    				$.bhTip({
						    content: '场地信息删除成功！',
						    state: 'success',
						    iconClass: 'icon-checkcircle'
						});
    				$('#emapdatatable').emapdatatable('reload');
    			});
    		}
        },
        actionOpen: function(e){
        	var id = $(e.target).attr("data-x-wid");
			bs.open(id).done(function(data){
				$.bhTip({
					    content: '场地开放成功！',
					    state: 'success',
					    iconClass: 'icon-checkcircle'
					});
				$('#emapdatatable').emapdatatable('reload');
			});
        },
        actionClose: function(e){
        	var id = $(e.target).attr("data-x-wid");
    			bs.close(id).done(function(data){
    				$.bhTip({
						    content: '场地关闭成功！',
						    state: 'success',
						    iconClass: 'icon-checkcircle'
						});
    				$('#emapdatatable').emapdatatable('reload');
    			});

        },
        
		_initAdvanceQuery: function() {
            var searchData = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_CDXX_QUERY', "search");
            var $query = $('#emapAdvancedQuery').emapAdvancedQuery({
                data: searchData,
                contextPath : contextPath,
                schema: true
            });
            $query.on('search', this._searchCallback);
        },

        _searchCallback: function(e, data, opts) {
            $('#emapdatatable').emapdatatable('reload', {
                querySetting: data
            });
        },

        _initTable: function() {
            var tableOptions = {
                pagePath: bs.api.pageModel,
                action: 'T_CDSQ_CDXX_QUERY',
                customColumns: [{
                    colIndex: '0',
                    type: 'checkbox'
                }, {
                    colIndex: '4',
                    type: 'tpl',
                    column: {
                        text: '操作',
                        align: 'center',
                        cellsAlign: 'center',
                        cellsRenderer: function(row, column, value, rowData) {
                            if(rowData.SFKF=='1'){
                            	return '<a class="bh-btn bh-btn-success bh-disabled waves-effect" href="javascript:void(0)" data-action="open" data-x-wid=' + rowData.WID + '>' + '开放' + '</a>'+ 
                                ' | <a class="bh-btn bh-btn-danger  waves-effect" href="javascript:void(0)" data-action="close" data-x-wid=' + rowData.WID + '>' + '关闭' + '</a>';
                            } else {
                            	return '<a class="bh-btn bh-btn-success waves-effect" href="javascript:void(0)" data-action="open" data-x-wid=' + rowData.WID + '>' + '开放' + '</a>'+ 
                                ' | <a class="bh-btn bh-btn-danger bh-disabled  waves-effect" href="javascript:void(0)" data-action="close" data-x-wid=' + rowData.WID + '>' + '关闭' + '</a>';
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