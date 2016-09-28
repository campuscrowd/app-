define(function(require, exports, module) {
    var utils = require('utils');
    var Config = {
    		renderFlowState:function(DQZT,SBWZ){
        		var flowStateData=[{
                    content: "提交申请",
                    status: "success",
                    statusDescription: "成功"
                }, {
                    content: "来源单位审核",
                    status: "not started",
                    statusDescription: "未开始"
                }, {
                    content: "相关单位审核",
                    status: "not started",
                    statusDescription: "未开始"
                }, {
                    content: "信息化处审核",
                    status: "not started",
                    statusDescription: "未开始"
                },{
                    content: "审批结果",
                    status: "not started",
                    statusDescription: "未办理"
                }];
        		switch(DQZT){
        		case '5':
        			flowStateData[0].status="success";
        			flowStateData[0].statusDescription="提交成功";
        			for(var i=1;i<parseInt(SBWZ);i++){
        				flowStateData[i].status="success";
        				flowStateData[i].statusDescription="审核完成";
        			}	
        			flowStateData[parseInt(SBWZ)].status="fail";
        			flowStateData[parseInt(SBWZ)].statusDescription="审批不通过";
        			break;
        		case '4':
        			flowStateData[4].status="success";
        			flowStateData[4].statusDescription="审批通过";
        			flowStateData[3].status="success";
        			flowStateData[3].statusDescription="审核完成";
        			flowStateData[2].status="success";
        			flowStateData[2].statusDescription="审核完成";
        			flowStateData[1].status="success";
        			flowStateData[1].statusDescription="审核完成";
        			flowStateData[0].status="success";
        			flowStateData[0].statusDescription="提交成功";
        			break;
        		case '3':
        			flowStateData[3].status="operation";
        			flowStateData[3].statusDescription="审核中";
        			flowStateData[2].status="success";
        			flowStateData[2].statusDescription="审核中";
        			flowStateData[1].status="success";
        			flowStateData[1].statusDescription="审核完成";
        			flowStateData[0].status="success";
        			flowStateData[0].statusDescription="提交成功";
        			break;
        		case '2':
        			flowStateData[2].status="operation";
        			flowStateData[2].statusDescription="审核中";
        			flowStateData[1].status="success";
        			flowStateData[1].statusDescription="审核完成";
        			flowStateData[0].status="success";
        			flowStateData[0].statusDescription="提交成功";
        			break;
        		case '1':
        			flowStateData[1].status="operation";
        			flowStateData[1].statusDescription="审核中";
        			flowStateData[0].status="success";
        			flowStateData[0].statusDescription="提交成功";
        			break;
        		case '0':
        			flowStateData[0].status="operation";
        			flowStateData[0].statusDescription="等待提交";
        			break;
        	    };
        		
        		 $('#flowState').flowState({
                     flowStateData:flowStateData
                 });
        		 $('.bh-flowState-detail').css("color","#555");
        		 $('.bh-flowState-status').css("color","#555");
        		 $('.bh-flowState-status').css("display","none");
        		 $('#flowState').css("background","#f8f8f8");
        		 $('#flowState').css("border","1px solid #b5b5b5");
        		 $('#flowState').css("padding-top","10px");
        		 $('#flowState').css("padding-bottom","20px");
        },
        history:function(e,dataSet){

        	var historySet = {};
        	dataSet.rows.sort(function(a,b){
        		var data1=parseDate(a.SHSJ);
        		var data2=parseDate(b.SHSJ);
        		return data1.getTime()-data2.getTime();
        	});
        	dataSet.rows.forEach(function(item){
        		var spDate=item.SHSJ.split(" ")[0];
        		var spTime=item.SHSJ.split(" ")[1];
        		if(historySet[spDate]==undefined){
        			historySet[spDate]=[];
        			historySet[spDate].push({
        				"SHSJ":spTime,
        				"SPHJ":item.SPHJ,
        				"SFTY":item.SFTY,
        				"SHYJ":item.SHYJ,
        				"SHR":item.SHR
        			});
        		} else {
        			historySet[spDate].push({
        				"SHSJ":spTime,
        				"SPHJ":item.SPHJ,
        				"SFTY":item.SFTY,
        				"SHYJ":item.SHYJ,
        				"SHR":item.SHR
        			});
        		}
        	
        	});
        	var historyTpl = utils.loadCompiledPage('../../public/html/history');
        	utils.window({
			    title: '审批记录', //必填
			    content: historyTpl.render({}), //必填 html字符串
			    height: '600px',//选填 默认100%
			    width: '900px',//选填 默认500px
			    showButtons:false,//选填 默认为true
			    callback: function() {//选填 当有buttons参数时 此参数无效
			       
			    },
			    buttons: []
			});
        
        			var cardTpl = utils.loadCompiledPage('../../public/html/ListCard');
        			for(var x in historySet){
        				var date = new Date(x);
        				var formatDate = date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日";
        				var weekDay = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];  
        				var week = weekDay[date.getDay()];
        				$("#historyShow").append(cardTpl.render({history:historySet[x],applyDate:formatDate,week:week,customRenderer:function(){  
        			        if(this.SPHJ=="1"){  
        			            return '<span style="font-size:15px;">'+this.SHR+'提交场地申请 </span> <br/>'+"<div>---------------------------------------------------</div>" ; 
        			        }else if(this.SPHJ=="2"){  
        			            return '<span style="font-size:15px;">部所属院系学工处领导审批意见：'+ (this.SFTY=='1'?"同意":this.SFTY=='2'?"不同意":"退回修改")+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"备注："+(this.SHYJ==null?"无":this.SHYJ)+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"审批人："+this.SHR+" </span><br/>"+"<div>---------------------------------------------------</div>";
        			        }else if(this.SPHJ=="3"){  
        			        	return '<span style="font-size:15px;">社团指导老师审批意见：'+ (this.SFTY=='1'?"同意":this.SFTY=='2'?"不同意":"退回修改")+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"备注："+(this.SHYJ==null?"无":this.SHYJ)+"</span ><br/></pan style=\"line-height: 20px;font-size:15px;\">"+"审批人："+this.SHR+" </span><br/>"+"<div>---------------------------------------------------</div>";  
        			        }else if(this.SPHJ=="4"){  
        			        	return '<span style="font-size:15px;">所属院系、单位分管安全负责人审批意见：'+ (this.SFTY=='1'?"同意":this.SFTY=='2'?"不同意":"退回修改")+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"备注："+(this.SHYJ==null?"无":this.SHYJ)+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"审批人："+this.SHR+" </span><br/>"+"<div>---------------------------------------------------</div>";  
        			        }else if(this.SPHJ=="5"){  
        			        	return '<span style="font-size:15px;">团委负责人审批意见：'+ (this.SFTY=='1'?"同意":this.SFTY=='2'?"不同意":"退回修改")+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"备注："+(this.SHYJ==null?"无":this.SHYJ)+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"审批人："+this.SHR+" </span><br/>"+"<div>---------------------------------------------------</div>";  
        			        } else if(this.SPHJ=="6"){  
        			        	return '<span style="font-size:15px;">保卫处审批意见：'+ (this.SFTY=='1'?"同意":this.SFTY=='2'?"不同意":"退回修改")+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"备注："+(this.SHYJ==null?"无":this.SHYJ)+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"审批人："+this.SHR+" </span><br/>"+"<div>---------------------------------------------------</div>";  
        			        } else if(this.SPHJ=="7"){  
        			        	return '<span style="font-size:15px;">保卫处领导审批意见：'+ (this.SFTY=='1'?"同意":this.SFTY=='2'?"不同意":"退回修改")+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"备注："+(this.SHYJ==null?"无":this.SHYJ)+"</span ><br/><span style=\"line-height: 20px;font-size:15px;\">"+"审批人："+this.SHR+" </span><br/>"+"<div>---------------------------------------------------</div>";  
        			        } 
        			    }}));
        			}
            	}
         
        
    };
    	return Config;
});