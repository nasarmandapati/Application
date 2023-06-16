package com.web.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Reg2")
public class Register1 implements Serializable{
    @Id
    private String email;
    private String id;
    private String ename;

    
    private String mob;
    private String password;
    private String cnpassword;

   

    public Register1() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMob() {
        return mob;
    }

    public void setMob(String mob) {
        this.mob = mob;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCnpassword() {
        return cnpassword;
    }

    public void setCnpassword(String cnpassword) {
        this.cnpassword = cnpassword;
    }


    @Override
    public String toString() {
        return "Register1 [id=" + id + ", ename=" + ename + ", email=" + email + ", mob=" + mob + ", password="
                + password + ", cnpassword=" + cnpassword + ", getId()=" + getId() + ", getEname()=" + getEname()
                + ", getEmail()=" + getEmail() + ", getMob()=" + getMob() + ", getPassword()=" + getPassword()
                + ", getCnpassword()=" + getCnpassword() + "]";
    }
}
