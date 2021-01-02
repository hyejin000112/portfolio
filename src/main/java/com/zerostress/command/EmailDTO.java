package com.zerostress.command;

public class EmailDTO {
	private String senderName = "Zerostress"; // 발신자 이름
	private String senderMail = "khyejin000112@gmail.com"; //발신자 이메일 주소
	private String receiveMail;//수신자 이메일 주소
	private String subject = "zerostress 이메일 인증";//제목
	private String message;//본문
	private String certiCheck;// 인증 x로  데이터베이스에 저장할 값
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getSenderMail() {
		return senderMail;
	}
	public void setSenderMail(String sederMail) {
		this.senderMail = sederMail;
	}
	public String getReceiveMail() {
		return receiveMail;
	}
	public void setReceiveMail(String receiveMail) {
		this.receiveMail = receiveMail;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCertiCheck() {
		return certiCheck;
	}
	public void setCertiCheck(String certiCheck) {
		this.certiCheck = certiCheck;
	}
	@Override
    public String toString() {
        return "EmailDTO [senderName=" + senderName + ", senderMail=" + senderMail + ", receiveMail=" + receiveMail
                + ", subject=" + subject + ", message=" + message + "]";
    }
	
	
}
