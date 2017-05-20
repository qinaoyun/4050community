/// <reference path="jquery-1.8.3-vsdoc.js" />

var _menus = {
    "menus": [
     
    {
        "menuid": "2", "icon": "icon-sys", "menuname": "用户管理",
        "menus": [
        { "menuid": "21", "menuname": "用户列表", "icon": "icon-nav", "url": "admin/filelist.jsp" }
        
        ] 
    },
    {
        "menuid": "4", "icon": "icon-sys", "menuname": "页面内容",
        "menus": [
        { "menuid": "40", "menuname": "资讯中心", "icon": "icon-nav", "url": "admin/news.jsp" },
       
        ] 
    }
    ]
};

$(function () {
    InitLeftMenu();
});

