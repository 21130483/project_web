<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Category" %>
<%@ page import="model.Origin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../css/addEditProduct.css">
</head>
<body>
<div class="noi-dung">
    <%
        String active = request.getParameter("active");
        List<Category> categories = (List) request.getAttribute("getCategories");
        List<Origin> origins = (List) request.getAttribute("getOrigins");
        ;

    %>
    <div class="them-sua-san-pham">
        <div class="thong-tin-san-pham">
            <p>Thông tin sản phẩm</p>
        </div>

        <%
            if (active.equals("add")) {
                int productIdAdd = (int) request.getAttribute("idAdd");
        %>
        <form action="add-edit-delete?active=add" method="post">
            <div class="dien-thong-tin">
                <div class="box">
                    Id sản phẩm
                    <input name="id" type="text" value="<%=productIdAdd%>" readonly>
                    Tên sản phẩm
                    <input name="name" type="text">
                    Nhà sản xuất
                    <input name="trademark" type="text">
                    Xuất sứ
                    <select name="categoryID">
                        <%
                            for (Category c : categories) {
                        %>
                        <option value="<%=c.getCategoryID()%>"><%=c.getName()%>
                        </option>
                        <%
                            }
                        %>

                    </select>
                </div>


                <div class="box">
                    Loại sản phẩm
                    <select name="originID">
                        <%
                            for (Origin o : origins) {
                        %>
                        <option value="<%=o.getOriginID()%>"><%=o.getName()%>
                        </option>
                        <%
                            }
                        %>

                    </select>
                    Giá bán
                    <input name="price" type="number">
                    Số lượng
                    <input name="quantity" type="number">
                    Giảm giá
                    <input name="sale" type="number">
                </div>


            </div>

            <div class="hinh-anh">
                Hình ảnh
                <input name="images" type="file" accept="image/*" formenctype="multipart/form-data" multiple enctype="multipart/form-data">
            </div>

            <div class="chi-tiet">
                Chi tiết
                <textarea name="content"></textarea>
            </div>

            <div class="button-them-huy">
                <button type="submit" style="background-color: inherit;border: none; height: auto; width: auto" >
                    <div class="them">
                        Cập nhật
                    </div>
                </button>

                <a href="admin?page=product">
                    <div class="huy">
                        Hủy
                    </div>
                </a>
                <!-- <button class="them">Thêm sản phẩm</button>
                <button class="huy">Hủy</button> -->
            </div>
        </form>
        <%

        } else if (active.equals("edit")) {
            Product p = (Product) request.getAttribute("productEdit");
        %>
        <form action="add-edit-delete?active=edit" method="post">
            <div class="dien-thong-tin">
                <div class="box">
                    Id sản phẩm
                    <input name="id" type="text" value="<%=p.getProductID()%>" readonly>
                    Tên sản phẩm
                    <input name="name" type="text" value="<%=p.getName()%>">
                    Nhà sản xuất
                    <input name="trademark" type="text" value="<%=p.getTrademark()%>">
                    Xuất sứ
                    <select name="categoryID">
                        <%
                            for (Category c : categories) {
                        %>
                        <option value="<%=c.getCategoryID()%>"><%=c.getName()%>
                        </option>
                        <%
                            }
                        %>

                    </select>
                </div>


                <div class="box">
                    Loại sản phẩm
                    <select name="originID">
                        <%
                            for (Origin o : origins) {
                        %>
                        <option value="<%=o.getOriginID()%>"
                                <%
                                    if (o.getOriginID() == p.getOriginID()) {
                                %>
                                selected
                                <%
                                    }
                                %>
                        ><%=o.getName()%>
                        </option>
                        <%
                            }
                        %>

                    </select>
                    Giá bán
                    <input name="price" type="number" value="<%=p.getPrice()%>">
                    Số lượng
                    <input name="quantity" type="number" value="<%=p.getQuantity()%>">
                    Giảm giá
                    <input name="sale" type="number" value="<%=p.getSale()%>">
                </div>


            </div>

            <div class="hinh-anh">
                Hình ảnh
                <input name="images" type="file" accept="image/*" formenctype="multipart/form-data" multiple>
            </div>

            <div class="chi-tiet">
                Chi tiết
                <textarea name="content"><%=p.getContent()%>
            </textarea>
            </div>

            <div class="button-them-huy">
                <button type="submit" style="background-color: inherit;border: none;height: auto;width: auto">
                    <div class="them">
                        Cập nhật
                    </div>
                </button>

                <a href="admin?page=product">
                    <div class="huy">
                        Hủy
                    </div>
                </a>
                <!-- <button class="them">Thêm sản phẩm</button>
                <button class="huy">Hủy</button> -->
            </div>
        </form>
        <%

            }
        %>


        <%--        <div class="dien-thong-tin">--%>
        <%--            <div class="box">--%>
        <%--                Id sản phẩm--%>
        <%--                <input type="text">--%>
        <%--                Tên sản phẩm--%>
        <%--                <input type="text">--%>
        <%--                Nhà sản xuất--%>
        <%--                <input type="text">--%>
        <%--                Xuất sứ--%>
        <%--                <input type="text">--%>
        <%--            </div>--%>


        <%--            <div class="box">--%>
        <%--                Loại sản phẩm--%>
        <%--                <input type="text">--%>
        <%--                Giá bán--%>
        <%--                <input type="text">--%>
        <%--                Số lượng--%>
        <%--                <input type="text">--%>
        <%--                Giảm giá--%>
        <%--                <input type="text" placeholder="1% - 100%">--%>
        <%--            </div>--%>


        <%--        </div>--%>

        <%--        <div class="hinh-anh">--%>
        <%--            Hình ảnh--%>
        <%--            <input type="text">--%>
        <%--        </div>--%>

        <%--        <div class="chi-tiet">--%>
        <%--            Chi tiết--%>
        <%--            <textarea></textarea>--%>
        <%--        </div>--%>

        <%--        <div class="button-them-huy">--%>
        <%--            <a href="quanlysanpham.html">--%>
        <%--                <div class="them">--%>
        <%--                    Thêm sản phẩm--%>
        <%--                </div>--%>
        <%--            </a>--%>

        <%--            <a href="quanlysanpham.html">--%>
        <%--                <div class="huy">--%>
        <%--                    Hủy--%>
        <%--                </div>--%>
        <%--            </a>--%>
        <%--            <!-- <button class="them">Thêm sản phẩm</button>--%>
        <%--            <button class="huy">Hủy</button> -->--%>
        <%--        </div>--%>
    </div>
</div>
</body>
</html>