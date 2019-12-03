package cn.swun.servlet;

import cn.swun.dao.UserDao;
import cn.swun.entity.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("GBK");
        //获取用户名和密码
        String username = request.getParameter("username");

        String password = request.getParameter("password");
        //获取UserDao实例
        UserDao userDao = new UserDao();

        User user = userDao.login(username,password);
        // 判断user是否为空
        if(user != null){
            // 转发到LoginSuccess.jsp页面
            //  getRequestDispatcher()是请求转发
            request.getRequestDispatcher("LoginSuccess.jsp").forward(request, response);
        }else{
            // 登录失败
            request.getRequestDispatcher("LoginFailed.jsp").forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}

