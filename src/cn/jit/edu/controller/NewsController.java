package cn.jit.edu.controller;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.jit.edu.dao.EntityDao;
import cn.jit.edu.entity.Article;
import cn.jit.edu.entity.News;

@Controller
public class NewsController{
	@Autowired 
	private EntityDao entityDao;
	  
	  @RequestMapping("/newslist.do")
	  public @ResponseBody   JsonLists1 list(HttpServletRequest req) {
		  System.out.println("coming .........!");
		  String page=req.getParameter("page");
		  String rows=req.getParameter("rows");
		  System.out.println("coming .........!"+page+"  "+rows);
//		  int first, pagesize;
//		  if(page==null) first=0;
//		  else   first=Integer.parseInt(page)-1;
//		  if(rows==null)  pagesize=1;
//		  else   pagesize=Integer.parseInt(rows);
		  
		  List<Object>  objlist=entityDao.findPage("from article order by time desc", page, rows);
		  JsonLists1  jobj=new JsonLists1();
		  List<Object>  count=entityDao.createQuery("from article");
		   jobj.setTotal(count.size());
		   jobj.setRows(objlist);
		  return jobj;
		  
	  }
	  @RequestMapping("/newsview.do")
	  public String view(HttpServletRequest req,ModelMap model) {
		 
		  String id=req.getParameter("id");
		  
		  List<Object>  list=entityDao.createQuery("from news where ID='"+id+"'");
		  
		  model.addAttribute("obj", list);
		  return "newsview";
		  
	  }
	  @RequestMapping("/frontnewsview.do")
	  public String frontview(HttpServletRequest req,ModelMap model) {
		 
		  String id=req.getParameter("id");
		  
		  List<Object>  list=entityDao.createQuery("from news where ID='"+id+"'");
		  
		  model.addAttribute("obj", list);
		  return "../front/newsview";
		  
	  }
	  
	  @RequestMapping("/newscenter.do")
	  public String newscenter(HttpServletRequest req,ModelMap model) {
		  System.out.println("12313231");
		  String sign=req.getParameter("sign");
		  if(sign.equals("1")){
			  List<Object>  list=entityDao.createQuery("from news where navigation='新闻中心'"); 
			  model.addAttribute("news", null);
			  model.addAttribute("news", list);
		  }else{
			  List<Object>  list0=entityDao.createQuery("from news where navigation='通知公告'");
			  model.addAttribute("news", null);
			  model.addAttribute("news", list0);
		  }
		  return "../front/news";
		  
	  }
	  
	  @RequestMapping("/newsupdate.do")
	  public String update(@RequestParam(value = "pic", required = false) MultipartFile file, HttpServletRequest request,News news){
		  System.out.println("upload234234");
		   System.out.println("开始"); 
		   int ID=news.getID();
		   if(!file.isEmpty()){
		    String path = request.getSession().getServletContext().getRealPath("upload");  
	        String fileName1 = file.getOriginalFilename();  
	        String imgType=fileName1.substring(fileName1.lastIndexOf("."));//获得图片文件后缀	        
	        //SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	        Calendar cale = Calendar.getInstance();  
	        //将Calendar类型转换成Date类型  
	        Date tasktime=cale.getTime();  
	        //设置日期输出的格式  
	        SimpleDateFormat df=new SimpleDateFormat("yyyyMMddHHmmss");  
	        //格式化输出  
	        String aa=df.format(tasktime); 	        	        
	        //String d = sdf.parse(new Date());
	        String fileName = aa+imgType;  
	        System.out.println(path);  
	        File targetFile = new File(path, fileName);  
	        if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        }  	  
	        //保存  
	        try {  
	            file.transferTo(targetFile);  
	            String filepath="upload//"+fileName;
	            entityDao.update("update news set filepath='"+filepath+"' where ID='"+ID+"'");
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	        
		   }
		   String path1=request.getParameter("pic");
		   news.setFilepath(path1);
		   System.out.println(path1);
		   Calendar cale = Calendar.getInstance();  
	        //将Calendar类型转换成Date类型  
	        Date tasktime=cale.getTime();  
	        //设置日期输出的格式  
	        SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	        //格式化输出  
	        String aa=df.format(tasktime);
		  news.setCreatedate(aa);
		 
		  String navigation=news.getNavigation();
		  String title=news.getTitle();
//		  String filepath=news.getFilepath();
		  String content=news.getContent();
		  String isVisible=news.getIsVisible();
		  
		  entityDao.update("update news set navigation='"+navigation+"',title='"+title+"',content='"+content+"',isVisible='"+isVisible+"' where ID='"+ID+"'");	
		  System.out.println("upload234234");
		  return "../admin/newssuccess";		  
	  }
	  
	  @RequestMapping("/newsdelete.do")
	  public String deleteObj(HttpServletRequest req) {
		  System.out.println("upload12");
		  String id=req.getParameter("id");
		  entityDao.delete("delete from news where ID="+id+"");		 
		  return "../admin/newssuccess";
		  
	  }		

}

class  JsonLists1
{
	int total;
	List<Object>  rows;
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<Object> getRows() {
		return rows;
	}
	public void setRows(List<Object> rows) {
		this.rows = rows;
	}

}
