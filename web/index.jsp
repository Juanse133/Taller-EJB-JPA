<%-- 
    Document   : studentinfo
    Created on : 22/09/2021, 07:59:18 PM
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
    </head>
    <body>
        <h1>Student Information</h1>
        <form action="./StudentServlet" method="POST">
            <table>
                <tr>
                    <td>Student ID</td>
                    <td><input type="text" name="studentId" value="${student.studentId}"/></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname" value="${student.firstname}"/></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastname" value="${student.lastname}"/></td>
                </tr>
                <tr>
                    <td>Year Level</td>
                    <td><input type="text" name="yearLevel" value="${student.yearLevel}"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />
                    </td>
                </tr>
            </table>
        </form>
        <br>

        <h1>Courses Information</h1>
        <form action="./CursoServlet" method="POST">
            <table>
                <tr>
                    <td>Course ID</td>
                    <td><input type="text" name="codigoCurso" value="${curso.codigoCurso}"/></td>
                </tr>
                <tr>
                    <td>Course Name</td>
                    <td><input type="text" name="nombreCurso" value="${curso.nombreCurso}"/></td>
                </tr>
                <tr>
                    <td>Credits</td>
                    <td><input type="text" name="creditos" value="${curso.creditos}"/></td>
                </tr>
                <tr>
                    <td>Semester</td>
                    <td><input type="text" name="semestre" value="${curso.semestre}"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />
                    </td>
                </tr>
            </table>
        </form>
        <br>
        <table border="1">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Year Level</th>
                <c:forEach items="${allStudents}" var="stud">
                <tr>
                    <td>${stud.studentId}</td>
                    <td>${stud.firstname}</td>
                    <td>${stud.lastname}</td>
                    <td>${stud.yearLevel}</td>
                </tr>
            </c:forEach>

        </table>
        <br>
        <table border="1">
            <th>Course ID</th>
            <th>Course Name</th>
            <th>Credits</th>
            <th>Semester</th>
                <c:forEach items="${AllCursos}" var="cours">
                <tr>
                    <td>${cours.codigoCurso}</td>
                    <td>${cours.nombreCurso}</td>
                    <td>${cours.creditos}</td>
                    <td>${cours.semestre}</td>
                </tr>
            </c:forEach>
    </body>
</html>
