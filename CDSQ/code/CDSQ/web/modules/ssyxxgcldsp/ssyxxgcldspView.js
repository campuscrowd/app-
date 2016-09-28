define(function(require, exports, module) {
	 var utils2 = require('../../public/javascript/utils');;
    var bs = require('./ssyxxgcldspBS');

    var viewConfig = {
        initialize: function(sqbh) {
        	var mode1 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'fhsqbmx', 'form');
			var data1 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcksqxx', { SQBH: sqbh });
            $("#emapForm1").emapForm({
                data: mode1,
                model: 'v',
                readonly: true
            });
            $("#emapForm1").emapForm("setValue", data1.rows[0]);
            var data2 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'T_CDSQ_SPZT_QUERY', { SQBH: sqbh }).rows[0];
            var sfth = data2.SFTH;
            if (sfth == '1') {
                $('#SPJL').html('<h5><strong>此申请重新提交审核，点击查看<a href="javascript:void(0)" id="history" data-action="history" data-x-sqbh=' + data2.SQBH + '>审批记录</a></strong></h5>');
                $('#SPJL').css("margin-bottom", "10px");
			}
            var mode3 = WIS_EMAP_SERV.getModel(bs.api.pageModel, 'asjcxxgcspxx', 'form');
            var data3 = WIS_EMAP_SERV.getData(bs.api.pageModel, 'asjcxxgcspxx', { SQBH: sqbh });
            if (data2.DQZT > '2') {
				$("#emapForm2").emapForm({
                    data: mode3,
                    model: 'h',
                    readonly: true
                });
                $("#emapForm2").emapForm("setValue", data3.rows[0]);
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