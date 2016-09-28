define(function(require, exports, module) {

	var utils = require('utils');
	var bs = require('./sqxxBS');
	var sqxxSave = require('./sqxxSave');
	var sqxxView = require('./sqxxView');
	var subtab1 = require('./cdsqb');
    var subtab2 = require('./sqjl');
	var viewConfig = {
		initialize: function() {
			
            this.pushSubView([subtab1,subtab2]);
            this.initView();

		/*	this.eventMap = {
				"[data-action=add]": this.actionAdd,
				"[data-action=edit]": this.actionEdit,
				"[data-action=detail]": this.actionDetail,
				"[data-action=delete]": this.actionDelete,
				"[data-action=export]": this.actionExport,
				"[data-action=import]": this.actionImport,
				"[data-action=custom-column]": this.actionCustomColumn
			};*/
		},

		initView: function() {
			var view = utils.loadCompiledPage('sqxx');
            this.$rootElement.html(view.render({}), true);
			 var self = this;
			$('#jqxTabs').jqxTabs({
				position: 'top',
				initTabContent: function(tab) {
					self.tabChangeView(tab);
				}
			});
			
			subtab1.initialize();
			subtab2.initialize();
        },
		tabChangeView: function(tab) {
			switch (tab) {
				case 0:
					subtab1.initialize();
					break;
				case 1:
					subtab2.initialize();
					break;
				default:
					break;
			}
		}
};

	return viewConfig;
});