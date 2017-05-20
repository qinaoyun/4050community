//.paginator {
//			font: 14.8px normal Arial, Helvetica, sans-serif;
//			color: #666666;
//			margin-top: 10px;
//			margin-bottom: 5px;
//			line-height: 150%;
//			background-color: #EEFFEE;
//			text-align: center;
//		}
//		.paginator a, .thispage, .break {
//			padding: 2px 4px;
//		}
//		.paginator .prev {
//			margin-right: 20px;
//		}
//		.paginator .next {
//			margin-left: 20px;
//		}
//		.paginator .count {
//			margin-left: 20px;
//			font-size: 11px;
//		}


//返回  页码条  字符串
// pagecount  总页数
//currentpage  当前页码
//fn  获取分页数据的方法  有一个参数，参数是pageIndex
function createPageBar(pagecount, currentpage, fn) {
    ld = fn;
    var pagestr = "";
    var breakpage = 9;
    var currentposition = 4;
    var breakspace = 2;
    var maxspace = 4;
    var prevnum = currentpage - currentposition;
    var nextnum = currentpage + currentposition;
    if (prevnum < 1) prevnum = 1;
    if (nextnum > pagecount) nextnum = pagecount;
    var i;
    i = currentpage - 1;
    pagestr += (currentpage == 1) ? '<span class="prev">上一页</span>' : '<span class="prev"> <a href="javascript:void(0)" onclick="getPage(' + i + ')">上一页</a></span>';

    if (prevnum - breakspace > maxspace) {
        for (i = 1; i <= breakspace; i++)
            pagestr += '<a href="javascript:void(0)" onclick="getPage(' + i + ')">' + i + '</a>';
        pagestr += '<span class="break">...</span>';
        for (i = pagecount - breakpage + 1; i < prevnum; i++)
            pagestr += '<a href="javascript:void(0)" onclick="getPage(' + i + ')">' + i + '</a>';
    } else {
        for (i = 1; i < prevnum; i++)
            pagestr += '<a href="javascript:void(0)" onclick="getPage(' + i + ')">' + i + '</a>';
    }
    for (i = prevnum; i <= nextnum; i++) {
        pagestr += (currentpage == i) ? '<span class="thispage">' + i + '</span>' : '<a href="javascript:void(0)" onclick="getPage(' + i + ')">' + i + '</a>';
    }
    if (pagecount - breakspace - nextnum + 1 > maxspace) {
        for (i = nextnum + 1; i <= breakpage; i++)
            pagestr += '<a href="javascript:void(0)" >' + i + '</a>';
        pagestr += '<span class="break">...</span>';
        for (i = pagecount - breakspace + 1; i <= pagecount; i++)
            pagestr += '<a href="javascript:void(0)" onclick="getPage(' + i + ')">' + i + '</a>';
    } else {
        for (i = nextnum + 1; i <= pagecount; i++)
            pagestr += '<a href="javascript:void(0)" onclick="getPage(' + i + ')">' + i + '</a>';
    }
    i = currentpage + 1;
    pagestr += (currentpage == pagecount) ? '<span class="next">下一页</span>' : '<span class="next"><a href="javascript:void(0)" onclick="getPage(' + i + ')">下一页</a></span>';
    return pagestr;
}
var ld;
function getPage(i, fn) {
    ld(i);
}