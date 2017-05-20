
$(function () {
    $('#dgListOrder').datagrid({
        url: '/data/printOrderHandler.ashx?_r=' + Math.random(),//rows=10  page=1
        fit: true,
        fitColumns: true,
        idField: 'OrderID',
        loadMsg: '正在加载系统功能...',
        pagination: true,
        singleSelect: false,
        pageSize: 10,
        pageNumber: 1,
        pageList: [10, 20, 30],
        queryParams: '',
        rownumbers: true,
        queryParams: '',//表格初始化往后台发送异步请求后台的json数据时候额外发送的请求参数。
        columns: [[
		    { field: 'ck', checkbox: true, align: 'left', width: 50 },
	        { field: 'OrderID', title: '订单号', width: 120 },
			{ field: 'TotalFee', title: '总费用', width: 120 },
            { field: 'AllocateTime', title: '分配时间', width: 120 },
			{ field: 'PreFinishTime', title: '客户预期取档时间', width: 120 },
			{ field: 'FinishTime', title: '完成时间', width: 120 },
            { field: 'Location', title: '打印点', width: 120 },
            { field: 'DeliverInfo', title: '配送信息', width: 120 },
			{ field: 'Status', title: '状态', width: 120 }
        
        ]],
        toolbar: [
            	{
            	    iconCls: 'icon-edit',
            	    text: '查看详情',
            	    handler: function () {
            	        var rows = $('#dgListOrder').datagrid('getSelections');
            	        if (rows.length > 0) {
            	            //window.location.href("../order/detailOrder.aspx?id=" + rows[0].OrderID + "");
            	            window.location.href = "../order/detailOrder.aspx?id=" + rows[0].OrderID + "";
            	        } else {
            	            $.messager.alert('友情提示', '请选择需要编辑的选项!', 'error');
            	        }
            	    }
            	},

			{
			    iconCls: 'icon-edit',
			    text: '撤销订单',
			    handler: function () {
			        var rows = $('#dgListOrder').datagrid('getSelections');
			        if (rows.length > 0) {
			            //处理编辑
			            //  $.messager.alert('友情提示',rows[0].id+'-'+rows[0].documentName+'-'+rows[0].filetype,'info');
			           // window.location.href("../newDocPrint/createPrintOrder.aspx?id=" + rows[0].OrderID);
			        } else {
			            $.messager.alert('友情提示', '请选择需要编辑的选项!', 'error');
			        }
			    }
			}
        ]

    });
});