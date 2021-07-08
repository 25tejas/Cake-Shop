<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
</head>
<body>
<div class="container ml-10">
    <div class="row">
        <div class="col-xs-12 col-md-4 offset-md-4">
            <div class="card ">
                <div class="card-header">
                    <div class="row">
                    	
                        <h3 class="text-xs-center">Payment Details</h3>
                        <img class="img-fluid cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <form action="ValidatePayment" >
                <div class="card-block">
                    
                        <div class="row mx-1" >
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group">
                                	<input type="hidden" name="cartid" value="${param.id}">
                                    <label>CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="number" name="cardno" class="form-control" placeholder="Valid Card Number" />
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mx-1">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input type="date" name="expdate" class="form-control" placeholder="MM / YY" />
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 float-xs-right">
                                <div class="form-group">
                                    <label>CVV CODE</label>
                                    <input type="number" name="cvv" class="form-control" placeholder="CVC" />
                                </div>
                            </div>
                        </div>
                        <div class="row mx-1">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <input type="text" name="name" class="form-control" placeholder="Card Owner Names" />
                                </div>
                            </div>
                        </div>
                    
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-12">
                            <input type="submit" class="btn btn-success btn-lg btn-block" value="Process payment"/>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>