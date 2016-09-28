define(function(require, exports, module) {
	 var utils2 = require('../../public/javascript/utils');
    var bs = require('./bwcspBS');

    var viewConfig = {
            initialize: function(sqbh) {
            	var mode1 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'fhsqbmx', 'form');
    			var data1 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcksqxx', { SQBH: sqbh }).rows[0];
                $("#emapForm1").emapForm({
                    data: mode1,
                    model: 'v',
                    readonly: true
                });
                $("#emapForm1").emapForm("setValue", data1);
                var data2 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'T_CDSQ_SPZT_QUERY', { SQBH: sqbh }).rows[0];
                var sfth = data2.SFTH;
                if (sfth == '1') {
                    $('#SPJL').html('<h5><strong>此申请重新提交审核，点击查看<a href="javascript:void(0)" id="history" data-action="history" data-x-sqbh=' + data2.SQBH + '>审批记录</a></strong></h5>');
                    $('#SPJL').css("margin-bottom", "10px");
    			}
              
                switch(data1.HDLX){
        		case '0':
        			var mode2 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_XGCLDSP_QUERY', 'form');
                    $("#emapForm2").emapForm({
                        data: mode2,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var data3 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxxgcspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm2").emapForm("setValue", data3);
            		
            		if (data2.DQZT>'6') {
            			var data4 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxbwcspxx', {SQBH:sqbh}).rows[0];
            			var mode4 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_BWCSP_QUERY', 'form');
        				$("#emapForm3").emapForm({
                            data: mode4,
                            model: 'h',
                            readonly: true
                        });
                        $("#emapForm3").emapForm("setValue", data4);
                    }
            		break;
        		case '1':
        			var mode2 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_STZDLSSP_QUERY', 'form');
                    $("#emapForm2").emapForm({
                        data: mode2,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var dataX = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxstzdlsspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm2").emapForm("setValue", dataX);
            		var mode3 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_TWFZRSP_QUERY', 'form');
                    $("#emapForm3").emapForm({
                        data: mode3,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var data3 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxtwfzrspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm3").emapForm("setValue", data3);
            		if (data2.DQZT>'6') {
            			var data4 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxbwcspxx', {SQBH:sqbh}).rows[0];
            			var mode4 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_BWCSP_QUERY', 'form');
        				$("#emapForm4").emapForm({
                            data: mode4,
                            model: 'h',
                            readonly: true
                        });
                        $("#emapForm4").emapForm("setValue", data4);
                    }
            		break;
        		case '2':
        			var mode2 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_AQFZRSP_QUERY', 'form');
                    $("#emapForm2").emapForm({
                        data: mode2,
                        model: 'h',
                        root : contextPath,
                        readonly:true
                    });
                    var dataX = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxaqfzrspxx', {SQBH:sqbh}).rows[0];
            		$("#emapForm2").emapForm("setValue", dataX);
            		if (data2.DQZT>'6') {
            			var data4 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxbwcspxx', {SQBH:sqbh}).rows[0];
            			var mode4 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'T_CDSQ_BWCSP_QUERY', 'form');
        				$("#emapForm3").emapForm({
                            data: mode4,
                            model: 'h',
                            readonly: true
                        });
                        $("#emapForm3").emapForm("setValue", data4);
                    }
            		break;
        		}

                $("[data-action=save]").hide();
                this.eventMap = {
                };
                $("#history").bind('click',function(e){
               	   var sqbh = $(e.target).attr("data-x-sqbh");
                    	var dataSet=WIS_EMAP_SERV.getData(bs.api.pageModel, 'cxsyspxx', {SQBH:sqbh,SQBH_1:sqbh,SQBH_2:sqbh,SQBH_3:sqbh,SQBH_4:sqbh,SQBH_5:sqbh,SQBH_6:sqbh });
                 	   utils2.history(e,dataSet);
                    });
            }
        };
        return viewConfig;
    });