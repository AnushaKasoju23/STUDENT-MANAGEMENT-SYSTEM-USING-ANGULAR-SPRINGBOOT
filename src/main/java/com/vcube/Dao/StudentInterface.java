package com.vcube.Dao;

import com.vcube.Model.LoginModel;
import com.vcube.Model.RegisterModel;

public interface StudentInterface {
public abstract String InsertData(RegisterModel rm);
public abstract String SelectData(LoginModel lm);
//public void updateStudentById(RegisterModel rm);
////public  abstract String SelectAllData(RegisterModel lm);
//void updateStudentById(RegisterModel rm);
 
}
