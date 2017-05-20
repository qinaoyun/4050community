
$(function () {
  
    $('#dgListWait').datagrid({
        url: '/data/waitPrintHandler.ashx?_r=' + Math.random(),//rows=10  page=1
        fit: true,
        fitColumns: true,
        idField: 'Id',
        loadMsg: '正在加载系统功能...',
        pagination: true,
        singleSelect: false,
        checkOnSelect: true,
        pageSize: 10,
        pageNumber: 1,
        pageList: [10, 20, 30],
        queryParams: '',
        rownumbers: true,
        queryParams: '',//表格初始化往后台发送异步请求后台的json数据时候额外发送的请求参数。
        columns: [[
		    { field: 'ck', checkbox: true, align: 'left', width: 50 },
	    	{ field: 'Id', title: '文件ID', width: 120, hidden: true },
			{ field: 'FileName', title: '文件名', width: 120 },
			{ field: 'PrintCopies', title: '打印份数', width: 120 },
            { field: 'GrayPages', title: '黑白页范围', width: 120 },
			{ field: 'Colorpages', title: '彩页范围', width: 120 },
			{ field: 'PageStyle', title: '纸型', width: 120 },
            { field: 'PageSize', title: '纸张大小', width: 120 },
			{ field: 'IsDouble', title: '单双面', width: 120 },
            { field: 'IsOdd', title: '奇偶', width: 120 },
			{ field: 'OperationType', title: '打印方式', width: 120 }
        ]],
        toolbar: [
            	{
            	    iconCls: 'icon-edit',
            	    text: '合并多个任务为一个订单',
            	    handler: function () {
            	        var rows = $('#dgListWait').datagrid('getSelections');
            	        if (rows.length > 0) {
            	            var ids = "";
            	            for (var i = 0; i < rows.length; i++)
            	                if (i + 1 < rows.length)
            	                    ids += rows[i].Id + ","
            	                else ids +=  rows[i].Id 
            	            //window.location.href("../newDocPrint/createPrintOrder.aspx?id=" + ids);
            	            window.location.href = "../newDocPrint/createPrintOrder.aspx?id=" + ids;
            	        } else {
            	            $.messager.alert('友情提示', '请选择需要编辑的选项!', 'error');
            	        }
            	    }
            	},

			{
			    iconCls: 'icon-edit',
			    text: '生成订单',
			    handler: function () {
			        var rows = $('#dgListWait').datagrid('getSelections');
			        if (rows.length > 0) {
			            //处理编辑
			            //  $.messager.alert('友情提示',rows[0].id+'-'+rows[0].documentName+'-'+rows[0].filetype,'info');
			            //window.location.href("../newDocPrint/createPrintOrder.aspx?id=" + rows[0].Id);
			            window.location.href = "../newDocPrint/createPrintOrder.aspx?id=" + rows[0].Id;
			        } else {
			            $.messager.alert('友情提示', '请选择需要编辑的选项!', 'error');
			        }
			    }
			},
			{
			    iconCls: 'icon-remove',
			    text: '删除',
			    handler: function () {
			        var rows = $('#dgListWait').datagrid('getSelections');
			        if (rows.length > 0) {
			            //处理删除
			            var id = "";
			            for (var i = 0; i < rows.length; i++)
			                if (i + 1 < rows.length)
			                    id += rows[i].Id + ","
			                else id += rows[i].Id
			            //window.location.href("../data/printTaskDeleteHandler.ashx?id=" +id );
			            window.location.href = "../data/printTaskDeleteHandler.ashx?id=" + id;
			        } else {
			            $.messager.alert('友情提示', '请选择需要删除的选项!', 'error');
			        }
			    }
			}
        ]

    });
});