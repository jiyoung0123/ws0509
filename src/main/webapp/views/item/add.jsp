<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let item_add={
        init:function(){
            $('#register_btn').click(function(){
                item_add.send();
            });
        },
        send:function(){
            $('#register_form').attr({
                method:'post',
                action:'/item/addimpl',
                //type 에 대한 것도 전송을 하겠다는것. enctype 셋팅
                enctype:'multipart/form-data'
            });
            $('#register_form').submit();
        }
    };

    $(function(){
        item_add.init();
    })
</script>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Item Add</h1>

    <!-- DataForm Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Item Add</h6>
        </div>
        <div class="card-body">
            <div id="container">
                <form id="register_form" class="form-horizontal well">

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">이름:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="price">Price:</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" placeholder="Enter Price" id="price" name="price">
                        </div>

                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="img">Image:</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" id="img" placeholder="Input image" name="img">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button id="register_btn" type="button" class="btn btn-info">Register</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>