  
<%@page import="java.sql.Connection"%>
<%@page import="web.shopping.DataBaseManagement"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sign up</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="signing.css">
    </head>
    <body style="background-image:linear-gradient(white, #5a88ca)">
        <!--    <body style="background-color: #5a88ca">-->
    <center>
        <p style="font-family:Brush Script MT; font-size: 40px; font-weight: 700;">
            Welcome to MANO Store!

        </p>
        <div class="cardHeading" style="display:inline-block; margin-right:20px;">
            <img src="https://tr2.cbsistatic.com/hub/i/r/2017/04/24/3bd1d175-2b26-409d-a9ba-c825f0852f34/resize/770x/5a46b86712f9cc2d817f5ba0b2e9d146/ecommerce.jpg" height="765px" width="460px"> 
        </div>
        <div class="cardBody" style="display:inline-block; margin-left: 20px">
            <center>
                <%
                    String checkbox1value = request.getParameter("phone");
                    String checkbox2value = request.getParameter("laptop");
                    String radioValue = request.getParameter("gender");
                    String username = request.getParameter("userName");
                    String passwd = request.getParameter("Password");
                    String email = request.getParameter("email");
                    String job = request.getParameter("job");
                    String address = request.getParameter("Address");
                    String birthday = request.getParameter("Birthday");
                    HttpSession sessionParameters;
                    sessionParameters = request.getSession(true);
                    sessionParameters.setAttribute("name", username);
                    sessionParameters.setAttribute("pass", passwd);
                    sessionParameters.setAttribute("email", email);
                    sessionParameters.setAttribute("add", address);
                    sessionParameters.setAttribute("job", job);
                    sessionParameters.setAttribute("birth", birthday);
                    sessionParameters.setAttribute("phone", checkbox1value);
                    sessionParameters.setAttribute("laptop", checkbox2value);
                    String field1 = (String) sessionParameters.getAttribute("name");
                    String field2 = (String) sessionParameters.getAttribute("email");
                    String field3 = (String) sessionParameters.getAttribute("pass");
                    String field4 = (String) sessionParameters.getAttribute("birth");
                    String field5 = (String) sessionParameters.getAttribute("add");
                    String field6 = (String) sessionParameters.getAttribute("job");
                %>
                <form style="align-content: center">


                    <p style="font-family:Comic Sans MS;">
                        please fill the following form carefully...
                    </p>
                    <br/> <br/> 
                    <label style="font-family:Comic Sans MS;">User name: </label>
                    <input type="text" class="txtbox" name="userName" <%if (field1 != null) {%>value="<%= field1%>"<%}%>
                           id="userName" placeholder="Enter user name" onkeyleave="changeVal()"/>
                    <br/> <br/> <br/>

                    <label style="font-family:Comic Sans MS;">Email: </label>
                    <input type="text" class="txtbox" name="email" <%if (field2 != null) {%>value="<%= field2%>"<%}%>
                           id="email" placeholder="Enter your email" />
                    <br/> <br/> <br/>

                    <label style="font-family:Comic Sans MS;">Password: </label>
                    <input type="password" class="txtbox" name="Password" <%if (field3 != null) {%>value="<%= field3%>"<%}%>id="Password" placeholder="Enter your paaword"/>
                    <br/> <br/> <br/>

                    <label style="font-family:Comic Sans MS;">Birthday: </label>
                    <input type="date" class="txtbox" name="Birthday" <%if (field4 != null) {%>value="<%= field4%>"<%}%>
                           id="Birthday" />
                    <br/> <br/> <br/>

                    <label style="font-family:Comic Sans MS;">Address: </label>
                    <input type="text" class="txtbox" name="Address" <%if (field5 != null) {%>value="<%= field5%>"<%}%>
                           id="Address" placeholder="Enter your Address"/>
                    <br/> <br/> <br/>

                    <label style="font-family:Comic Sans MS;">Job: </label>
                    <input type="text" class="txtbox" name="job" <%if (field6 != null) {%>value="<%= field6%>"<%}%>
                           id="job" placeholder="Enter your job profile"/>
                    <br/> <br/>

                    <label style="font-family:Comic Sans MS;">Interests: </label>
                    <br/> <br/>
                    <input type="checkbox" name="phone" id="phone" value="Phones"/>
                    <label style="font-family:Comic Sans MS;">Phones </label>
                    
                    <input type="checkbox" name="laptop" id="laptop" value="Laptops"/>
                    <label style="font-family:Comic Sans MS;">Laptops </label>
                    <br/> <br/> <br/>
                     <label style="font-family:Comic Sans MS;">Image: </label>
                    <br/> <br/>

                    <input type="radio" id="female" name="gender" value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgWjX5dynW04yySDP5IB4lW5UTRo3G0wPTZQ&usqp=CAU">
                    <label for="female"> <img  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgWjX5dynW04yySDP5IB4lW5UTRo3G0wPTZQ&usqp=CAU"  width="50px"></label>

                    <input type="radio" id="male" name="gender" value="data:image/jpeg;base64,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"/>
                    <label for="male"><img src="data:image/jpeg;base64,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" width="50px" height="58px"></label><br>

                    <br/> <br/> <br/>


                    <input class="btnstyle" type="submit" value="Sign Up" >
                </form>
            </center>
        </div>
        <br>
        <br>

        
    <%
        boolean flag = true;
        String regex = "^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        Pattern pattern = Pattern.compile(regex);
    %>
    <%
        if (username != null && passwd != null && email != null && address != null && birthday != null && job != null) {
            if (username == "" || passwd == "" || email == "" || address == "" || birthday == "" || job == "" || (checkbox1value == null && checkbox2value == null)|| radioValue == null) {
                flag = false;
    %>
    <center>
        <p style="color: red">Please Enter All Fields</p>
    </center>
    <%}
        if (email != "") {
            Matcher matcher = pattern.matcher(email);
            if (!(matcher.matches())) {
                flag = false;
    %>
    <center>
        <p style="color: red">email is not valid</p>
    </center>
    <% }
        }
        if (passwd.length() < 8 && passwd != "") {
            flag = false;
    %>
    <center>
        <p style="color: red">Password at least is 8</p>
    </center>
    <% }
        if (username != "") {
            ServletContext servletContext = this.getServletContext();
            Connection c= (Connection)servletContext.getAttribute("getConnection");
            String checkFlag = DataBaseManagement.checkSiginUp(c,username);
            if (checkFlag.equals("true") && flag) {
                String cart_id =  DataBaseManagement.insertCart_includes(c);
                String customer_id =  DataBaseManagement.insertCustomer(c,Integer.parseInt(cart_id),radioValue,50000,birthday,address,username,email,passwd,job);
                DataBaseManagement.insertUserInterests(c,Integer.parseInt(customer_id),checkbox1value,checkbox2value);
                sessionParameters.setAttribute("userType", "customer");
                sessionParameters.setAttribute("logInFlag", "true");
                sessionParameters.setAttribute("userName", username);
                sessionParameters.setAttribute("quanity", "0");
                sessionParameters.setAttribute("id_product", "0");
                response.sendRedirect("Header.jsp");
            } else if (checkFlag.equals("false")) {
    %>
    <center>
        <p style="color: red">Invalid username</p>
    </center>
    <%
                }
            }

}%>
  <p style="font-family:Comic Sans MS;display: inline">already have an account?</p>
        <button class="btnstyle" style="display: inline"><a href="/ShoppingWeb/SiginInPage.jsp">sign In</a></button>
        <br>
    </center>
   
</body>
</html>