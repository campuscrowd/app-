define(function(require, exports, module) {
    var utils = require('utils');
    var bs = require('./bwcspBS');
    var utils2 = require('../../public/javascript/utils');
    var viewConfig = {
            initialize: function(data1) {
            	var sqbh=data1.SQBH;
            	var mode1 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'fhsqbmx', 'form');
            	var data = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcksqxx', {SQBH:sqbh}).rows[0];
            	
                $("#emapForm1").emapForm({
                    data: mode1,
                    model: 'h',
                    root : contextPath,
                    readonly:true
                });
        		$("#emapForm1").emapForm("setValue", data);
        		switch(data1.HDLX){
        		case '0':
        			var mode2 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_XGCLDSP_QUERY', 'form');
                    $("#emapForm2").emapForm({
                        data: mode2,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var data2 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxxgcspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm2").emapForm("setValue", data2);
            		break;
        		case '1':
        			var mode2 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_STZDLSSP_QUERY', 'form');
                    $("#emapForm2").emapForm({
                        data: mode2,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var data2 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxstzdlsspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm2").emapForm("setValue", data2);
            		var mode3 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_TWFZRSP_QUERY', 'form');
                    $("#emapForm3").emapForm({
                        data: mode3,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var data3 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxtwfzrspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm3").emapForm("setValue", data3);
            		break;
        		case '2':
        			var mode2 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_AQFZRSP_QUERY', 'form');
                    $("#emapForm2").emapForm({
                        data: mode2,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var rowdata2 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxaqfzrspxx', {SQBH:sqbh});
                    var data2 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxaqfzrspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm2").emapForm("setValue", data2);
            		break;
        		}
        		
        		var number =WIS_EMAP_SERV.getData(bs.api.pageModel, 'hqdtytgsp', {getNumber:JSON.stringify({HDDD:data.HDDD,HDRQ:data.HDRQ})}).SQSL;
        		var HDDD_html=$("#emapForm1").find("[data-name=HDDD]").html();
        		HDDD_html+="                   "
        			HDDD_html+=("<span style='color:red'>该场地活动当天已申请的数量为：<a id=\"YTGSP_detail\" href=\"javascript:void(0)\" data-action=\"YTGSP_detail\" data-x-hdrq=\""+data.HDRQ+"\"  data-x-hddd=\""+data.HDDD+"\">"+number+"</span>");
        		$("#emapForm1").find("[data-name=HDDD]").html(HDDD_html);
        		$('#YTGSP_detail').bind("click",this.detailYTGSP);
        		 //        		var number =BH_UTILS.doAjax('../modules/bwcsp.do/hqdtytgsp.do', {getNumber:JSON.stringify({"HDDD": '2aba3441bda141cbb62cff7b32254c82'})})
//        		.done(function(data){console.log(data)}) ;
            	var dataX=WIS_EMAP_SERV.getData(bs.api.pageModel, 'T_CDSQ_SPZT_QUERY', {SQBH:sqbh}).rows[0];
                var sfth=dataX.SFTH;
                if(sfth=='1'){
                   $('#SPJL').html('<h5><strong>此申请重新提交审核，点击查看<a href="javascript:void(0)" id="history" data-action="history" data-x-sqbh=' + dataX.SQBH + '>审批记录</a></strong></h5>');
                   $('#SPJL').css("margin-bottom","10px");
                }              

        		$('.SPYJ .SPYJ-item').attr("data-x-sqbh",sqbh);
        			this.eventMap = {
                        '[data-action=save]': this.approve,
                        '[data-action=reject]': this.reject,
                        '[data-action=modify]': this.modify,
                        '[data-action=detailYTGSPRow]':this.detailYTGSPRow
                    };
                $("#history").bind('click',function(e){
               	   var sqbh = $(e.target).attr("data-x-sqbh");
                    	var dataSet=WIS_EMAP_SERV.getData(bs.api.pageModel, 'cxsyspxx', {SQBH:sqbh,SQBH_1:sqbh,SQBH_2:sqbh,SQBH_3:sqbh,SQBH_4:sqbh,SQBH_5:sqbh,SQBH_6:sqbh });
                 	   this.history(e,dataSet);
                    });
                $.bhPaperPileDialog.resetPageFooter(); //改变页面的页脚位置
                $.bhPaperPileDialog.resetDialogFooter(); //改变弹框的页脚位置
            },
            approve: function(e){
            	var sqbh=$(e.target).attr("data-x-sqbh");
            	this.save(sqbh,1);
            },
            reject: function(e){
            	var sqbh=$(e.target).attr("data-x-sqbh");
            	this.save(sqbh,2);
            },
            modify: function(e){
            	var sqbh=$(e.target).attr("data-x-sqbh");
            	this.save(sqbh,3);
            },
            save:function(sqbh,spyj){
            	
           	  var newDialog = utils.loadCompiledPage('../../public/html/NewDialog');
           	  var shyj_word="";
           	  switch(spyj){
           	  case 1:
           		 shyj_word="通过";
           		 break;
           	 case 2:
           		shyj_word="不通过";
           		break;
           	 case 3:
            		shyj_word="退回";
            		break;
           	  }
           	  BH_UTILS.bhWindow(newDialog.render({}), 
           			    " <h2>您确定要审核<span class=\"dialog_SPYJ\">"+shyj_word+"</span>该申请吗？</h2> ", 
           			   [
           			        {text:'确认',className:'bh-btn-primary',callback:function(){
           			        	if( $("#spWindow").emapValidate('validate') ){
           			        		var saveSPXX = $("#spWindow").emapForm("getValue");
           			        		var saveStatus={};
           			        		switch(spyj){
           			        		case 1:
           			        			if(saveSPXX.SFJP==1){
           			        				saveSPXX.SQBH=sqbh;
       			        					var shsj = (new Date()).Format("yyyy-MM-dd hh:mm:ss");
       			        					saveSPXX.SHSJ=shsj;
       			        					saveSPXX.SHR=pageMeta.params.XM;
       			        					saveSPXX.SFTY=1;
         			        				saveStatus={SQBH:saveSPXX.SQBH,DQZT:7};
     			        					break;
         			        				}
         			        				else{
         			        					saveSPXX.SQBH=sqbh;
           			        					var shsj = (new Date()).Format("yyyy-MM-dd hh:mm:ss");
           			        					saveSPXX.SHSJ=shsj;
           			        					saveSPXX.SHR=pageMeta.params.XM;
           			        					saveSPXX.SFTY=1;
         			        					saveStatus={SQBH:saveSPXX.SQBH,SFBL:1,DQZT:8};
         			        					break;
         			        				}

           			        		case 2:
         			        			if(saveSPXX.SFJP==1){
         			        				saveSPXX.SQBH=sqbh;
       			        					var shsj = (new Date()).Format("yyyy-MM-dd hh:mm:ss");
       			        					saveSPXX.SHSJ=shsj;
       			        					saveSPXX.SHR=pageMeta.params.XM;
       			        					saveSPXX.SFTY=2;
       			        					saveSPXX.SFJP=2;
         			        				saveStatus={SQBH:saveSPXX.SQBH,DQZT:7};
     			        					break;
         			        				}
         			        				else{
         			        					saveSPXX.SQBH=sqbh;
           			        					var shsj = (new Date()).Format("yyyy-MM-dd hh:mm:ss");
           			        					saveSPXX.SHSJ=shsj;
           			        					saveSPXX.SHR=pageMeta.params.XM;
           			        					saveSPXX.SFTY=2;
           			        					saveSPXX.SFJP=2;
         			        					saveStatus={SQBH:saveSPXX.SQBH,DQZT:9,SFBL:1,SBWZ:6};
         			        					break;
         			        				}
         			        					
         			        					
   
         			        		case 3:
         			        			if(saveSPXX.SFJP==1){
         			        				saveSPXX.SQBH=sqbh;
       			        					var shsj = (new Date()).Format("yyyy-MM-dd hh:mm:ss");
       			        					saveSPXX.SHSJ=shsj;
       			        					saveSPXX.SHR=pageMeta.params.XM;
       			        					saveSPXX.SFTY=3;
       			        					saveSPXX.SFJP=2;
         			        				saveStatus={SQBH:saveSPXX.SQBH,DQZT:7};
     			        					break;
         			        				}
         			        				else{
         			        					saveSPXX.SQBH=sqbh;
           			        					var shsj = (new Date()).Format("yyyy-MM-dd hh:mm:ss");
           			        					saveSPXX.SHSJ=shsj;
           			        					saveSPXX.SHR=pageMeta.params.XM;
           			        					saveSPXX.SFTY=3;
           			        					saveSPXX.SFJP=2;
         			        					saveStatus={SQBH:saveSPXX.SQBH,DQZT:1,SFTH:1};
         			        					
                 			        			break;
         			        				}
           			        		default:
           			        			break;
           			        		}
           			        		saveSPXX=JSON.stringify(saveSPXX);
           			        		saveStatus=JSON.stringify(saveStatus);
           			        		bs.save(saveSPXX,saveStatus).done(function(data){
           			        			$.bhTip({
           								    content: '提交审批信息成功！',
           								    state: 'success',
           								    iconClass: 'icon-checkcircle'
           								});
           			    				$('#emapdatatable').emapdatatable('reload');
           			    				$.bhPaperPileDialog.hide();
           			    			});
           			        	}
           			        	return true;
           			            
           			        }},
           			        {text:'取消',className:'bh-btn-default',callback:function(){
           			        	return true;
           			            
           			        }}
           			    ],
                 {
                    height: 320,
                    width: 500
                }
           			);
           	  var mode1=WIS_EMAP_SERV.getModel(bs.api.pageModel, 'hqshyjmx','form');
           	  $('#spWindow').emapForm({
           		  	data: mode1,
                       model: 'v',
           	  });
           	if(spyj==1)
           		$('#spWindow').emapForm("showItem","SFJP");
  
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
                                 width:100,
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
                    
//                     Array.prototype.forEach.call($("[data-action=detailYTGSPRow]"),function(item){
//                		 $(item).bind("click",this.detailYTGSPRow);
//                	 });
                    
                    
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