
$(function () {
    $('#dgListCreateOrder').datagrid({
        url: '/data/createPrintHandler.ashx?_r=' + Math.random(),//rows=10  page=1
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
            	
        ]

    });
});