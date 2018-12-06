package controller;

import biz.UserBiz;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @Author:zhn
 * @Date:2018/10/23
 */
@SessionAttributes("user")
@Controller
@RequestMapping("/userControl")
public class UserController {

    @Autowired
    UserBiz userBiz;

    @RequestMapping(value = "/{url}", method = RequestMethod.GET)
    public String getPage( @PathVariable("url") String url ) {
        if (url != null) {
            return url;
        }
        return "error";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login( User user, Map map ) {
        String url = "";
        User user1 = userBiz.login(user);
        if (user1 != null) {
            map.put("user", user1);
            url = "redirect:/userControl/getAllUser";
        } else {
            url = "error";
        }
        return url;
    }

    @RequestMapping("/register")
    public String register( User user ) {
        String url = "";
        boolean flag = userBiz.register(user);
        if (flag == true) {
            url = "login";
        } else {
            url = "error";
        }

        return url;
    }

    @RequestMapping("/getAllUser")
    public  String getAllUser(Map map){
        List<User> userList = userBiz.getAllUser();
        int usersCount = userBiz.usersCount();
        map.put("usersCount",usersCount);
        map.put("userList",userList);
        return "show";
    }

    @RequestMapping(value = "/findUserByName",method = RequestMethod.POST)
    public String findUserByName(HttpServletRequest request){
        String name=request.getParameter("keyword");
        List<User> userByName = userBiz.findUserByName(name);
        request.setAttribute("userList", userByName);
        return "find";
    }

    @RequestMapping(value = "/deleteUser/{id}",method = RequestMethod.GET)
    public String deleteUser(@PathVariable Integer id){
        userBiz.deleteUser(id);
        return "redirect:/userControl/getAllUser";
    }

    @RequestMapping(value = "/updeteMessage/{id}",method = RequestMethod.POST)
    public String updeteMessage(@PathVariable Integer id,HttpServletRequest request){
        User user=userBiz.findUserById(id);
        user.setUsername(request.getParameter("username"));
        user.setUserpass(request.getParameter("userpass"));
        userBiz.updeteMessage(user);
        return "redirect:/userControl/getAllUser";
    }

    @RequestMapping(value = "/findUserById/{id}")
    public String findUserById(@PathVariable Integer id,Map map){
        User myuser=userBiz.findUserById(id);
        map.put("myuser",myuser);
        return "updateMessage";
    }

    public void setUserBiz( UserBiz userBiz ) {
        this.userBiz = userBiz;
    }

}