package cn.jit.edu.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "replay")
public class Replay{
	@Column(name = "commentedId", nullable = false)
	int  commentedId; // 发布人的姓名

	@Column(name = "commenterId", nullable = false)
	int  commenterId; // 发布人的姓名
	
	@Column(name = "rcontent", nullable = false)
	String rcontent; // 评论的内容

	@Column(name = "rdate", nullable = false)
	Date rdate; // 回复留言的时间
    
	@Column(name = "commentId", nullable = false)
	int  commentId; // 回复的留言的ID



	
	public int getCommentedId() {
		return commentedId;
	}

	public void setCommentedId(int commentedId) {
		this.commentedId = commentedId;
	}

	public int getCommenterId() {
		return commenterId;
	}

	public void setCommenterId(int commenterId) {
		this.commenterId = commenterId;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int ID; // 主键id

}
