<%-- 
    Document   : mainUI
    Created on : Sep 8, 2014, 8:52:00 AM
    Author     : Greg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Calculator</title>
        <link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="calcstyles.css">
    </head>
    <header>
        <span class="leading">Area</span><span class="ending">CALCULATOR</span>
    </header>
    <body>
        <h1 id="capsAttack">PICK YOUR CALCULATOR</h1>
        <div class="bigbox">
            <div class="boxes">

                <h1>Triangle Calculator:</h1>
                <form id="triangleCalculator" name="triangle" method="POST" action="TriangleController">
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

            </div>
            <div class="boxes">

                <form id="rectangleCalculator" name="rectangle" method="POST" action="RectangleController">
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

            </div>
            <div class="boxes">
                <h1>Circle Calculator:</h1>
                <form id="circleCalculator" name="circle" method="POST" action="CircleController">
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

            </div>
        </div>
        <div class="bigbox">
            <div class="boxes">
                <svg class="images" height="300" width="300">
                <polygon points="150,60 270,250 30,250" style="fill:none;stroke:black;stroke-width:3" />
                <text x = "234" y = "162" fill = "black" font-size = "15" transform="rotate(57 225,110)">
                Triangle Calculator
                </text>
                </svg>
            </div>
            <div class="boxes">
                <svg class="images" width="300" height="300">
                <rect x="50" y="50" width="200" height="200" style="fill:none;stroke-width:3;stroke:black" />
                <text x = "250" y = "80" fill = "black" font-size = "15" transform="rotate(90 225,90)">
                Rectangle Calculator
                </text>
                </svg> 
            </div>
            <div class="boxes">
                <svg class="images" height="300" width="300">
                <circle cx="150" cy="150" r="98" stroke="black" stroke-width="3" fill="none" />
                <text x = "230" y = "100" fill = "black" font-size = "15" transform="rotate(90 225,90)">
                Circle Calculator
                </text>
                </svg>
            </div>
        </div>
        <footer>
            <%
            Object obj = request.getAttribute("area");
            if (obj == null) {
                out.println("<h1 id=\"capsAttack\">RESULTS WILL SHOW HERE</h1>");
            } else {
                out.println("<h1>AREA IS: " + obj.toString() + "</h1>");
                //out.println("<h1>" + obj.toString() + "</h1>");
            }
        %>
        
        </footer>

    </body>
</html>
