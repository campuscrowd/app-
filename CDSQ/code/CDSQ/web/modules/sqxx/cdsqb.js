/**
 * 
 */
define(function(require, exports, module) {

	var utils = require('utils');
	var bs = require('./sqxxBS');

	var viewConfig = {
		initialize: function() {
            this.initView();
			var view = utils.loadCompiledPage('cdsqb');
			$("#cdsqtab").html(view.render());
			this.initView();
			 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({  symbol: "点", min: 0,max:24,symbolPosition: 'right',  spinButtons: false });
	         $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({  symbol: "点", min: 0,max:24,symbolPosition: 'right',  spinButtons: false });
				
		},

		initView: function() {
            this._initForm();

        },
        _initForm: function() {
        	var mode = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_CDSQB_QUERY', 'form');
            $("#emapForm").emapForm({
                data: mode,
                model: 'h',
                root : contextPath,
               });
//           $("[data-name='HDSJ']").change(function(){
//        	   if($("[data-name='HDSJ']").text()==="请选择...");
//        	   else
//        	   if( $("[data-name='HDSJ']").text().length<10){
//            		if($("#endTimeTest001").size()==0)
//            		$("[data-name='HDSJ']").parent().parent().parent().append('<div class="bh-form-group jqx-validator-error-info bh-pv-4 bh-col-md-6" id="endTimeTest001" style="display: block;">请选择结束时间</div>');
//                    
//            	}
//            	else
//            		{
//            		if($("#endTimeTest001").size()!=0){
//            			$("#endTimeTest001").remove();
//            		}
//            		}
//            });
           
            var sqsj = pageMeta.params.time;
            var dictData = WIS_EMAP_SERV.getData(bs.api.pageModel, 'T_CDSQ_DW_QUERY', {DWDM:pageMeta.params.SQDWDM});
            $("#emapForm").emapForm("setValue", {SQSJ:sqsj,ZRR:pageMeta.params.XM,LXFS:pageMeta.params.SJH,SQDW:pageMeta.params.SQDWDM,SQDW_DISPLAY:dictData.DWBZMC});
			 $("#emapForm").find("[data-name=LXFS]").after("<span style='color:red'>（为方便我们及时联系您，请保证手机号的准确性）</span>");
           
           $("#emapForm").find("[data-name=HDDD]").after("<div id=\"DTYTGSQ\"><div>");
           
         $("#emapForm").find("[data-name=HDDD]").change(function(){
               	var HDDD_val = $("#emapForm").find("[data-name=HDDD]").val();
               	var HDRQ_val = $("#emapForm").find("[data-name=HDRQ]").val();
               	if(HDRQ_val!=""){
               		var number =WIS_EMAP_SERV.getData(bs.api.pageModel, 'hqdtytgsp', {getNumber:JSON.stringify({HDDD:HDDD_val,HDRQ:HDRQ_val})}).SQSL;
                   	
              		 $("#DTYTGSQ").html("<span style='color:red'>该场地活动当天已申请的数量为：<a id=\"YTGSP_detail\" href=\"javascript:void(0)\" data-action=\"YTGSP_detail\" data-x-hdrq=\""+HDRQ_val+"\" data-x-hddd=\""+HDDD_val+"\">"+number+"</span>");

               	} else {
               	 $("#DTYTGSQ").html("<span></span>");
               	}
               
               });
         $("#emapForm").find("[data-name=HDRQ]").change(function(){
            	var HDDD_val = $("#emapForm").find("[data-name=HDDD]").val();
            	var HDRQ_val = $("#emapForm").find("[data-name=HDRQ]").val();
            	if(HDDD_val!=""){
            		var number =WIS_EMAP_SERV.getData(bs.api.pageModel, 'hqdtytgsp', {getNumber:JSON.stringify({HDDD:HDDD_val,HDRQ:HDRQ_val})}).SQSL;
                	
           		 $("#DTYTGSQ").html("<span style='color:red'>该场地活动当天已申请的数量为：<a id=\"YTGSP_detail\" href=\"javascript:void(0)\" data-action=\"YTGSP_detail\" data-x-hdrq=\""+HDRQ_val+"\" data-x-hddd=\""+HDDD_val+"\">"+number+"</span>");

            	} else {
            		 $("#DTYTGSQ").html("<span></span>");

            	}
            	
            });
       //     $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").find("input").change(){
        //    	var value =  $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").find("input").val();
        //    }
      //      $("#emapForm").find("[data-name=HDSJ]").change(function(){
       //     	var value =$("#emapForm").find("[data-name=HDRQ]").find('input[type=textarea]').val();

       //         	$("#emapForm").emapForm("setValue", {"HDSJ":value});
                	
//
       //    });
         
         $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").on('valueChanged',function(event){
        	 var value1=parseInt(event.args.value);
        	 var value2 =  parseInt($("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val());
        	 if(value1<0){
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(0);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 24 }); 
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
        	 } else if (value1>=24){
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(23);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(24);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 23 }); 

        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 23 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });

        	 } else if(value1<value2){
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value2-1) }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value1+1) }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
        	 } else{
        		 
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value1) }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value1+1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value1+1) }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });

        	 } 
         });
         $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").change(function(event){
        	 var value1=parseInt($("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val());
        	 var value2 =  parseInt(event.args.value);
        	 if(value2<0){
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(0);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 1 }); 
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 1 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
        	 } else if (value2>24){
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(24);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 23 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 23 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
        	 }  else if(value1<value2){
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value2-1) });
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value1+1) }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
        	 } else{
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value2-1);
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value2-1) }); 
        		 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value2) }); 
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
            	 $("#emapForm").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
        	 } 

         });

        

         this.eventMap = {
                 '[data-action=save]': this.save,
                 '[data-action=detailYTGSPRow]':this.detailYTGSPRow,
                 '[data-action=YTGSP_detail]': this.detailYTGSP

             };
        },
        save: function(){
        	if( $("#emapForm").emapValidate('validate') ){
        		var self = this;
        		var saveSQXX = $("#emapForm").emapForm("getValue");
        		//var saveStatus = JSON.stringify({DQZT:1,SFTH:2,SFBL:2});
        		var HDSJ = saveSQXX.HDSJ;
        		var HDKSSJ=parseInt(HDSJ.split(',')[0]);
        		var HDJSSJ=parseInt(HDSJ.split(',')[1]);
        		if(HDKSSJ>9){
        			HDKSSJ=HDKSSJ+":00";
        		} else {
        			HDKSSJ="0"+HDKSSJ+":00";
        		}
        		if(HDJSSJ>9){
        			HDJSSJ=HDJSSJ+":00";
        		} else {
        			HDJSSJ="0"+HDJSSJ+":00";
        		}
        		saveSQXX.HDSJ=HDKSSJ+"-"+HDJSSJ;
        		var saveStatus = {};
        		saveStatus.SFTH = 2;
        		saveStatus.SFBL = 2;
        		if(+saveSQXX.HDLX===0)
        			saveStatus.DQZT = 2;
        		if(+saveSQXX.HDLX===1)
        			saveStatus.DQZT = 3;
        		if(+saveSQXX.HDLX===2)
        			saveStatus.DQZT = 4;
        	    saveStatus = JSON.stringify(saveStatus);
        		saveSQXX=JSON.stringify(saveSQXX);
        		bs.add(saveSQXX,saveStatus).done(function(data){
        			$.bhTip({
					    content: '提交申请信息成功！',
					    state: 'success',
					    iconClass: 'icon-checkcircle'
					});
    				$("#emapForm").emapForm("destroy");
    				self.initView();
    				
    				$('#jqxTabs').jqxTabs('select', 1); 
    				$('#emapdatatable').emapdatatable('reload');
    				});
        	}
        },
        detailYTGSP:function(e){
        	var HDDD=$(e.target).attr("data-x-hddd");
        	var HDRQ=$(e.target).attr("data-x-hdrq");
        	//var dataYTGSP=WIS_EMAP_SERV.getData(bs.api.pageModel, 'hqdtytgspxx', {getSPXX:JSON.stringify({HDDD:HDDD})});
        	 var tableOptions = {
                     pagePath: bs.api.pageModel,
                     action: 'hqdtytgspxx',
                     params: {getSPXX:JSON.stringify({HDDD:HDDD,HDRQ:HDRQ})},
                     customColumns: [{
                         colIndex: '0',
                         type: 'tpl',
                         column: {
                             text: '操作',
                             align: 'center',
                             cellsAlign: 'center',
                             width: 100,
                             cellsRenderer: function(row, column, value, rowData) {
     	                        return  '<a href="javascript:void(0)" data-action="detailYTGSPRow" data-x-sqbh=' + rowData.SQBH + '>' + '详情' + '</a>';
                           
                             }
                         }
                     }]
                 };
        	 BH_UTILS.bhWindow("<div id=\"JTYTGSP\"></div>", "该场地今天已申请情况", 
                     [
                         {
                             text:'确定',className:'bh-btn-success',
                             callback:function(){
                             }
                         },
                         {
                             text:'关闭',
                             className:'bh-btn-default',
                             callback:function(){
                                 //需要定义一个空函数，以关闭弹窗
                             }
                         }
                     ],
                     {
                         height: 490,
                         width:1000
                     }
                 );
                 $('#JTYTGSP').emapdatatable(tableOptions);
                
//                 Array.prototype.forEach.call($("[data-action=detailYTGSPRow]"),function(item){
//            		 $(item).bind("click",this.detailYTGSPRow);
//            	 });
                
                
        },
        detailYTGSPRow:function(e){
        	var sqbh = $(e.target).attr("data-x-sqbh");
        	
        	BH_UTILS.bhWindow("<div id=\"JTYTGSP_SQXQ\"></div>", "申请详情", 
                    [
                        {
                            text:'确定',className:'bh-btn-success',
                            callback:function(){
                            }
                        },
                        {
                            text:'关闭',
                            className:'bh-btn-default',
                            callback:function(){
                                //需要定义一个空函数，以关闭弹窗
                            }
                        }
                    ],
                    {
                height: 600,
                width:800
            }
                );
        	var mode1 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_CDSQB_QUERY', 'form');
        	var data = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcksqxx', {SQBH:sqbh}).rows[0];
        	$("#JTYTGSP_SQXQ").emapForm({
            	data: mode1,
                model: 'h',
                cols:2,
                readonly:true
            });
            $("#JTYTGSP_SQXQ").emapForm("setValue",data);
        },
		
	};

	return viewConfig;
});