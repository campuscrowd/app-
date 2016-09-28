define(function(require, exports, module) {

    var bs = require('./sqxxBS');
    var utils2 = require('../../public/javascript/utils');
    var viewConfig = {
        initialize: function(dataZT) {
        	var mode = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_CDSQB_QUERY', 'form');
            dataZT=dataZT.rows[0];
            var sfth=dataZT.SFTH;
            if(sfth=='1'){
               $('#SPJL').html('<h5><strong>此申请重新提交审核，点击查看<a href="javascript:void(0)" id="history" data-action="history" data-x-sqbh=' + dataZT.SQBH + '>审批记录</a></strong></h5>');
               $('#SPJL').css("margin-bottom","10px");
            }
            $("#emapFormX").emapForm({
                data: mode,
                model: 'h',
                root : contextPath,
            });
            
           
            
            $("#history").bind('click',function(e){
           	   var sqbh = $(e.target).attr("data-x-sqbh");
                	var dataSet=WIS_EMAP_SERV.getData(bs.api.pageModel, 'cxsyspxx', {SQBH:sqbh,SQBH_1:sqbh,SQBH_2:sqbh,SQBH_3:sqbh,SQBH_4:sqbh,SQBH_5:sqbh,SQBH_6:sqbh });
             	   utils2.history(e,dataSet);
                });
            $("#emapFormX").find("[data-name=HDDD]").after("<div id=\"DTYTGSQX\"><div>");
            $("#emapFormX").find("[data-name=HDDD]").change(function(){
                  	var HDDD_val = $("#emapFormX").find("[data-name=HDDD]").val();
                  	var HDRQ_val = $("#emapFormX").find("[data-name=HDRQ]").val();
                  	if(HDRQ_val!=""){
                  		var number =WIS_EMAP_SERV.getData(bs.api.pageModel, 'hqdtytgsp', {getNumber:JSON.stringify({HDDD:HDDD_val,HDRQ:HDRQ_val})}).SQSL;
                      	
                 		 $("#DTYTGSQX").html("<span style='color:red'>该场地活动当天已申请的数量为：<a id=\"YTGSP_detailX\" href=\"javascript:void(0)\" data-action=\"YTGSP_detailX\" data-x-hdrq=\""+HDRQ_val+"\" data-x-hddd=\""+HDDD_val+"\">"+number+"</span>");

                  	} else {
                  	 $("#DTYTGSQX").html("<span></span>");
                  	}
                  
                  });
            $("#emapFormX").find("[data-name=HDRQ]").change(function(){
               	var HDDD_val = $("#emapFormX").find("[data-name=HDDD]").val();
               	var HDRQ_val = $("#emapFormX").find("[data-name=HDRQ]").val();
               	if(HDDD_val!=""){
               		var number =WIS_EMAP_SERV.getData(bs.api.pageModel, 'hqdtytgsp', {getNumber:JSON.stringify({HDDD:HDDD_val,HDRQ:HDRQ_val})}).SQSL;
                   	
              		 $("#DTYTGSQX").html("<span style='color:red'>该场地活动当天已申请的数量为：<a id=\"YTGSP_detailX\" href=\"javascript:void(0)\" data-action=\"YTGSP_detailX\" data-x-hdrq=\""+HDRQ_val+"\" data-x-hddd=\""+HDDD_val+"\">"+number+"</span>");

               	} else {
               		 $("#DTYTGSQX").html("<span></span>");

               	}
               	
               });
            $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").on('valueChanged',function(event){
           	 var value1=parseInt(event.args.value);
           	 var value2 =  parseInt($("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val());
           	 if(value1<0){
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(0);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 24 }); 
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
           	 } else if (value1>=24){
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(23);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(24);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 23 }); 

           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 23 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });

           	 }  else if(value1<value2){
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value2-1) }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value1+1) }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
           	 } else{
           		 
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value1) }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value1+1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value1+1) }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });

           	 } 
            });
            $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").change(function(event){
           	 var value1=parseInt($("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val());
           	 var value2 =  parseInt(event.args.value);
           	 if(value2<0){
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(0);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 1 }); 
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 1 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
           	 } else if (value2>24){
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(24);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: 23 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: 23 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
           	 }  else if(value1<value2){
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value2-1) });
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value1+1) }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
           	 } else{
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").val(value2-1);
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ min: 0 }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__1").jqxNumberInput({ max: (value2-1) }); 
           		 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ min: (value2) }); 
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").jqxNumberInput({ max: 24 });
               	 $("#emapFormX").find("[data-name=HDSJ]").find(".bh-num-input__2").val(value2);
           	 } 

            });
         
        },
        recommit: function(){
        	if( $("#emapFormX").emapValidate('validate') ){
        		$("#emapFormX").emapForm("saveUpload");
        		var saveSQXX = $("#emapFormX").emapForm("getValue");
        		saveSQXX.SQRGH=pageMeta.params.ZGH;
        		var sqsj = new Date();
        		sqsj=sqsj.Format("yyyy-MM-dd hh:mm:ss");
        		saveSQXX.SQSJ=sqsj;
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
        		switch(saveSQXX.HDLX){
        		case "0":
        			var saveStatus=JSON.stringify({SQBH:saveSQXX.SQBH,DQZT:2,SFTH:1});
        			break;
        		case "1":
        			var saveStatus=JSON.stringify({SQBH:saveSQXX.SQBH,DQZT:3,SFTH:1});
        			break;
        		case "2":
        			var saveStatus=JSON.stringify({SQBH:saveSQXX.SQBH,DQZT:4,SFTH:1});
        			break;
        		}
        		saveSQXX=JSON.stringify(saveSQXX);
        		bs.save(saveSQXX,saveStatus).done(function(data){
        			$.bhTip({
						    content: '提交申请信息成功！',
						    state: 'success',
						    iconClass: 'icon-checkcircle'
						});
    				$('#emapdatatable').emapdatatable('reload');
    				$.bhPaperPileDialog.hide();//关闭当前弹窗
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
     	                        return  '<a href="javascript:void(0)" data-action="detailYTGSPRowX" data-x-sqbh=' + rowData.SQBH + '>' + '详情' + '</a>';
                           
                             }
                         }
                     }]
                 };
        	 BH_UTILS.bhWindow("<div id=\"JTYTGSPX\"></div>", "该场地今天已申请情况", 
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
                 $('#JTYTGSPX').emapdatatable(tableOptions);
                
//                 Array.prototype.forEach.call($("[data-action=detailYTGSPRow]"),function(item){
//            		 $(item).bind("click",this.detailYTGSPRow);
//            	 });
                
                
        },
        detailYTGSPRow:function(e){
        	var sqbh = $(e.target).attr("data-x-sqbh");
        	
        	BH_UTILS.bhWindow("<div id=\"JTYTGSP_SQXQX\"></div>", "申请详情", 
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
        	$("#JTYTGSP_SQXQX").emapForm({
            	data: mode1,
                model: 'h',
                cols:2,
                readonly:true
            });
            $("#JTYTGSP_SQXQX").emapForm("setValue",data);
        },

    };
    return viewConfig;
});