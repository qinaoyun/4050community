package cn.jit.edu.entity;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity (name="comment")
public class Comment {
	int commenterId;
	int commentedId;
	Date time;
	String comment;
	int  articleId;
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}

	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getCommenterId() {
		return commenterId;
	}
	public void setCommenterId(int commenterId) {
		this.commenterId = commenterId;
	}
	public int getCommentedId() {
		return commentedId;
	}
	public void setCommentedId(int commentedId) {
		this.commentedId = commentedId;
	}

	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	@Id
	int ID;
	
}
