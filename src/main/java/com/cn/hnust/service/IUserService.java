
package com.cn.hnust.service;  
  
import com.cn.hnust.pojo.User;  
  
public interface IUserService {  
    public User getUserById(int userId);  
    
    public User getUserByPassword(int userId, String Password);
    
    public int insertUser(User user);
    
}  