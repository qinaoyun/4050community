$(function(){
  $('#dgList').datagrid({
        url: '../createapplylist.do?_r='+Math.random(),
        fit: true,
        fitColumns: true,
        idField: 'id',
        loadMsg: '正在加载系统功能...',
        pagination: true,
        singleSelect: true, 
        pageSize: 10,
        pageNumber: 1,
        checkOnSelect:false,
        pageList: [1,10, 20, 30],
        rownumbers: true,
        queryParams: '',//表格初始化往后台发送异步请求后台的json数据时候额外发送的请求参数。
        columns: [[
		    { field: 'ck', checkbox: true, align: 'left', width: 50 },
	    	{ field: 'id', title: '文件ID', width: 40, hidden: true },
            { field: 'name', title: '申报人', width: 40, hidden: false },
			{ field: 'degree', title: '学位', width: 80 },
			{ field: 'grade', title: '学历', width: 40 }
			
        ]],
        toolbar: [
		 	
//			{
//			    iconCls: 'icon-edit',
//			    text: '增加',
//			    handler: function () {
//					var rows = $('#dgList').datagrid('getSelections');
//					if (rows.length > 0) {
//					   //处理编辑
//					    if (rows[0].filetype == 'doc' || rows[0].filetype == 'docx' || rows[0].filetype == 'pdf' || rows[0].filetype == 'jpg' || rows[0].filetype == 'xls' || rows[0].filetype == 'xlsx')
//					        window.location.href="../printFile.html?fileID=" + rows[0].id + "&filetype=" + rows[0].filetype + "&fileName=" + rows[0].documentName;
//					    else
//					    	window.location.href="../front/form.jsp";
//					}else{
//						$.messager.alert('友情提示','请选择需要编辑的选项!','error');
//					}
//		    }
//			},
			{
			    iconCls: 'icon-remove',
			    text: '删除',
			    handler: function () {
					var rows = $('#dgList').datagrid('getSelections');
					if (rows.length > 0) {
					    //处理删除
                        if(confirm("确认要删除该文件吗？"))
                        	{window.location.href="../createapplydelete.do?id="+ rows[0].id+"";
                        
                        	}
					}else{
						$.messager.alert('友情提示','请选择需要删除的选项!','error');
					}
			    }
			},
			{
			    iconCls: 'icon-edit',
			    text: '查看',
			    handler: function () {
					var rows = $('#dgList').datagrid('getSelections');
					if (rows.length > 0) {
					    //处理查看
						if (rows[0].filetype == 'doc' || rows[0].filetype == 'docx' || rows[0].filetype == 'pdf' || rows[0].filetype == 'jpg' || rows[0].filetype == 'xls' || rows[0].filetype == 'xlsx')
					        window.location.href="../printFile.html?fileID=" + rows[0].id + "&filetype=" + rows[0].filetype + "&fileName=" + rows[0].documentName;
					    else
					    	{
					    	window.location.href="../createapplyview.do?id="+ rows[0].id+"";
					    	}
					}else{
						$.messager.alert('友情提示','请选择需要查看的选项!','error');
					}
			    }
			},
			{
			    iconCls: 'icon-edit',
			    text: '导出表格',
			    handler: function () {
					var rows = $('#dgList').datagrid('getSelections');
					if (rows.length > 0) {
					    //处理查看
						if (rows[0].filetype == 'doc' || rows[0].filetype == 'docx' || rows[0].filetype == 'pdf' || rows[0].filetype == 'jpg' || rows[0].filetype == 'xls' || rows[0].filetype == 'xlsx')
					        window.location.href="../printFile.html?fileID=" + rows[0].id + "&filetype=" + rows[0].filetype + "&fileName=" + rows[0].documentName;
					    else
					    	{
					    	window.location.href="../createapplyout.do?id="+ rows[0].id+"";
					    	}
					}else{
						$.messager.alert('友情提示','请选择需要导出的表格的选项!','error');
					}
			    }
			}
		 ]
		
    });
});