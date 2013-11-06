<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>用户登陆</title>
    <link href="<%=request.getContextPath()%>/themes/metro/login.css" rel="stylesheet">
<script type="text/javascript">
	(function() {
		if (window.top != window.self) {
			window.top.location.reload();
		}
	})();
</script>
</head>

<body onload='document.f.j_username.focus();'>
<div>
    <div class="login-box" id="loginbox">
        <form name='f' action='<%=request.getContextPath()%>/j_spring_security_check' method='POST'>
            <table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td align="center" colspan="2" style="height:30px;"></td>
                </tr>
                <tr>
                    <td align="center" colspan="2" class="login-logo"></td>
                </tr>
                <tr>
                    <td colspan="2" class="login-logo-desc"><hr>General Development Platform</td>
                </tr>
                <tr>
                   <td colspan="2">
                     <div class="username">
                        <div class="param-input-image"> <input type="text" value="admin" name='j_username'/></div>
                     </div>
                   </td>
                </tr>
                <tr>
                     <td colspan="2">
                     <div class="password">
                        <div class="param-input-image"> <input type="password" value="admin" name='j_password'/></div>
                     </div>
                   </td>
                </tr>
                <tr class="select-login-style"> 
                    <td align="center">
                       <input  type="radio" value="" name='style' checked="checked" />网页版
                    </td>
                     <td align="center">
                       <input type="radio" value="desktop" name='style'/>桌面版
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                          <input class="button-login" onmouseover="this.className='button-login-hover'"  onmouseout= "this.className='button-login'" name="submit" value="登 陆"  type="submit" />
                          <input class="button-reset" onmouseover="this.className='button-reset-hover'"  onmouseout= "this.className='button-reset'" name="reset" value="重 置"  type="reset"  />
                     </td>
                </tr>
                <tr >
                    <td colspan="2"
                            valign="middle"
                            style="color: red; height: 30px"
                            align="center"><s:set
                            name="errorCode"
                            value="#parameters.errorCode[0]"/> <s:if
                            test="%{#errorCode != null}">
                        <s:text name="%{'loginerror.' + #errorCode}"></s:text>
                    </s:if></td>
                </tr>     
               
            </table>
        </form>
    </div>
</div>
</body>
</html>