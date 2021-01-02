package com.email.mail;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailVO {
    private String homeName; //발신자 이름
    private String homeMail; //발신자 이메일 주소
    private String getMail; //수신자 이메일 주소
    private String title; //제목
    private String content; //본문
    
    @Override
    public String toString() {
        return "EmailVO [homeName=" + homeName + ", homeMail=" + homeMail + ", getMail=" + getMail
                + ", title=" + title + ", content=" + content + "]";
    }
    
}
 
