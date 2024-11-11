<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link rel="stylesheet" href="../../css/swiper.min.css" />
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
		}
		#app {
			position: relative;
			z-index: 1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px #c2c2c2;
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 34px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 10px;
			background-color: rgba(142, 182, 160, 1);
			box-shadow: 0 0 6px #c2c2c2;
		}
	
		.recommend {
		  padding: 10px 0;
		  display: flex;
		  justify-content: center;
		  background-repeat: no-repeat;
		  background-position: center center;
		  background-size: cover;
		}
	
		.recommend .box {
		    width: 1014px;
		}
	
		.recommend .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.recommend .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.recommend .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv1 .box .list .list-item {
			flex: 0 0 25%;
			padding: 0 5px;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 5px;
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.recommend .box .list img {
			width: 100%;
			height: 100px;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.recommend .box .list .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			text-align: center;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.recommend .box .list .list-item5 {
			flex: 0 0 20%;
		}
		
		/* 商品推荐-样式4-开始 */
		.recommend .list-4{
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: center;
		}
		.recommend .list-4 .list-4-body {
		    display: flex;
		    flex-direction: column;
		}
		
		.recommend .list-4 .list-4-item {
		    position: relative;
		    z-index: 1;
		}
		.recommend .list-4 .list-4-item.item-1 {
		    width: 400px;
		    height: 400px;
		    margin-right: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-2 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-3 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item.item-4 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-5 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item img {
		      width: 100%;
		      height: 100%;
		      object-fit: cover;
		      display: block;
		    }
		
		.recommend .list-4 .list-4-item .list-4-item-center {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: auto;
			display: flex;
			flex-wrap: wrap;
			background-color: rgba(0,0,0,.3);
		}
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-title {
			width: 50%;
			text-align: left;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-price {
			width: 50%;
			text-align: right;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		/* 商品推荐-样式4-结束 */
		/* 商品推荐-样式5-开始 */
		.recommend .recommend-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .recommend-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		
		.recommend .lists-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend .lists-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		/* 商品推荐-样式5-结束 */
	
		.news {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
			width: 100%;
		}
	
		.news .box {
		    width: 1014px;
		}
	
		.news .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.news .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.news .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		.index-pv2 .box .list .list-item {
			flex: 0 0 ${var2}%;
			padding: 0 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 10px;
			box-sizing: border-box;
			display: flex;
			cursor: pointer;
		}
	
		.news .box .list .list-item .list-item-body img {
			width: 120px;
			height: 100%;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.news .box .list .list-item .list-item-body .item-info {
			flex: 1;
			display: flex;
			justify-content: space-between;
			flex-direction: column;
			padding-left: 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body .item-info .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			box-sizing: border-box;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item .list-item-body .item-info .time {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item1 {
			flex: 0 0 100%;
		}
	
		.news .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.lists {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
		}
	
		.lists .box {
		    width: 1014px;
		    overflow: hidden;
		}
	
		.lists .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.lists .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.lists .box .swiper-slide {
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.lists .box .swiper-slide .img-box {
			width: 100%;
			overflow: hidden;
		}
	
		.lists .box .swiper-slide .img-box img {
			width: 100%;
			height: 100%;
			object-fit: cover;
	    max-width: 100%;
		}
	.line1 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 1;
		overflow: hidden;
	}
	.line2 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 2;
		overflow: hidden;
	}
	.line3 {
		display: -webkit-box;
		-webkit-box-orient: vertical;
		-webkit-line-clamp: 3;
		overflow: hidden;
	}
	  	.index-pv3 .box .list .list-item {
	  		flex: 0 0 ${var3}%;
	  		padding: 0 10px;
	  		box-sizing: border-box;
	  	}
	
		.index-pv1 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.02) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.02) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.02) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		
		.index-pv1 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv2 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
		.index-pv3 .animation-box img:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1) rotate(0deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
	  
		.swiper-new-list-6 .swiper-wrapper {
			-webkit-transition-timing-function: linear;
			-moz-transition-timing-function: linear;
			-ms-transition-timing-function: linear;
			-o-transition-timing-function: linear;
			transition-timing-function: linear;
		}
		
		.idea {
		  display: flex;
		  flex-wrap: wrap;
		}
		.idea div {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-repeat: no-repeat;
		  background-size: 100% 100%;
		}
		.recommendIdea .box1 {
			margin: 0;
			padding: 0;
			width: 100%;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: url(http://codegen.caihongy.cn/20220112/f72c8cb45cff476495e9509bb95d63c8.png);
						background-image: true?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box2 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box3 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box4 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.recommendIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.newsIdea .box1 {
			margin: 0;
			padding: 0;
			width: 100%;
			height: 130px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0, 0, 0, 0);
						background-image: url(http://codegen.caihongy.cn/20220112/53a342e4665d48f399741ce888c51239.png);
						background-image: true?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box2 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box3 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box4 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.newsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		
		.listsIdea .box1 {
			margin: 0;
			padding: 0;
			width: 100%;
			height: 90px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0, 0, 0, 0);
						background-image: url(http://codegen.caihongy.cn/20220112/465598f05c9b408b8ded8a1418346266.png);
						background-image: true?:'';
			box-shadow: 0 0 0px rgba(0,0,0,0);
		}
		.listsIdea .box2 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box3 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box4 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 80px;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,.3);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box5 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box6 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box7 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box8 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box9 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
		.listsIdea .box10 {
			margin: 0;
			padding: 0;
			width: 0;
			height: 0;
			font-size: 14px;
			color: #FFF;
			border-radius: 0;
			border-width: 0;
			border-style: solid;
			border-color: #ccc;
			background-color: rgba(0,0,0,0);
						background-image: false?:'';
			box-shadow: 0 0 6px rgba(0,0,0,0);
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" style="overflow: hidden;" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"5px","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="baseurl+item.value" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->



            <!-- 推荐 -->
				<!-- 样式一 -->
				<div class="recommend index-pv1" :style='{"padding":"0px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220112/db7476855dd7424e90930e28f674545c.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1000px'>
					<div v-if="true && 1 == 1" class="idea recommendIdea" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"00px 0 0 -46%","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"192%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"40px 0 50px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"24px","borderStyle":"solid"}'>
				      <span>Recommend</span><span>门店信息推荐</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea recommendIdea" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"00px 0 0 -46%","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"192%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="list">
				      <div v-for="(item,index) in mendianxinxiRecommend" :key="index" @click="jump('../mendianxinxi/detail.jsp?id='+item.id)" class="list-item" :class="4=='3'?'list-item3':4=='5'?'list-item5':''">
				        <div class="list-item-body animation-box" :style='{"padding":"0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"4px 60%","borderWidth":"25px 0 0 0","borderStyle":"solid"}'>
							<img :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(0,0,0,.3)","borderRadius":"0 20px 20px 20px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"200px"}' :src="item.mendianfengmian?baseurl+item.mendianfengmian.split(',')[0]:''" alt="" />
							<div class="line1" v-if='true' :style='{"isshow":true,"padding":"10px","margin":"5px 0 0 0","backgroundColor":"rgba(0, 0, 0, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0 0 6px 6px","textAlign":"center","fontSize":"16px"}' class="name">{{item.mendianmingcheng}}</div>
				        </div>
				      </div>
				    </div>
				    <div class="clear"></div>
				    <div style="text-align: center;">
			    <button @click="jump('../mendianxinxi/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 0px rgba(255,0,0,0)","margin":"30px auto 10px","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"6px","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
					<div v-if="true && 1 == 3" class="idea recommendIdea" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"00px 0 0 -46%","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"192%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
            <!-- 推荐 -->
				<!-- 样式一 -->
				<div class="recommend index-pv1" :style='{"padding":"0px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220112/db7476855dd7424e90930e28f674545c.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1000px'>
					<div v-if="true && 1 == 1" class="idea recommendIdea" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"00px 0 0 -46%","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"192%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"40px 0 50px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(255, 255, 255, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"24px","borderStyle":"solid"}'>
				      <span>Recommend</span><span>商品信息推荐</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea recommendIdea" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"00px 0 0 -46%","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"192%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="list">
				      <div v-for="(item,index) in shangpinxinxiRecommend" :key="index" @click="jump('../shangpinxinxi/detail.jsp?id='+item.id)" class="list-item" :class="4=='3'?'list-item3':4=='5'?'list-item5':''">
				        <div class="list-item-body animation-box" :style='{"padding":"0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"rgba(255, 255, 255, 0)","borderRadius":"4px 60%","borderWidth":"25px 0 0 0","borderStyle":"solid"}'>
							<img :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(0,0,0,.3)","borderRadius":"0 20px 20px 20px","borderWidth":"0","width":"100%","borderStyle":"solid","height":"200px"}' :src="item.tupian?baseurl+item.tupian.split(',')[0]:''" alt="" />
							<div class="line1" v-if='true' :style='{"isshow":true,"padding":"10px","margin":"5px 0 0 0","backgroundColor":"rgba(0, 0, 0, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0 0 6px 6px","textAlign":"center","fontSize":"16px"}' class="name">{{item.shangpinmingcheng}}</div>
				        </div>
				      </div>
				    </div>
				    <div class="clear"></div>
				    <div style="text-align: center;">
			    <button @click="jump('../shangpinxinxi/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 0px rgba(255,0,0,0)","margin":"30px auto 10px","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"6px","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
					<div v-if="true && 1 == 3" class="idea recommendIdea" :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"00px 0 0 -46%","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,.3)","width":"192%","borderStyle":"solid","height":"auto"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 推荐 -->

            

			<!-- 新闻资讯 -->
				<div class="news index-pv2" style="display: flex;justify-content: center;width:100%" :style='{"padding":"10px 0 80px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220112/57a4376a056d4d7fb23a27d911c0d16f.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1000px'>
					<div v-if="true && 2 == 1" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0 20px","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"100%","borderStyle":"solid","height":"130px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"30px 0 30px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"0","alignItems":"center","borderWidth":"0","fontSize":"24px","borderStyle":"solid"}'>
				      <span>HOME NEWS</span><span>公告信息</span>
				    </div>
					<div v-if="true && 2 == 2" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0 20px","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"100%","borderStyle":"solid","height":"130px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div v-if="newsList.length" class="new-list-4" style="display: flex;flex-direction: column;align-items: center;">
				      <div class="new-list-body" style="display: flex;width: 100%;">
				        <div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new-list-item animation-box" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"33.33%","borderStyle":"solid","height":"250px"}'>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 0, 0, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"18px","borderStyle":"solid"}' class="new-list-item-title line1">{{newsList[0].title}}</div>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' class="descript  line3">{{newsList[0].introduction}}</div>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"rgba(0,0,0,0)","color":"#999","textAlign":"right","borderRadius":"0","borderWidth":"0 0 4px 0","width":"100%","lineHeight":"44px","fontSize":"12px","borderStyle":"solid"}' class="time">{{newsList[0].addtime}}</div>
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[0].id)" v-if="newsList.length>0" class="new-list-item animation-box" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"33.33%","borderStyle":"solid","height":"250px"}'>
				          <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"rgba(0, 0, 0, 0.5)","backgroundColor":"rgba(0,0,0,0)","borderRadius":"100px 100px 100px 0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' style="width: 100%;height: 100%;object-fit: cover;" :src="baseurl+newsList[0].picture" alt="">
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new-list-item animation-box" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"33.33%","borderStyle":"solid","height":"250px"}'>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 0, 0, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"18px","borderStyle":"solid"}' class="new-list-item-title line1">{{newsList[1].title}}</div>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' class="descript  line3">{{newsList[1].introduction}}</div>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"rgba(0,0,0,0)","color":"#999","textAlign":"right","borderRadius":"0","borderWidth":"0 0 4px 0","width":"100%","lineHeight":"44px","fontSize":"12px","borderStyle":"solid"}' class="time">{{newsList[1].addtime}}</div>
				        </div>
				      </div>
				      <div class="new-list-body" style="display: flex;width: 100%">
				        <div @click="jump('../news/detail.jsp?id='+newsList[1].id)" v-if="newsList.length>1" class="new-list-item animation-box" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"33.33%","borderStyle":"solid","height":"250px"}'>
				          <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"rgba(0, 0, 0, 0.5)","backgroundColor":"rgba(0,0,0,0)","borderRadius":"100px 100px 100px 0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' style="width: 100%;height: 100%;object-fit: cover;" :src="baseurl+newsList[1].picture" alt="">
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new-list-item animation-box" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"33.33%","borderStyle":"solid","height":"250px"}'>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(0, 0, 0, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"18px","borderStyle":"solid"}' class="new-list-item-title  line1">{{newsList[2].title}}</div>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"rgba(168, 168, 168, 1)","textAlign":"left","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' class="descript  line3">{{newsList[2].introduction}}</div>
				          <div style="box-sizing: border-box;" :style='{"padding":"0 10px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"rgba(0,0,0,0)","color":"#999","textAlign":"right","borderRadius":"0","borderWidth":"0 0 4px 0","width":"100%","lineHeight":"44px","fontSize":"12px","borderStyle":"solid"}' class="time">{{newsList[2].addtime}}</div>
				        </div>
				        <div @click="jump('../news/detail.jsp?id='+newsList[2].id)" v-if="newsList.length>2" class="new-list-item animation-box" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"#ccc","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","width":"33.33%","borderStyle":"solid","height":"250px"}'>
				          <img :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,.3)","margin":"0","borderColor":"rgba(0, 0, 0, 0.5)","backgroundColor":"rgba(0,0,0,0)","borderRadius":"100px 100px 100px 0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' style="width: 100%;height: 100%;object-fit: cover;" :src="baseurl+newsList[2].picture" alt="">
				        </div>
				      </div>
				    </div>
				    <div class="clear"></div>
				    <div style="text-align: center;">
					<button @click="jump('../news/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 0px rgba(255,0,0,0)","margin":"30px auto 10px","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"6px","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
				    </div>
					<div v-if="true && 2 == 3" class="idea newsIdea" :style='{"padding":"10px 5px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"10px 0 20px","borderColor":"#ccc","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"100%","borderStyle":"solid","height":"130px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 新闻资讯 -->

			

			<!-- 图文列表 -->
				<div class="recommend index-pv3" :style='{"padding":"0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220112/cdb4e4c6c564475fbc14e2799f7d18a6.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1000px'>
					<div v-if="true && 1 == 1" class="idea listsIdea" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 -46%","borderColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"192%","borderStyle":"solid","height":"90px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"isshow":true,"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"40px 0 50px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"32px","alignItems":"center","borderWidth":"0","fontSize":"24px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>宠物医疗展示</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea listsIdea" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 -46%","borderColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"192%","borderStyle":"solid","height":"90px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
					<div class="list-4">
					    <div v-if="chongwuyiliaoList.length>0" class="list-4-item animation-box item-1" @click="jump('../chongwuyiliao/detail.jsp?id='+chongwuyiliaoList[0].id)" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 40px 0 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"340px","borderStyle":"solid","height":"370px"}'>
									<img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="chongwuyiliaoList[0].xiangmufengmian?baseurl+chongwuyiliaoList[0].xiangmufengmian.split(',')[0]:''" alt="" />
					    			<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{chongwuyiliaoList[0].xiangmumingcheng}}</div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="chongwuyiliaoList.length>1" @click="jump('../chongwuyiliao/detail.jsp?id='+chongwuyiliaoList[1].id)" class="list-4-item animation-box item-2" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 40px 0px 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"280px","borderStyle":"solid","height":"310px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="chongwuyiliaoList[1].xiangmufengmian?baseurl+chongwuyiliaoList[1].xiangmufengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{chongwuyiliaoList[1].xiangmumingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="chongwuyiliaoList.length>2" @click="jump('../chongwuyiliao/detail.jsp?id='+chongwuyiliaoList[2].id)" class="list-4-item animation-box item-3" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 0px 0 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"0","borderStyle":"solid","height":"0"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="chongwuyiliaoList[2].xiangmufengmian?baseurl+chongwuyiliaoList[2].xiangmufengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{chongwuyiliaoList[2].xiangmumingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="chongwuyiliaoList.length>3" @click="jump('../chongwuyiliao/detail.jsp?id='+chongwuyiliaoList[3].id)" class="list-4-item animation-box item-4" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 0 40px 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"280px","borderStyle":"solid","height":"135px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="chongwuyiliaoList[3].xiangmufengmian?baseurl+chongwuyiliaoList[3].xiangmufengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
								<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{chongwuyiliaoList[3].xiangmumingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="chongwuyiliaoList.length>4" @click="jump('../chongwuyiliao/detail.jsp?id='+chongwuyiliaoList[4].id)" class="list-4-item animation-box item-5" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"280px","borderStyle":"solid","height":"135px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="chongwuyiliaoList[4].xiangmufengmian?baseurl+chongwuyiliaoList[4].xiangmufengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{chongwuyiliaoList[4].xiangmumingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					</div>
					<div class="clear"></div>
					<div style="text-align: center;">
					<button @click="jump('../chongwuyiliao/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 0px rgba(255,0,0,0)","margin":"30px auto 10px","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"6px","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
					</div>
					<div v-if="true && 1 == 3" class="idea listsIdea" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 -46%","borderColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"192%","borderStyle":"solid","height":"90px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 图文列表 -->
				<div class="recommend index-pv3" :style='{"padding":"0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","background":"#fff url(\"http://codegen.caihongy.cn/20220112/cdb4e4c6c564475fbc14e2799f7d18a6.png\") no-repeat top","borderStyle":"solid"}'>
				  <div class="box" style='width:1000px'>
					<div v-if="true && 1 == 1" class="idea listsIdea" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 -46%","borderColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"192%","borderStyle":"solid","height":"90px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				    <div class="title" :style='{"isshow":true,"padding":"10px 0 10px 0","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"40px 0 50px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"rgba(247, 247, 247, 0)","color":"rgba(0, 0, 0, 1)","borderRadius":"32px","alignItems":"center","borderWidth":"0","fontSize":"24px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>相册信息展示</span>
				    </div>
					<div v-if="true && 1 == 2" class="idea listsIdea" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 -46%","borderColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"192%","borderStyle":"solid","height":"90px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
					<div class="list-4">
					    <div v-if="xiangcexinxiList.length>0" class="list-4-item animation-box item-1" @click="jump('../xiangcexinxi/detail.jsp?id='+xiangcexinxiList[0].id)" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 40px 0 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"340px","borderStyle":"solid","height":"370px"}'>
									<img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="xiangcexinxiList[0].xiangcefengmian?baseurl+xiangcexinxiList[0].xiangcefengmian.split(',')[0]:''" alt="" />
					    			<div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
										<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{xiangcexinxiList[0].xiangcemingcheng}}</div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="xiangcexinxiList.length>1" @click="jump('../xiangcexinxi/detail.jsp?id='+xiangcexinxiList[1].id)" class="list-4-item animation-box item-2" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 40px 0px 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"280px","borderStyle":"solid","height":"310px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="xiangcexinxiList[1].xiangcefengmian?baseurl+xiangcexinxiList[1].xiangcefengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{xiangcexinxiList[1].xiangcemingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="xiangcexinxiList.length>2" @click="jump('../xiangcexinxi/detail.jsp?id='+xiangcexinxiList[2].id)" class="list-4-item animation-box item-3" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 0px 0 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"0","borderStyle":"solid","height":"0"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="xiangcexinxiList[2].xiangcefengmian?baseurl+xiangcexinxiList[2].xiangcefengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{xiangcexinxiList[2].xiangcemingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					    <div class="list-4-body">
					    			<div v-if="xiangcexinxiList.length>3" @click="jump('../xiangcexinxi/detail.jsp?id='+xiangcexinxiList[3].id)" class="list-4-item animation-box item-4" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0 0 40px 0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"280px","borderStyle":"solid","height":"135px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="xiangcexinxiList[3].xiangcefengmian?baseurl+xiangcexinxiList[3].xiangcefengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
								<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{xiangcexinxiList[3].xiangcemingcheng}}</div>
					    			  </div>
					    			</div>
					    			<div v-if="xiangcexinxiList.length>4" @click="jump('../xiangcexinxi/detail.jsp?id='+xiangcexinxiList[4].id)" class="list-4-item animation-box item-5" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0, .3)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"280px","borderStyle":"solid","height":"135px"}'>
					    			  <img :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"#ccc","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"100%"}' :src="xiangcexinxiList[4].xiangcefengmian?baseurl+xiangcexinxiList[4].xiangcefengmian.split(',')[0]:''" alt="" />
					    			  <div :style='{"padding":"0","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0, 0, 0, 0.39)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid","height":"auto"}' v-if="true" class="list-4-item-center">
					    			  	<div class="line1" :style='{"padding":"0 6px","boxShadow":"0 0 6px rgba(0,0,0,0)","margin":"0","borderColor":"#ccc","backgroundColor":"rgba(0,0,0,0)","color":"#fff","textAlign":"center","borderRadius":"0","borderWidth":"0","width":"100%","lineHeight":"44px","fontSize":"14px","borderStyle":"solid"}' class="list-4-item-title">{{xiangcexinxiList[4].xiangcemingcheng}}</div>
					    			  </div>
					    			</div>
					    </div>
					</div>
					<div class="clear"></div>
					<div style="text-align: center;">
					<button @click="jump('../xiangcexinxi/list.jsp')" style="display: block;cursor: pointer;" type="button" :style='{"padding":"0 15px","boxShadow":"0 0 0px rgba(255,0,0,0)","margin":"30px auto 10px","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"rgba(0, 0, 0, 1)","borderRadius":"6px","borderWidth":"2px","width":"auto","fontSize":"14px","borderStyle":"solid","height":"34px"}'>查看更多<i v-if="true" :style='{"isshow":true,"padding":"0 0 0 1px","fontSize":"14px","color":"rgba(0, 0, 0, 1)"}' class="layui-icon layui-icon-next"></i></el-button>
					</div>
					<div v-if="true && 1 == 3" class="idea listsIdea" :style='{"padding":"0","boxShadow":"0 0 0px rgba(0,0,0,0)","margin":"0 0 0 -46%","borderColor":"rgba(204, 204, 204, 0)","borderRadius":"0","borderWidth":"0","background":"rgba(0,0,0,0)","width":"192%","borderStyle":"solid","height":"90px"}'>
						<div class="box1"></div>
						<div class="box2"></div>
						<div class="box3"></div>
						<div class="box4"></div>
						<div class="box5"></div>
						<div class="box6"></div>
						<div class="box7"></div>
						<div class="box8"></div>
						<div class="box9"></div>
						<div class="box10"></div>
					</div>
				  </div>
				</div>
			<!-- 图文列表 -->


		</div>
		<script src="../../layui/layui.js"></script>
		<script src="../../js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {


                    // 推荐数据
					mendianxinxiRecommend: [],
                    // 推荐数据
					shangpinxinxiRecommend: [],



                    chongwuyiliaoList: [],
                    xiangcexinxiList: [],


                    // 轮播图
					swiperList: [],
					baseurl: '',
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					},
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#swiper',
								width: '100%',
								height: '400px',
								arrow: 'hover',
								anim: 'default',
								autoplay: 'true',
								interval: '3000',
								indicator: 'inside'
							});
						})
					}
				});
                

                // 新闻资讯
				http.request('news/list', 'get', {
					page: 1,
				}, function(res) {
					var newsList = res.data.list;
					
					vue.newsList = newsList;
					if (newsList.length > 0 && newsList.length <= 2) {
						vue.leftNewsList = res.data.list
					} else {
						var leftNewsList = []
						for (let i = 0; i <= 2; i++) {
							leftNewsList.push(newsList[i]);
						}
						vue.leftNewsList = leftNewsList
					}
					if (newsList.length > 2 && newsList.length <= 8) {
						var rightNewsList = []
						for (let i = 3; i <= newsList.length; i++) {
							rightNewsList.push(newsList[i]);
						}
						vue.rightNewsList = rightNewsList
						console.log('rightNewsList',rightNewsList,vue.rightNewsList)
					}
					
					let flag = 4;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#newsnews', options)
						})
					}
					
					if(flag == 6) {
						let sixSwiper = {
							loop: true,
							speed: 2500,
							slidesPerView: 3,
							spaceBetween: Number(10),
							centeredSlides: true,
							watchSlidesProgress: true,
							autoplay: {
							  delay: 0,
							  stopOnLastSlide: false,
							  disableOnInteraction: false
							}
						}
						
						vue.$nextTick(() => {
							new Swiper('#new-list-6news', sixSwiper)
						})
					}
				});

                

                // 获取推荐信息
      				var autoSortUrl = "mendianxinxi/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4 * 1 
				}, function(res) {
					vue.mendianxinxiRecommend = res.data.list
					let flag = 1;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
								new Swiper ('#recommendmendianxinxi', options)
								new Swiper ('#recommendshangpinxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipermendianxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});
                // 获取推荐信息
      				var autoSortUrl = "shangpinxinxi/autoSort";
				http.request(autoSortUrl, 'get', {
					page: 1,
					limit: 4 * 1 
				}, function(res) {
					vue.shangpinxinxiRecommend = res.data.list
					let flag = 1;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
								new Swiper ('#recommendmendianxinxi', options)
								new Swiper ('#recommendshangpinxinxi', options)
						})
					}
					
					// 商品推荐样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#recommend-five-swipershangpinxinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});

				

                http.request(`chongwuyiliao/list`, 'get', {
					page: 1,
				}, function(res) {
					vue.chongwuyiliaoList = res.data.list
					let flag = 4;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#listschongwuyiliao', options)
							new Swiper ('#listsxiangcexinxi', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperchongwuyiliao', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});
                http.request(`xiangcexinxi/list`, 'get', {
					page: 1,
				}, function(res) {
					vue.xiangcexinxiList = res.data.list
					let flag = 4;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					if(options.slidesPerView) {
						options.slidesPerView = Number(options.slidesPerView);
					}
					if(options.spaceBetween) {
						options.spaceBetween = Number(options.spaceBetween);
					}
					if(flag == 3) {
						vue.$nextTick(() => {
							new Swiper ('#listschongwuyiliao', options)
							new Swiper ('#listsxiangcexinxi', options)
						})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiperxiangcexinxi', {
								loop: true,
								speed: 500,
								slidesPerView: Number(5),
								spaceBetween: Number(10),
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});

				
			});
		</script>
	</body>
</html>
