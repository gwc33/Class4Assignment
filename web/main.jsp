<%-- 
    Document   : main
    Created on : Sep 7, 2014, 1:24:48 PM
    Author     : Pip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>One Page Calculator</title>
    </head>
    <body>
        <%
            Object obj = request.getAttribute("area");
            if(obj==null){
                //out.println("Object was null");
            } else {
                out.println("<h1>Area is:</h1>");
                out.println(obj.toString());
            }
        %>
        
        
        <form name="rectangle" method="POST" action="RectangleController">
            <h1>Rectangle Calculator:</h1>
            <table>
                <tr>
                    <td>Enter the length:</td>
                    <td>
                        <input type="text" name="length" value=""/>
                    </td>
                </tr>
                <tr>
                    <td>Enter the width</td>
                    <td>
                        <input type="text" name="width" value=""/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" />
                    </td>
                </tr>
            </table>
        </form>
        <h1>Circle Calculator:</h1>
        <form name="circle" method="POST" action="CircleController">
            <table>
                <tr>
                    <td>Enter the radius:</td>
                    <td>
                        <input type="text" name="radius" value=""/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" />
                    </td>
                </tr>
            </table>
        </form>
        <h1>Triangle Calculator:</h1>
        <form name="triangle" method="POST" action="TriangleController">
            <table>
                <tr>
                    <td>Enter the first known side</td>
                    <td>
                        <input type="text" name="sideOne" value=""/>
                    </td>
                </tr>
                <tr>
                    <td>Enter the second known side</td>
                    <td>
                        <input type="text" name="sideTwo" value=""/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" />
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
