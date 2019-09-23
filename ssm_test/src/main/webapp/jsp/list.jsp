<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户信息管理系统</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
    <script>
        function delItem(id) {
            if(confirm("您确定要删除该记录吗？")){
                location.href = "${pageContext.request.contextPath}/user/delete?id="+id;
            }
        }
    </script>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">用户信息列表</h3>



    <div style="float: right;margin: 5px;">

        <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/add.jsp">添加商品</a>
        <a class="btn btn-primary" href="add.html">删除选中</a>

    </div>

    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <th><input type="checkbox"></th>
            <th>编号</th>
            <th>商品名称</th>
            <th>商品价格</th>
            <th>生产日期</th>
            <th>商品描述</th>
        </tr>

        <c:forEach items="${p}" var="prduct" varStatus="s">
            <tr>
                <td><input type="checkbox" ></td>
                <td>${s.count}</td>
                <td>${prduct.name}</td>
                <td>${prduct.price}</td>
                <td>${prduct.date}</td>
                <td>${prduct.description}</td>
                <td><a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/product/find?id=${prduct.id}">修改</a>&nbsp;
                    <a class="btn btn-default btn-sm" href="javascript:void(0);" onclick="delItem(${product.id})">删除</a></td>
            </tr>

        </c:forEach>


    </table>
    <div>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${pb.currentPage > 1}">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/findAll?currentPage=${pb.currentPage - 1}&pageSize=${pb.pageSize}&name=${name}&address=${address}&email=${email}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pb.currentPage <= 1}">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>


                <c:forEach begin="1" end="${pb.totalPage}" var="i">
                    <c:if test="${pb.currentPage == i}">
                        <li class="active"><a href="javascript:void(0);">${i}</a></li>
                    </c:if>
                    <c:if test="${pb.currentPage != i}">
                        <li><a href="${pageContext.request.contextPath}/user/findAll?currentPage=${i}&pageSize=${pb.pageSize}&name=${name}&address=${address}&email=${email}">${i}</a></li>
                    </c:if>
                </c:forEach>


                <c:if test="${pb.currentPage < pb.totalPage}">
                    <li>
                        <a href="${pageContext.request.contextPath}/user/findAll?currentPage=${pb.currentPage + 1}&pageSize=${pb.pageSize}&name=${name}&address=${address}&email=${email}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pb.currentPage >= pb.totalPage}">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>


                <span style="font-size: 25px;margin-left: 5px;">
                    共${pb.totalCount}条记录，共${pb.totalPage}页
                </span>

            </ul>
        </nav>
    </div>
</div>
</body>
</html>
