<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>

</head>
</head>
<body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<div class="container" align="center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表-----删除书籍</small>
                </h1>

            </div>

        </div>
        <form action="${pageContext.request.contextPath}/book/deleateBook" method="post">
            <div class="form-group">
                <label for="bkname">书籍id号</label>
                <input type="text" name="bookID" class="form-control" id="bkname" required="ture">
            </div>
            <div class="form-group">
                <input type="submit" class="form-control"  value="确认删除">
            </div>




        </form>



    </div>

</html>