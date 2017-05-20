package cn.jit.edu.controller;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.jit.edu.dao.EntityDao;
import cn.jit.edu.entity.Article;
import cn.jit.edu.entity.Comment;
import cn.jit.edu.entity.Replay;
import cn.jit.edu.entity.User;

@Controller
public class BaseController{
	@Autowired 
	private EntityDao entityDao;	  
	@RequestMapping("/index.do")
	  public String read(HttpServletRequest req,ModelMap model) {
		  return "../admin/Login";		  
	  }
	  @RequestMapping(value="/login.do",method = RequestMethod.POST)
	  public String testLogin(@RequestParam(value="username")String username, String password, HttpServletRequest request,ModelMap model) throws NoSuchAlgorithmException{
		 //md5加密
		  MessageDigest md = MessageDigest.getInstance("MD5");  
          md.update(password.getBytes());//update处理  
          byte [] encryContext = md.digest();//调用该方法完成计算  

          int i;  
          StringBuffer buf = new StringBuffer("");  
          for (int offset = 0; offset < encryContext.length; offset++) {//做相应的转化（十六进制）  
              i = encryContext[offset];  
              if (i < 0) i += 256;  
              if (i < 16) buf.append("0");  
              buf.append(Integer.toHexString(i));  
         } 
          //---
          System.out.println(buf);
		  List<Object>  objlist1=entityDao.createQuery("from user");
		  for(int j=0;j<objlist1.size();j++){
				User cus=(User)objlist1.get(j);
				//System.out.println(cus.getPassword());
				if(cus.getUsername().equals(username) &&buf.toString().equals(cus.getPassword())){
					//context.getSession().put("user", username);
					model.addAttribute("username", username);
					return "Main";
				}
		  }
	        return "error";
	    }
	  
	  @RequestMapping("/newsadd.do")
	  public String add(@RequestParam(value = "pic", required = false) MultipartFile file, HttpServletRequest request,Article article) {
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
	            article.setFilepath("upload//"+fileName);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        } 
		   }
	        Calendar cale1 = Calendar.getInstance();  
	        //将Calendar类型转换成Date类型  
	        Date tasktime1=cale1.getTime();  
	        //设置日期输出的格式  
	        SimpleDateFormat df1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	        //格式化输出  
	        String aa1=df1.format(tasktime1);
	        article.setTime(aa1);
		  entityDao.save(article);		  
		  return "../admin/newssuccess";		  
	  }
	  
	  @RequestMapping("/show.do")
	  public String show(HttpServletRequest req,ModelMap model) {					  
		  String username=req.getParameter("sign");
		  model.addAttribute("frontusername", username);
		  List<Object>  list1=entityDao.createQuery("from article where firstDirectory = '就业'");	 
		  List<Object>  list2=entityDao.createQuery("from article where firstDirectory = '健康'");	 
		  List<Object>  list3=entityDao.createQuery("from article where firstDirectory = '时尚'");	 
		  List<Object>  list4=entityDao.createQuery("from article where firstDirectory = '情感'");	 
		  List<Object>  list5=entityDao.createQuery("from article where firstDirectory = '教育'");	 
		  List<Object>  list6=entityDao.createQuery("from article where firstDirectory = '旅游'");	 
		  List<Object>  list7=entityDao.createQuery("from article where firstDirectory = '艺术'");	 
		  List<Object>  list8=entityDao.createQuery("from article where firstDirectory = '杂谈'");	 
	
		  model.addAttribute("read1", list1);
		  model.addAttribute("read2", list2);
		  model.addAttribute("read3", list3);
		  model.addAttribute("read4", list4);
		  model.addAttribute("read5", list5);
		  model.addAttribute("read6", list6);
		  model.addAttribute("read7", list7);
		  model.addAttribute("read8", list8);
		  
		  return "../front/index";
		  
	  }
	  @RequestMapping("/showlist.do")
	  public String showlist(@RequestParam(value="firstDirectory")String firstDirectory, HttpServletRequest req,ModelMap model) {
		  switch (firstDirectory) {
	        case "1":
	        	firstDirectory = "就业";
	            break;
	        case "2":
	        	firstDirectory = "健康";
	            break;
	        case "3":
	        	firstDirectory = "时尚";
	            break;
	        case "4":
	        	firstDirectory = "情感";
	            break;
	        case "5":
	        	firstDirectory = "教育";
	            break;
	        case "6":
	        	firstDirectory = "旅游";
	            break;
	        case "7":
	        	firstDirectory = "音乐";
	            break;
	        case "8":
	        	firstDirectory = "杂谈";
	            break;
	        default:
	        	firstDirectory = "杂谈";
	        }
		  List<Object>  list=entityDao.createQuery("from article where firstDirectory = '"+firstDirectory+"'");	 
		 model.addAttribute("firstDirectory", firstDirectory);	
		 model.addAttribute("read", list);	
		  return "../front/list";		  
	  }
	  
	  @RequestMapping("/showdetail.do")
	  public String showdetail(@RequestParam(value="ID")String ID, HttpServletRequest req,ModelMap model) {
		  List<Object>  list=entityDao.createQuery("from article where ID = '"+ID+"'");	 
		  Article article = (Article)list.get(0);
		 model.addAttribute("article", article);	
		  return "../front/detail";		  
	  }
	  
	  @RequestMapping("/persondetail.do")
	  public String persondetail(@RequestParam(value="userId")String userId, HttpServletRequest req,ModelMap model) {
		  List<Object>  list=entityDao.createQuery("from user where ID = '"+userId+"'");	 
		  User user = (User)list.get(0);
		  List<Object>  articleList=entityDao.createQuery("from article where writerId = '"+userId+"'");
		 model.addAttribute("user", user);
		 model.addAttribute("articleList",articleList);
		  return "../front/person";		  
	  }
	  
	//
//			@RequestMapping(value = "/.do")
//				@ResponseBody
//		     	List<Object> list(HttpServletRequest request,HttpServletResponse response, ModelMap model) throws IOException {
//					String collegeid= request.getParameter("collegeid");
//					List<Object> sclass = entityDao.createQuery("from classinfo where collegeID='" + collegeid+ "'");
//					PrintWriter out = response.getWriter();
//					out.print(collegeid);
//					return sclass;
//			}
			
			@RequestMapping(value = "/saveComment .do", method = RequestMethod.POST)
			public String saveComment(ModelMap model,HttpServletRequest request) {
				User user = (User)request.getSession().getAttribute("frontnumber");
			   String articleId = request.getParameter("articleId");
			   String articleComment = request.getParameter("comment");
			   Comment comment = new Comment();
			   comment.setArticleId(Integer.parseInt(articleId));
			   comment.setTime(new Date());
			   comment.setCommentedId(0);
			   comment.setCommenterId(0);
			   comment.setComment(articleComment);			   
				entityDao.save(comment);
				return "front/loading1";
			}
			
			@RequestMapping(value = "/saveReplay .do", method = RequestMethod.POST)
			public String saveReplay(ModelMap model,HttpServletRequest request) {
				User user = (User)request.getSession().getAttribute("frontnumber");
			   String rcontent = request.getParameter("rcontent");
			   String commentId = request.getParameter("commentId");
			   Replay replay = new Replay();
			   replay.setCommentedId(0);
			   replay.setCommenterId(0);
			   replay.setRcontent(rcontent);
			   replay.setRdate(new Date());
			   replay.setCommentId(Integer.parseInt(commentId));
				entityDao.save(replay);
				return "front/loading1";
			}
}
