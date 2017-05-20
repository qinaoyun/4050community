
$(function () {
    $('#dgdepartList').datagrid({
        url: '/data/departPrintHandler.ashx?_r=' + Math.random(),//rows=10  page=1
        fit: true,
        fitColumns: true,
        idField: 'id',
        loadMsg: '正在加载系统功能...',
        pagination: true,
        pageSize: 10,
        pageNumber: 1,
        checkOnSelect: false,
        pageList: [10, 20, 30],
        queryParams: '',
        rownumbers: true,
        queryParams: '',//表格初始化往后台发送异步请求后台的json数据时候额外发送的请求参数。
        columns: [[
            { field: 'Id', title: 'ID', width: 120, hidden: true },
            { field: 'DocumentName', title: '文件名', width: 120 },
            { field: 'Filetype', title: '文件类型', width: 120 },
            { field: 'Copies', title: '打印份数', width: 120 },
            { field: 'Pages', title: '打印页数', width: 120 },
            { field: 'Color', title: '黑白/彩色', width: 120 },
			{ field: 'PrintTime', title: '打印时间', width: 120 }
        ]],
        toolbar: [

			
        ]

    });
});