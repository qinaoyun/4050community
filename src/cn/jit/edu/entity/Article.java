package cn.jit.edu.entity;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity (name="article")
public class Article {
	String title;
	String content;
	int writerId;
	String firstDirectory;
	String secondDirectory;
	String area;
	String filepath;
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getWriterId() {
		return writerId;
	}
	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}
	public String getFirstDirectory() {
		return firstDirectory;
	}
	public void setFirstDirectory(String firstDirectory) {
		this.firstDirectory = firstDirectory;
	}
	public String getSecondDirectory() {
		return secondDirectory;
	}
	public void setSecondDirectory(String secondDirectory) {
		this.secondDirectory = secondDirectory;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getHighlight() {
		return highlight;
	}
	public void setHighlight(int highlight) {
		this.highlight = highlight;
	}
	public String getTop() {
		return top;
	}
	public void setTop(String top) {
		this.top = top;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getGoodcount() {
		return goodcount;
	}
	public void setGoodcount(int goodcount) {
		this.goodcount = goodcount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	int  highlight;
	String top;
	String time;
	int commentId;
   int  goodcount;
   int status;
	@Id
	int ID;
	
}
