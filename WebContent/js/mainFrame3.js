/// <reference path="jquery-1.8.3-vsdoc.js" />

var _menus = {
    "menus": [
    {
        "menuid": "1", "icon": "icon-sys", "menuname": "云存储",
        "menus": [

            { "menuid": "11", "menuname": "普通文件列表", "icon": "icon-nav", "url": "../Docprint/filelist.html" },
          //  { "menuid": "12", "menuname": "涉密文件列表", "icon": "icon-nav", "url": "../Docprint/secretFileList.html" },
            { "menuid": "13", "menuname": "上传普通文件", "icon": "icon-nav", "url": "../newDocprint/upLoadFile.aspx?kid=N" },
            { "menuid": "14", "menuname": "打印记录", "icon": "icon-nav", "url": "../Docprint/departPrint.html" }
           
        ]
    },
    
    {
        "menuid": "3", "icon": "icon-sys", "menuname": "个人信息",
        "menus": [

            //{ "menuid": "11", "menuname": "普通文档打印", "icon": "icon-nav", "url": "../Docprint/DocAll.aspx" },
            //    { "menuid": "12", "menuname": "涉密文档打印", "icon": "icon-add", "url": "../Docprint/SecretPrint.aspx" }

            { "menuid": "31", "menuname": "修改个人信息", "icon": "icon-nav", "url": "./modifyPWD.aspx" }
            //{ "menuid": "32", "menuname": "文印店接入备案", "icon": "icon-nav", "url": "../shop/business.html" }
        ]

    }
    ]
};

$(function () {
    InitLeftMenu();
});

