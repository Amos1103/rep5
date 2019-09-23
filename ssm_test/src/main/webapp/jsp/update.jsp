<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
    <head>
        <!-- 指定字符集 -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>修改商品</title>

        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container" style="width: 400px;">
        <h3 style="text-align: center;">修改商品</h3>
        <form action="${pageContext.request.contextPath}/product/update" method="post">
            <!--  隐藏域 提交id-->
            <input type="hidden" name="id" value="${product.id}">

          <div class="form-group">
            <label for="name">商品名称：</label>
            <input type="text" class="form-control" id="name" name="name"  value="${product.name}"  placeholder="请输入商品名称" />
          </div>
          <div class="form-group">
            <label for="price">商品价格：</label>
            <input type="text" class="form-control" id="price" name="price"  value="${product.price}"  placeholder="请输入商品价格" />
          </div>
          <div class="form-group">
            <label for="date">商品生产日期：</label>
            <input type="text" class="form-control" id="date" name="date"  value="${product.date}"  placeholder="请输入商品生产日期" />
          </div>
          <div class="form-group">
            <label for="description">商品描述：</label>
            <input type="text" class="form-control" id="description" name="description"  value="${product.description}"  placeholder="请输入商品商品描述" />
          </div>


             <div class="form-group" style="text-align: center">
                <input class="btn btn-primary" type="submit" value="提交" />
                <input class="btn btn-default" type="reset" value="重置" />
                <input class="btn btn-default" type="button" value="返回"/>
             </div>
        </form>
        </div>
    </body>
</html>