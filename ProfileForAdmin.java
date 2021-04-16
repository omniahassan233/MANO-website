/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.shopping;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static web.shopping.DataBaseManagement.getCustomerInfo;
import static web.shopping.DataBaseManagement.selectInterests;

/**
 *
 * @author Nihal
 */
public class ProfileForAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //int id = 9;
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        ServletContext servletContext = getServletContext();
        Connection c = (Connection) servletContext.getAttribute("getConnection");
        ResultSet rs;
        System.out.println("web.shopping.ProfileForUser.doGet()");
        rs = getCustomerInfo(c, id);
        ResultSet interests = selectInterests(c, id);
        String result = null;
        response.getWriter().println(" <style>\n"
                + "    @import url(https://fonts.googleapis.com/css?family=Titillium+Web:400,700&subset=latin,latin-ext);\n"
                + "body\n"
                + "{\n"
                + "  margin: 0;\n"
                + "  padding: 0;\n"
                + "  text-align: center;\n"
                + "}\n"
                + "\n"
                + ".container\n"
                + "{\n"
                + "  position: relative;\n"
                + "  width: 100%;\n"
                + "  \n"
                + "}\n"
                + ".first,\n"
                + ".second,\n"
                + ".third\n"
                + "{  \n"
                + "  width: 100%;\n"
                + "  height: 600px;\n"
                + "  margin: 0;\n"
                + "  display: table;\n"
                + "  background-size: cover;\n"
                + "  background-attachment: fixed;\n"
                + "  background-repeat: no-repeat;\n"
                + "}\n"
                + ".first\n"
                + "{\n"
                + "  padding-top: 0px;\n"
                + "  margin-top: -50px;\n"
                + "}\n"
                + "/* https://companieshouse.blog.gov.uk/wp-content/uploads/sites/148/2018/10/shutterstock_264768506.jpg */\n"
                + ".first{background-image: url(https://i.ibb.co/Y8dPjFM/cover.jpg);}  \n"
                + ".second{background-image: url(https://besthqwallpapers.com/Uploads/23-11-2019/112658/thumb2-neon-light-background-neon-lasers-bright-purple-background-neon-backgrounds.jpg);}\n"
                + "\n"
                + "\n"
                + "body {\n"
                + "    /*background: url('https://wallpaperaccess.com/full/5122314.jpg') no-repeat center center;*/\n"
                + "    background-color: \"#fff\";\n"
                + "    /*background-size: 1100px 700px;\n"
                + "    //background-position: 30%;\n"
                + "    //background-attachment: fixed;*/\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  .text {\n"
                + "    font-family: raleway;\n"
                + "    font-size: 40px;\n"
                + "    position: absolute center;\n"
                + "    text-align: center;\n"
                + "    padding-left: 0%;\n"
                + "    color: #000;\n"
                + "    margin-top: 43px;\n"
                + "  }\n"
                + "  \n"
                + "  .text1 {\n"
                + "    font-family: raleway;\n"
                + "    font-size: 21px;\n"
                + "    text-align: center;\n"
                + "    margin-top: -20px;\n"
                + "    color: #000;\n"
                + "  }\n"
                + "  \n"
                + "  .image {\n"
                + "    text-align: center;\n"
                + "    width: 200px;\n"
                + "    /* Container's dimensions */\n"
                + "    \n"
                + "    height: 200px;\n"
                + "    -webkit-border-radius: 75%;\n"
                + "    -moz-border-radius: 75%;\n"
                + "    box-shadow: 0 0 0 1px #eee;\n"
                + "    /*background: url(\"https://images.unsplash.com/reserve/ysPfhVSzSP2m629CW0mw_selfPortrait.jpg?fit=crop&fm=jpg&h=700&q=80&w=1225\") center center no-repeat;*/\n"
                + "    background-size: cover;\n"
                + "    margin: auto;\n"
                + "    margin-top: 20px;\n"
                + "    margin-bottom: -30px;\n"
                + "    align-content: center;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  .trick {\n"
                + "    display: inline-block;\n"
                + "    vertical-align: middle;\n"
                + "    height: 150px;\n"
                + "  }\n"
                + "  \n"
                + "  .image:hover {\n"
                + "    box-shadow: 0px 5px 20px .9px #3F3F3F;\n"
                + "  }\n"
                + "  \n"
                + "  .image:hover {\n"
                + "    -webkit-transform: scale(1.12);\n"
                + "    transform: scale(1.12);\n"
                + "    -webkit-transition: 1.6s ease-in-out;\n"
                + "    transition: 1.6s ease-in-out;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  .trick:hover img {\n"
                + "    -webkit-transform: scale(1);\n"
                + "    transform: scale(1);\n"
                + "  }\n"
                + "  \n"
                + "  #overlay {\n"
                + "    -webkit-border-radius: 50%;\n"
                + "    -moz-border-radius: 50%;\n"
                + "    padding: 0 0 0 0;\n"
                + "    opacity: 1.0;\n"
                + "    -webkit-transition: opacity 2.25s ease;\n"
                + "    -moz-transition: opacity 10.25s ease;\n"
                + "  }\n"
                + "  \n"
                + "  #box:hover #overlay {\n"
                + "    opacity: 1;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  .panel-group{\n"
                + "    width:350px;\n"
                + "    margin:auto;\n"
                + "    /*margin:50px 400px 50px 400px;*/\n"
                + "    max-width:100%;\n"
                + "  }\n"
                + "  \n"
                + "  .panel-heading{\n"
                + "    background-color:transparent !important;\n"
                + "  }\n"
                + "  \n"
                + "  .title{\n"
                + "    text-align: center;\n"
                + "    background-color:transparent;\n"
                + "    color:#000;\n"
                + "    font-family:lato;\n"
                + "    font-weight:300;\n"
                + "    font-size:15px;\n"
                + "    max-width:100%;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  #accordion{\n"
                + "    background-color: transparent;\n"
                + "    max-width:100%;\n"
                + "    margin-bottom:200px;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  .btn-outline {\n"
                + "    color: inherit;\n"
                + "    transition: all 1.4s;\n"
                + "    background-color: transparent;\n"
                + "  }\n"
                + "  /* button CSS */\n"
                + "  \n"
                + "  .btn-danger.btn-outline {\n"
                + "    margin-top: 9px;\n"
                + "    background-color: transparent;\n"
                + "    color: #000;\n"
                + "    border-color: #000;\n"
                + "    padding:auto;\n"
                + "    padding:10px 0px 10px 0px;\n"
                + "    margin: 1px 5px 1px 0px;\n"
                + "    width: 100%;\n"
                + "    text-align:center;\n"
                + "    font-family: raleway;\n"
                + "    font-weight: 300;\n"
                + "    max-width:100%;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  .accordion {\n"
                + "    background-color: #5a88ca;\n"
                + "    color: #444;\n"
                + "    cursor: pointer;\n"
                + "    padding: 18px;\n"
                + "    width: 30%;\n"
                + "    border: none;\n"
                + "    text-align: left;\n"
                + "    outline: none;\n"
                + "    font-size: 15px;\n"
                + "    transition: 0.4s;\n"
                + "    text-align: center;\n"
                + "    font-family: cursive;\n"
                + "  }\n"
                + "  \n"
                + "  .active, .accordion:hover {\n"
                + "    background-color: #527ab3; \n"
                + "  }\n"
                + "  \n"
                + "  .panel {\n"
                + "    display: none;\n"
                + " \n"
                + "  }\n"
                + "  .pa{\n"
                + "    background-color: #527ab3;\n"
                + "    overflow: hidden;\n"
                + "    width: 355px;\n"
                + "    margin-left: 495px;\n"
                + "    opacity: 0.7;\n"
                + "    position: relative;\n"
                + "  }\n"
                + "  .Interests{\n"
                + "    text-align: left;\n"
                + "    width: 355px;\n"
                + "    margin-left: 300px;\n"
                + "    font-size: 20px;\n"
                + "  }\n"
                + "  #profile{\n"
                + "    font-family: \"Comic Sans MS\";\n"
                + "    color: #5a88ca;\n"
                + "  }\n"
                + "  \n"
                + "  #form{\n"
                + "    padding-top: 60px;\n"
                + "    padding-bottom: 40px;\n"
                + "  }\n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  \n"
                + "  /*---------    Contact Form    ------------*/\n"
                + "  \n"
                + "  input::-webkit-input-placeholder,\n"
                + "  textarea::-webkit-input-placeholder {\n"
                + "    color: #000;\n"
                + "    font-size: 15px;\n"
                + "  }\n"
                + "  /* on hover placeholder */\n"
                + "  \n"
                + "  input:hover::-webkit-input-placeholder,\n"
                + "  textarea:hover::-webkit-input-placeholder {\n"
                + "    color: #fff;\n"
                + "    font-size: 15px;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover:focus::-webkit-input-placeholder,\n"
                + "  textarea:hover:focus::-webkit-input-placeholder {\n"
                + "    color: #fff;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover::-moz-placeholder,\n"
                + "  textarea:hover::-moz-placeholder {\n"
                + "    color: #fff;\n"
                + "    font-size: 15px;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover:focus::-moz-placeholder,\n"
                + "  textarea:hover:focus::-moz-placeholder {\n"
                + "    color: #fff;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover::placeholder,\n"
                + "  textarea:hover::placeholder {\n"
                + "    color: #fff;\n"
                + "    font-size: 15px;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover:focus::placeholder,\n"
                + "  textarea:hover:focus::placeholder {\n"
                + "    color: #fff;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover::placeholder,\n"
                + "  textarea:hover::placeholder {\n"
                + "    color: #fff;\n"
                + "    font-size: 15px;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover:focus::-ms-placeholder,\n"
                + "  textarea:hover::focus:-ms-placeholder {\n"
                + "    color: #fff;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  #form {\n"
                + "    position: relative;\n"
                + "    width: 100%;\n"
                + "    margin: 0px auto 0px auto;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  input {\n"
                + "    font-family: raleway;\n"
                + "    font-size: 15px;\n"
                + "    width: 100%;\n"
                + "    height: 50px;\n"
                + "    padding: 0px 12px 0px 12px;\n"
                + "    background: transparent;\n"
                + "    outline: none;\n"
                + "    color: #726659;\n"
                + "    border: solid 1px #eee;\n"
                + "    border-bottom: none;\n"
                + "    transition: all 0.9s ease-in-out;\n"
                + "    -webkit-transition: all 0.9s ease-in-out;\n"
                + "    -moz-transition: all 0.9s ease-in-out;\n"
                + "    -ms-transition: all 0.9s ease-in-out;\n"
                + "  }\n"
                + "  \n"
                + "  input:hover {\n"
                + "    background: #ccc;\n"
                + "    color: #fff;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  textarea {\n"
                + "    width: 100%;\n"
                + "    max-width: 100%;\n"
                + "    height: 110px;\n"
                + "    max-height: 110px;\n"
                + "    padding: 15px;\n"
                + "    background: transparent;\n"
                + "    outline: none;\n"
                + "    color: #000;\n"
                + "    font-family: raleway;\n"
                + "    font-size: 25px;\n"
                + "    border: solid 1px #eee;\n"
                + "    transition: all 0.9s ease-in-out;\n"
                + "    -webkit-transition: all 0.9s ease-in-out;\n"
                + "    -moz-transition: all 0.9s ease-in-out;\n"
                + "    -ms-transition: all 0.9s ease-in-out;\n"
                + "  }\n"
                + "  \n"
                + "  textarea:hover {\n"
                + "    background: #ccc;\n"
                + "    color: #fff;\n"
                + "    font-family: raleway;\n"
                + "  }\n"
                + "  \n"
                + "  #submit {\n"
                + "    width: 100%;\n"
                + "    padding: 0;\n"
                + "    font-family: raleway;\n"
                + "    font-size: 20px;\n"
                + "    color: #000;\n"
                + "    outline: none;\n"
                + "    cursor: pointer;\n"
                + "    border: solid 1px #eee;\n"
                + "    border-top: none;\n"
                + "    margin-bottom: 0px;\n"
                + "  }\n"
                + "  \n"
                + "  #submit:hover {\n"
                + "    color: #fff;\n"
                + "    background-color: #ccc;\n"
                + "  }\n"
                + "    </style>");
        RequestDispatcher requestHeader = request.getRequestDispatcher("adminHeader.jsp");
        requestHeader.include(request, response);
        try {
            if (rs.next()) {
                try {
                    result = "<container>\n"
                            + "        <dev class=\"first\"></dev>\n"
                            + "        <h1 id=\"profile\">Profile</h1>\n"
                            + "    </container>\n"
                            + "    <container>\n"
                            + "  \n"
                            + "        <div class=\"box\">\n"
                            + "            <div id=\"overlay\">\n"
                            + "              <div class=\"image\" style=\"background-image: url(" + rs.getString(3) + ");\">\n"
                            + "                <div class=\"trick\">\n"
                            + "        \n"
                            + "                </div>\n"
                            + "              </div>\n"
                            + "        \n"
                            + "<div id=\"form\">"
                            //                            + "<form action=\"deletefromDb2?id=18\">\n"
                            + "<form>"
                            + "<button class=\"accordion\">User Name</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 20px;\">" + rs.getString("username") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Birthday</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 20px;\">" + rs.getString("birthday") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Password</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 20px;\">" + rs.getString("password") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Job</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 20px;\">" + rs.getString("job") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Email</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 20px;\">" + rs.getString("email") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Credit Limit</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 20px;\">" + rs.getString("credit_info") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Address</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <p style=\"width: 355px;margin-left: 495px;font-size: 18px;\">" + rs.getString("address") + "</p>\n"
                            + "</div>\n"
                            + "<br>\n"
                            + "<button class=\"accordion\">Interests</button>\n"
                            + "<div class=\"panel\">\n"
                            + "  <ul class=\"Interests\">\n";
                    while (interests.next()) {
                        result += "<li class=\"Interests\">" + interests.getString(2) + "</li>\n";
                    }
                    result += "  </ul>\n";
                    result += "</div>\n";
                    result += "</br>\n";
                    result += "</br>\n";
                    result += "<button type='submit' class='tablebtn' style=\"padding-top:5px; color:black;\" onclick=\"location.href='deletefromDb2?id=" + id + "';\">Delete</button>";
                    result += "</form>\n";
                    result += "</div>\n";
                    result += "    </container>\n";
                } catch (SQLException ex) {
                    Logger.getLogger(ProfileForAdmin.class.getName()).log(Level.SEVERE, null, ex);
                }
                response.getWriter().println(result);
//                RequestDispatcher requestFooter = request.getRequestDispatcher("Footer.html");
//                requestFooter.include(request, response);
                response.getWriter().println("<!-- Latest jQuery form server -->\n"
                        + "<script src=\"https://code.jquery.com/jquery.min.js\"></script>\n"
                        + "\n"
                        + "<!-- Bootstrap JS form CDN -->\n"
                        + "<script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n"
                        + "\n"
                        + "<!-- jQuery sticky menu -->\n"
                        + "<script src=\"js/owl.carousel.min.js\"></script>\n"
                        + "<script src=\"js/jquery.sticky.js\"></script>\n"
                        + "\n"
                        + "<!-- jQuery easing -->\n"
                        + "<script src=\"js/jquery.easing.1.3.min.js\"></script>\n"
                        + "\n"
                        + "<!-- Main Script -->\n"
                        + "<script src=\"js/main.js\"></script>\n"
                        + "<script src=\"js/search.js\"></script>\n"
                        + "<script src=\"js/toggle.js\"></script>\n"
                        + "<!-- Latest jQuery form server -->\n"
                        + "<script src=\"https://code.jquery.com/jquery.min.js\"></script>\n"
                        + "\n"
                        + "<!-- Slider -->\n"
                        + "<script type=\"text/javascript\" src=\"js/bxslider.min.js\"></script>\n"
                        + "<script type=\"text/javascript\" src=\"js/script.slider.js\"></script>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProfileForAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
