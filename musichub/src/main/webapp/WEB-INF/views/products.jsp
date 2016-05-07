<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="css" value="/resources/bootstrap/css"/>
<c:url var="js" value="/resources/bootstrap/js"/>
<c:url var="img" value="/resources/images/"/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Products Listing</title>
	
    <!-- CSS -->
    <link rel="stylesheet" href="${css}/bootstrap.min.css">
    <link rel="stylesheet" href="${css}/product.css">
    <style type="text/css">
        body { padding-top:50px; }
    </style>

    <!-- JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script type="text/javascript">
    
    angular.module('sortApp', [])

    .controller('mainController', function($scope) {
      // create the list  
      $scope.music = ${listofprod}
      
    });
    
    </script>
    <!-- <script src="${js}/product.js"></script> -->

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">LISTENING TO MUSIC</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">MUSICHUB</a></li>
        <li><a href="#">Home</a></li>
        <li><a href="#">AboutUs</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="products/getAllProducts">Guitar</a></li>
          <li><a href="products/getAllProducts">Piano</a></li>
          <li><a href="products/getAllProducts">Flute</a></li> 
        </ul>
      </li>
        <li><a href="register">Register Here</a></li>
        <li><a href="login">Login</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<div class="container" ng-app="sortApp" ng-controller="mainController">

    
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search music" ng-model="searchMusic">
      </div>      
    </div>
  </form>
  <table class="table table-bordered table-striped">
    

    <thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'id'; sortReverse = !sortReverse">
            Product ID 
            <span ng-show="sortType == 'id' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
          Music Type
            <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Brand
            <span ng-show="sortType == 'brand' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Product Price
            <span ng-show="sortType == 'brand' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Category
            <span ng-show="sortType == 'brand' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         More Info
            <span ng-show="sortType == 'brand' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic">
        <td>{{roll.product_id}}</td>
        <td>{{roll.product_name}}</td>
        <td>{{roll.product_price}}</td>
        <td>{{roll.product_brand}}</td>
        <td>{{roll.product_category}}</td>
        <td>
        <form action="productinfo">
        <input type="hidden" name="product_id" value="{{roll.product_id}}"/>
        <input type="hidden" name="product_name" value="{{roll.product_name}}"/>
        <input type="hidden" name="product_price" value="{{roll.product_price}}"/>
        <input type="hidden" name="product_brand" value="{{roll.product_brand}}"/>
        <input type="hidden" name="product_category" value="{{roll.product_category}}"/>
        <button type="submit" class="btn btn-link "><span class="glyphicon glyphicon-music" aria-hidden="true"></span></button>
        </form>
        </td>
      </tr>
    </tbody>
    
  </table>
  
  <p class="text-center text-muted">
    <a href="#">more info about MH</a>
  </p>
  
  <p class="text-center">
    by <a href="index">Musichub</a>
  </p>
  
</div><br>
 <footer class="container-fluid text-center">
  <p>Copyright: email:punit.sehgal@niit.com</p>
</footer>
</body>
</body>
</html>