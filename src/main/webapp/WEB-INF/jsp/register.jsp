<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="breadcrumb-area">
    <div class="container">
        <div class="breadcrumb-content">
            <ul>
                <li><a href="index.html">Trang chủ</a></li>
                <li class="active">Đăng ký</li>
            </ul>
        </div>
    </div>
</div>
<!-- Li's Breadcrumb Area End Here -->
<!-- Begin Login Content Area -->
<div class="page-section mb-60">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-10 col-xs-12">
                <c:url value="/register" var="action" />
                <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
                    <form:form method="post" action="${action}"  enctype="multipart/form-data" modelAttribute="user">
                        <div class="login-form">
                            <h4 class="login-title">Đăng ký</h4>
                            <div class="row">
                                <div class="col-md-6 col-12 mb-20">
                                    <label>Họ</label>
                                    <form:input type="text" id="firstname" path="firstName" class="mb-0" />
                                    <form:errors path="firstName" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-6 col-12 mb-20">
                                    <label>Tên</label>
                                    <form:input type="text" id="lastname" path="lastName" class="mb-0" />
                                    <form:errors path="lastName" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-12 mb-20">
                                    <label>Email</label>
                                    <form:input type="email" id="email" path="email" class="mb-0" />
                                    <form:errors path="email" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-12 mb-20">
                                    <label>Số điện thoại</label>
                                    <form:input type="number" id="phone" path="phone" class="mb-0" />
                                    <form:errors path="phone" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-12 mb-20">
                                    <label>Loại tài khoản</label>
                                    <form:select path="userRole" class="list">
                                        <option value="customer">Người mua</option>
                                        <option value="seller">Người bán</option>
                                      
                                    </form:select>
                                    <form:errors path="userRole" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-12 mb-20">
                                    <label>Tên đăng nhập</label>
                                    <form:input type="text" id="username" path="username" class="form-control" />
                                    <form:errors path="username" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-6 mb-20">
                                    <label>Mật khẩu</label>
                                    <form:input type="password" id="password" path="password" class="mb-0" />
                                    <form:errors path="password" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-6 mb-20">
                                    <label>Nhập lại mật khẩu</label>
                                    <form:input type="password" id="confirm-password" path="confirmPassword" class="mb-0" />
                                    <form:errors path="password" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-md-6 col-md-12 mb-20">
                                    <label>Ảnh đại diện</label>
                                    <form:input type="file" id="avatar" path="file" class="mb-0"/>
                                    <form:errors path="file" cssClass="text-danger" element="div" />
                                </div>
                                <div class="col-12">
                                    <button class="register-button mt-0">Đăng ký</button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

