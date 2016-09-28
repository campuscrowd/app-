define(function(require, exports, module) {

	var utils = require('utils');
	var bs = require('./bwcspBS');
	var bwcspSave = require('./bwcspSave');
	var bwcspView = require('./bwcspView');

	var viewConfig = {
		initialize: function() {
			var view = utils.loadCompiledPage('bwcsp');
            this.$rootElement.html(view.render({}), true);
            this.pushSubView([bwcspSave]);
            this.initView();

			this.eventMap = {
				"[data-action=edit]": this.actionEdit,
				"[data-action=detail]": this.actionDetail,

			};
		},

		initView: function() {
            this._initAdvanceQuery();
            this._initTable();
        },


	 	   actionEdit: function(e){
	        	var sqbh = $(e.target).attr("data-x-sqbh");
	        	var bwcspEditTpl = utils.loadCompiledPage('bwcspSave');
	        	var data = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcksqxx', {SQBH:sqbh});
	        	
	        	$.bhPaperPileDialog.show({
	        		content: bwcspEditTpl.render({}),
	        		title: "审批",
	        		ready: function($header, $body, $footer){
	        			var data1 = data.rows[0];
	        			bwcspSave.initialize(data1);
	        			
	        	
	        			
	            	}
	            });
	        },
	        
	        actionDetail: function(e){
	        	var sqbh = $(e.target).attr("data-x-sqbh");
	        	var bwcspViewTpl = utils.loadCompiledPage('bwcspView');

	       	
	        	$.bhPaperPileDialog.show({
	        		content: bwcspViewTpl.render({}),
	        		title: "查看",
	        		ready: function($header, $body, $footer){
	        			bwcspView.initialize(sqbh);
	            	}
	            });
	        },
        
  

		_initAdvanceQuery: function() {
            var searchData = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'bwccksqlb', "search");
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
                action: 'bwccksqlb',
                customColumns: [{
                    colIndex: '0',
                    type: 'checkbox'
                }, {
                    colIndex: '1',
                    type: 'tpl',
                    column: {
                        text: '操作',
                        align: 'center',
                        cellsAlign: 'center',
                        cellsRenderer: function(row, column, value, rowData) {
                        	if(rowData.DQZT==6)
	                            return '<a href="javascript:void(0)" data-action="detail" data-x-sqbh=' + rowData.SQBH+ '>' + '详情' + '</a>'+ 
	                            ' | <a href="javascript:void(0)" data-action="edit" data-x-sqbh=' + rowData.SQBH + '>' + '审核' + '</a>';
	                        	else
	                        		return  '<a href="javascript:void(0)" data-action="detail" data-x-sqbh=' + rowData.SQBH + '>' + '详情' + '</a>';
                      
                        }
                    }
                }]
            };
            $('#emapdatatable').emapdatatable(tableOptions);
        }
	};

	return viewConfig;
});