<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>놀다괌</title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<style type="text/css">
		a:link{text-decoration:none; color:#646464;}
		a:visited{text-decoration:none; color:#646464;}
		a:active{text-decoration:none; color:#646464;}
		a:hover{text-decoration:none; color:#646464;}
	</style>
	
	<style>
	
	@import url(http://fonts.googleapis.com/earlyaccess/nanumpenscript.css);
	@import url(http://fonts.googleapis.com/earlyaccess/nanumbrushscript.css);
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothiccoding.css);

	body {
		background-image:url(../images/background.jpg);
		width:100%; 
		background-color:white; 
		margin:auto;
		background-repeat:no-repeat;
		font-family: 'Jeju Gothic', serif;

	}

		#top_head {
			width : 100%; 
			margin : 0px;
			overflow : auto;
			padding-bottom : 80px;
		}

		#top_title {
			width : 100%;
			text-align : center;
			padding-top : 40px;
			padding-bottom : 10px;
			color : white;
		}

		#top_title > .up_text{
			font-size : 35px;	
			margin-bottom : 10px;
			font-weight : 100;
			font-family: 'Nanum Brush Script', serif;
		}

		#top_title > .down_text{
			font-size : 60px;
			font-family: 'Jeju Gothic', serif;
		}

		#top_choice {
			width : 95%;
			width : -webkit-calc(100% - 50px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 50px); /* for Firefox */
			width :         calc(100% - 50px); /* for IE */
			height : 400px;
			overflow : auto;
			margin : 0 25px;
			background :  rgba(255,255,255,.7);
			border-top : 3px solid #ff6600;
		}

		#top_choice > .category {
			float:left;
			width : 220px;
			height : 400px;
		}

		#top_choice > .category > .content {
			float:left;
			width : 100%;
			height : 25%;
			display : table;
		}

		#top_choice > .category > .content > .category_list_on{
			float:left;
			width : 95%;
			width : -webkit-calc(100% - 20px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 20px); /* for Firefox */
			width :         calc(100% - 20px); /* for IE */
			height : 97%;
			background : #ffffff;
			color : #ff6600;
			text-align : center;
			display : table;
			border-bottom : 3px solid #ff6600;
		}

		#top_choice > .category > .content > .category_list_on > p{
			line-height : 100%;
			display : table-cell;
			vertical-align : middle;
			font-size : 20px;
			font-family: 'Jeju Gothic', serif;
		}

		#top_choice > .category > .content > .category_arrow_on{
			float : right;
			width: 0;
			height: 0;
			border-top: 20px solid transparent;
			border-left: 20px solid white;
			border-bottom: 20px solid transparent;
			margin-top : 30px;
		}

		#top_choice > .category > .content > .category_list_off{
			float:left;
			width : 95%;
			width : -webkit-calc(100% - 20px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 20px); /* for Firefox */
			width :         calc(100% - 20px); /* for IE */
			height : 100%;
			color : #999999;
			text-align : center;
			display : table;
			border-bottom : 3px solid #999999;
		}

		#top_choice > .category > .content > .category_list_off > p{
			line-height : 100%;
			display : table-cell;
			vertical-align : middle;
			font-size : 20px;
		}

		#top_choice > .category > .content > .category_arrow_off{
			display : none;
			float : right;
			width: 0;
			height: 0;
			border-top: 20px solid transparent;
			border-left: 20px solid white;
			border-bottom: 20px solid transparent;
			margin-top : 30px;
		}

		#top_choice > .content {
			float:left;
			width : 80%;
			width : -webkit-calc(100% - 220px - 20px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 220px - 20px); /* for Firefox */
			width :         calc(100% - 220px - 20px); /* for IE */
			height : 397px;
			padding-left : 20px;
		}

		#top_choice > .content > .inner {
			width : 95%;
			width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 30px); /* for Firefox */
			width :         calc(100% - 50px); /* for IE */
			height : 100%;
			margin : 0 15px;
		}

		#top_choice > .content > .inner > .title {
			width : 100%;
			text-align : left;
			height : 15%;
			display : table;
			padding-bottom : 10px;
		}

		#top_choice > .content > .inner > .title > p{
			margin : 0;
			display: table-cell;
			vertical-align: bottom;
			font-size : 20px;
		}

		#top_choice > .content > .inner > .content {
			visibility : hidden;
			width : 100%;
			background-color : white;
			height : 60%;
		}

		#top_choice > .content > .inner > .option {
			width : 100%;
			text-align : left;
			height : 25%;
		}

		#top_choice > .content > .inner > .option > .link {
			float : left;
			width : 50%;
			text-align : left;
			overflow : auto;
			display : table;
		}

		#top_choice > .content > .inner > .option > .link > .inner {
			width : 100%;
			height : 100px;
			text-align : left;
			display:table-cell;
			vertical-align : middle;
		}

		#top_choice > .content > .inner > .option > .link > .inner > a > img {
			float : left;
			height : 50px;
			margin : 0 10px;
		}

		#top_choice > .content > .inner > .option > .link > .inner > a > p {
			text-align : left;
			font-size : 20px;
			line-height : 50px;
			margin : 0;
		}

		#main {
			background : #ffffff;
			overflow : auto;
			padding : 0 20px;
		}

		#main > .title {
			width : 97%;
			width : -webkit-calc(100% - 15px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 15px); /* for Firefox */
			width :         calc(100% - 15px); /* for IE */
			border-bottom : 3px solid #ff6600;
			margin-top : 40px;
			margin-bottom : 35px;
			padding-bottom : 5px;
			padding-left : 15px;
			font-family: 'Nanum Gothic', serif;
			font-size : 24px;
			font-weight : bold;
		}

		#main > .form_box{
			width : 95%;
			width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 30px); /* for Firefox */
			width :         calc(100% - 30px); /* for IE */
			margin : 15px; 0;
			overflow : auto;
		}

		#main > .form_box > input{
			float : left;
			width : 98%;
			height : 60px;
			font-family: 'Jeju Gothic', serif;
			font-size : 20px;
			text-align : left;
			line-height : 20px;
			padding-left : 10px;
			width : -webkit-calc(50% - 10px - 12px); /* for Chrome, Safari */
			width :    -moz-calc(50% - 10px - 12px); /* for Firefox */
			width :         calc(50% - 10px - 12px); /* for IE */
			margin : 4px;
			border : 2px solid #999999;
		}

		#main > .form_box > input::-webkit-input-placeholder { padding-left : 20px; color: #999999; } /* Chrome/Opera/Safari */
		#main > .form_box > input::-moz-placeholder { padding-left : 20px; color: #999999; } /* Firefox 19+ */
		#main > .form_box > input:-ms-input-placeholder { padding-left : 20px; color: #999999; } /* IE 10+ */
		#main > .form_box > input:-moz-placeholder { padding-left : 20px; color: #999999; } /* Firefox 18- */
		
		#main > .form_box > .input_special{
			float : left;
			width : 47%;
			overflow : auto;
			font-family: 'Jeju Gothic', serif;
			font-size : 20px;
			text-align : left;
			line-height : 20px;
			width : -webkit-calc(50% - 12px); /* for Chrome, Safari */
			width :    -moz-calc(50% - 12px); /* for Firefox */
			width :         calc(50% - 12px); /* for IE */
			margin : 4px;
			border : 2px solid #ff6600;
		}

		#main > .form_box > .input_special > .top{
			display : table;
			width : 100%;
			height : 60px;
			border-bottom : 2px solid #ff6600;
		}

		#main > .form_box > .input_special > .top > .left {
			display : table-cell;
			vertical-align : middle;
			float : left;
			width : 22%;
			width : -webkit-calc(27% - 30px); /* for Chrome, Safari */
			width :    -moz-calc(27% - 30px); /* for Firefox */
			width :         calc(27% - 30px); /* for IE */
			padding-left : 30px;
		}

		#main > .form_box > .input_special > .top > .left > p {
			color : #999999;
		}

		#main > .form_box > .input_special > .top > .right {
			width : 57%;
			width : -webkit-calc(66% - 40px); /* for Chrome, Safari */
			width :    -moz-calc(66% - 40px); /* for Firefox */
			width :         calc(66% - 40px); /* for IE */
			padding-left : 20px;
			padding-right : 20px;
			display : table-cell;
			vertical-align : middle;
			float : right;
		}

		#main > .form_box > .input_special > .top > .right > div {
			color : #999999;
			float : left;
			-webkit-margin-before: 1em;
			-webkit-margin-after: 1em;
			-webkit-margin-start: 0px;
			-webkit-margin-end: 0px;
		}

		#main > .form_box > .input_special > .top > .icon {
			width : 5%;
			width : -webkit-calc(7% - 5px); /* for Chrome, Safari */
			width :    -moz-calc(7% - 5px); /* for Firefox */
			width :         calc(7% - 5px); /* for IE */
			display : table-cell;
			vertical-align : middle;
			float : right;
			padding-right : 5px;
		}

		#main > .form_box > .input_special > .top > .icon > p {
			color : #999999;
		}


		#main > .form_box > .input_special > .middle{
			display : table;
			width : 93%;
			width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 30px); /* for Firefox */
			width :         calc(100% - 30px); /* for IE */
			height : 60px;
			padding-left : 30px;
			margin : 10px 0;
		}
		
		#main > .form_box > .input_special > .middle > .left{
			display : table-cell;
			vertical-align : middle;
		}
		#main > .form_box > .input_special > .middle > .left > div{
			float : left;
		}

		#main > .form_box > .input_special > .middle > .right{
			display : table-cell;
			vertical-align : middle;
			height : 48px;
			padding : 6px 0;
		}
		
		#main > .form_box > .input_special > .middle > .right > .countbox{
			display : table-cell;
			vertical-align : middle;
			float : right;
			overflow : auto;
			height : 44px;
			border : 2px solid #999999;
			margin-right : 20px;
		}
		
		#main > .form_box > .input_special > .middle > .right > .countbox > .bt_up{
			float : left;
			width : 44px;
			height : 44px;
			font-size : 35px;
			line-height : 50px;
			text-align : center;
			color : #ff6600;
		}

		#main > .form_box > .input_special > .middle > .right > .countbox > .bt_down{
			float : left;
			width : 44px;
			height : 44px;
			font-size : 35px;
			line-height : 50px;
			text-align : center;
			color : #ff6600;
		}

		#main > .form_box > .input_special > .middle > .right > .countbox > .count{
			float : left;
			width : 120px;
			height : 44px;
			line-height : 50px;
			font-size : 23px;
			text-align : center;
			color : black;
			border:0;
			padding:0px;
			background : #f1f1f1;
		}

		#main > .form_box > .billing {
			float : left;
			width : 44%;
			width : -webkit-calc(50% - 40px); /* for Chrome, Safari */
			width :    -moz-calc(50% - 40px); /* for Firefox */
			width :         calc(50% - 40px); /* for IE */
			padding : 20px;
		}

		#main > .form_box > .billing > .normal_text {
			float : left;
			width : 100%;
			overflow : auto;
			color : #999999;
			font-size : 20px;
		}

		#main > .form_box > .billing > .normal_text > .left {
			float : left;
			padding-left : 30px;
		}

		#main > .form_box > .billing > .normal_text > .left > p {
			line-height : 40px;
			margin : 0;
		}
		
		#main > .form_box > .billing > .normal_text > .right {
			float : right;
			padding-right : 30px;
		}

		#main > .form_box > .billing > .normal_text > .right > p {
			line-height : 40px;
			margin : 0;
		}

		#main > .button_container {
			width : 95%;
			width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 30px); /* for Firefox */
			width :         calc(100% - 30px); /* for IE */
			margin : 30px 0;
			overflow : auto;
			height : 80px;
			text-align : center;
		}

		#main > .button_container > .button_design {
			display : table;
			width : 200px;
			height : 70px;
			margin : auto;
			background-color : #ff6600;
			color : #ffffff;
			font-size : 30px;
		}

		#main > .button_container > .button_design > p {
			display : table-cell;
			vertical-align : middle;
		}
		
		#list {
			background : #ffffff;
			overflow : auto;
			padding : 0 20px;
		}
		
		#list > .box{
			width : 100%;
			border-top : 2px solid #ff6600;
			border-bottom : 2px solid #000000;
		}

		table {
			width : 100%;
			text-align : center;
			border-collapse: collapse;
		}

		tr, td {
			border-bottom : 2px solid #aaaaaa;
			padding: 10px;
		}

		.col_1{
			width : 14%;
			padding : 20px 0;
		}

		.col_2{
			width : 19%;
			width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
			width :    -moz-calc(20% - 2px); /* for Firefox */
			width :         calc(20% - 2px); /* for IE */
			padding : 20px 0;
			border-left : 2px solid #ff6600;
		}

		.col_3{
			width : 19%;
			width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
			width :    -moz-calc(20% - 2px); /* for Firefox */
			width :         calc(20% - 2px); /* for IE */
			padding : 20px 0;
			border-left : 2px solid #ff6600;
		}

		.col_4{
			width : 12%;
			width : -webkit-calc(13% - 2px); /* for Chrome, Safari */
			width :    -moz-calc(15% - 2px); /* for Firefox */
			width :         calc(13% - 2px); /* for IE */
			padding : 20px 0;
			border-left : 2px solid #ff6600;
		}

		.col_5{
			width : 12%;
			width : -webkit-calc(13% - 2px); /* for Chrome, Safari */
			width :    -moz-calc(13% - 2px); /* for Firefox */
			width :         calc(13% - 2px); /* for IE */
			padding : 20px 0;
			border-left : 2px solid #ff6600;
		}

		.col_6{
			width : 19%;
			width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
			width :    -moz-calc(20% - 2px); /* for Firefox */
			width :         calc(20% - 2px); /* for IE */
			padding : 20px 0;
			border-left : 2px solid #ff6600;
		}

		#list > .total {
			width : 92%;
			width : -webkit-calc(100% - 80px); /* for Chrome, Safari */
			width :    -moz-calc(100% - 80px); /* for Firefox */
			width :         calc(100% - 80px); /* for IE */
			padding : 0 40px;
			height : 150px;
			overflow : auto;
			border-bottom : 2px solid #ff6600;
		}

		#list > .total > .left {
			float : left;
			display : table;
			width : 20%;
			height : 100%;
		}

		#list > .total > .left > p{
			display : table-cell;
			vertical-align : middle;
			font-size : 25px;
		}

		#list > .total > .right {
			float : right;
			width : 80%;
			height : 100%;
		}

		#list > .total > .right > .orange{
			text-align : right;
			width : 100%;
			float : right;
			color : #ff6600;
			font-size : 38px;
			margin-top : 40px;
		}

		#list > .total > .right > .dark{
			text-align : right;
			width : 100%;
			float : right;
			font-size : 20px;
		}


		#footer{
			width : 100%;
			height : 100px;
		}

		@media (max-width : 948px){
			#top_head {
				padding-bottom : 20px;
			}

			#top_title {
				width : 100%;
				padding-top : 10px;
				padding-bottom : 10px;
			}

			#top_title > .up_text{
				font-size : 30px;	
				margin-bottom : 5px;
			}

			#top_title > .down_text{
				font-size : 40px;
			}

			#top_choice {
				width : 95%;
				width : -webkit-calc(100% - 10px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 10px); /* for Firefox */
				width :         calc(100% - 10px); /* for IE */
				height : 390px;
				overflow : auto;
				margin : 0 5px;
				border-top : 0;
			}

			#top_choice > .category {
				float:left;
				width : 100%;
				height : 50px;
				overflow : auto;
				border-top : 2px solid #ff6600;
				border-bottom : 2px solid #ff6600;
			}

			#top_choice > .category > .content {
				float:left;
				width : 25%;
				height : 50px;
				display : table;
			}

			#top_choice > .category > .content > .category_list_on{
				width : 100%;
				height : 50px;
				border : 0;
			}

			#top_choice > .category > .content > .category_list_on > p{
				line-height : 100%;
				display : table-cell;
				vertical-align : middle;
				font-size : 20px;
			}

			#top_choice > .category > .content > .category_arrow_on{
				display : none;
			}

			#top_choice > .category > .content > .category_list_off{
				width : 100%;
				height : 50px;
				border : 0;
			}

			#top_choice > .category > .content > .category_list_off > p{
				line-height : 100%;
				display : table-cell;
				vertical-align : middle;
				font-size : 20px;
			}

			#top_choice > .category > .content > .category_arrow_off{
				display : none;
			}

			#top_choice > .content {
				float:left;
				width : 100%;
				height : 300px;
				padding-left : 0px;
			}

			#top_choice > .content > .inner {
				width : 95%;
				width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 30px); /* for Firefox */
				width :         calc(100% - 30px); /* for IE */
				height : 100%;
				margin : 0 15px;
			}

			#top_choice > .content > .inner > .title {
				width : 100%;
				height : 30px;
				padding : 15px 0 10px 5px;
			}

			#top_choice > .content > .inner > .title > p{
				margin : 0;
				font-size : 20px;
			}

			#top_choice > .content > .inner > .content {
				width : 100%;
				height : 220px;
			}

			#top_choice > .content > .inner > .option {
				height : 50px;
				margin-top : 5px;
			}

			#top_choice > .content > .inner > .option > .link {
				width : 50%;
			}

			#top_choice > .content > .inner > .option > .link > .inner {
				width : 100%;
				height : 50px;
			}

			#top_choice > .content > .inner > .option > .link > .inner > a > img {
				height : 40px;
				margin : 0 10px;
			}

			#top_choice > .content > .inner > .option > .link > .inner > a > p {
				font-size : 18px;
				line-height : 40px;
				margin : 0;
			}

			/* ============================================================== */

			#main {
				padding : 0 10px;
			}

			#main > .title {
				width : 97%;
				width : -webkit-calc(100% - 5px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 5px); /* for Firefox */
				width :         calc(100% - 5px); /* for IE */
				margin-top : 20px;
				margin-bottom : 10px;
				padding-bottom : 5px;
				padding-left : 5px;
				font-family: 'Jeju Gothic', serif;
				font-size : 18px;
				font-weight : lighter;
			}

			#main > .form_box{
				width : 95%;
				width : -webkit-calc(100% - 10px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 10px); /* for Firefox */
				width :         calc(100% - 10px); /* for IE */
				margin : 0 5px;
			}

			#main > .form_box > input{
				width : 98%;
				height : 35px;
				font-size : 16px;
				line-height : 20px;
				padding-left : 5px;
				width : -webkit-calc(50% - 5px - 12px); /* for Chrome, Safari */
				width :    -moz-calc(50% - 5px - 12px); /* for Firefox */
				width :         calc(50% - 5px - 12px); /* for IE */
				margin : 4px;
			}

			#main > .form_box > input::-webkit-input-placeholder { padding-left : 5px; color: #999999; } /* Chrome/Opera/Safari */
			#main > .form_box > input::-moz-placeholder { padding-left : 5px; color: #999999; } /* Firefox 19+ */
			#main > .form_box > input:-ms-input-placeholder { padding-left : 5px; color: #999999; } /* IE 10+ */
			#main > .form_box > input:-moz-placeholder { padding-left : 5px; color: #999999; } /* Firefox 18- */
			
			#main > .form_box > .input_special{
				float : left;
				width : 97%;
				width : -webkit-calc(100% - 12px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 12px); /* for Firefox */
				width :         calc(100% - 12px); /* for IE */
				overflow : auto;
				font-family: 'Jeju Gothic', serif;
				font-size : 16px;
				text-align : left;
				line-height : 20px;	
				margin : 4px;
				border : 2px solid #ff6600;
			}

			#main > .form_box > .input_special > .top{
				display : table;
				width : 100%;
				height : 35px;
				border-bottom : 2px solid #ff6600;
			}

			#main > .form_box > .input_special > .top > .left {
				display : table-cell;
				vertical-align : middle;
				float : left;
				height : 35px;
				width : 22%;
				width : -webkit-calc(27% - 30px); /* for Chrome, Safari */
				width :    -moz-calc(27% - 30px); /* for Firefox */
				width :         calc(27% - 30px); /* for IE */
				padding-left : 10px;
			}

			#main > .form_box > .input_special > .top > .left > p {
				color : #999999;
				line-height : 5px;
			}

			#main > .form_box > .input_special > .top > .right {
				width : 57%;
				width : -webkit-calc(66% - 40px); /* for Chrome, Safari */
				width :    -moz-calc(66% - 40px); /* for Firefox */
				width :         calc(66% - 40px); /* for IE */
				padding-left : 20px;
				padding-right : 20px;
				height : 35px;
				display : table-cell;
				vertical-align : middle;
				float : right;
			}

			#main > .form_box > .input_special > .top > .right > div {
				color : #999999;
				float : left;
				line-height : 5px;
				-webkit-margin-before: 1em;
				-webkit-margin-after: 1em;
				-webkit-margin-start: 0px;
				-webkit-margin-end: 0px;
			}

			#main > .form_box > .input_special > .top > .icon {
				width : 5%;
				width : -webkit-calc(7% - 5px); /* for Chrome, Safari */
				width :    -moz-calc(7% - 5px); /* for Firefox */
				width :         calc(7% - 5px); /* for IE */
				line-height : 0px;
				padding-right : 5px;
			}

			#main > .form_box > .input_special > .top > .icon > p {
				color : #999999;
			}


			#main > .form_box > .input_special > .middle{
				display : table;
				width : 93%;
				width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 30px); /* for Firefox */
				width :         calc(100% - 30px); /* for IE */
				height : 60px;
				padding-left : 30px;
				margin : 10px 0;
			}
			
			#main > .form_box > .input_special > .middle > .left{
				display : table-cell;
				vertical-align : middle;
			}
			#main > .form_box > .input_special > .middle > .left > div{
				float : left;
			}

			#main > .form_box > .input_special > .middle > .right{
				display : table-cell;
				vertical-align : middle;
				height : 48px;
				padding : 6px 0;
			}
			
			#main > .form_box > .input_special > .middle > .right > .countbox{
				display : table-cell;
				vertical-align : middle;
				float : right;
				overflow : auto;
				height : 44px;
				border : 2px solid #999999;
				margin-right : 20px;
			}
			
			#main > .form_box > .input_special > .middle > .right > .countbox > .bt_up{
				float : left;
				width : 44px;
				height : 44px;
				font-size : 35px;
				line-height : 50px;
				text-align : center;
				color : #ff6600;
			}

			#main > .form_box > .input_special > .middle > .right > .countbox > .bt_down{
				float : left;
				width : 44px;
				height : 44px;
				font-size : 35px;
				line-height : 50px;
				text-align : center;
				color : #ff6600;
			}

			#main > .form_box > .input_special > .middle > .right > .countbox > .count{
				float : left;
				width : 120px;
				height : 44px;
				line-height : 50px;
				font-size : 23px;
				text-align : center;
				color : black;
				border:0;
				padding:0px;
				background : #f1f1f1;
			}

			#main > .form_box > .billing {
				float : left;
				width : 44%;
				width : -webkit-calc(50% - 40px); /* for Chrome, Safari */
				width :    -moz-calc(50% - 40px); /* for Firefox */
				width :         calc(50% - 40px); /* for IE */
				padding : 20px;
			}

			#main > .form_box > .billing > .normal_text {
				float : left;
				width : 100%;
				overflow : auto;
				color : #999999;
				font-size : 20px;
			}

			#main > .form_box > .billing > .normal_text > .left {
				float : left;
				padding-left : 30px;
			}

			#main > .form_box > .billing > .normal_text > .left > p {
				line-height : 40px;
				margin : 0;
			}
			
			#main > .form_box > .billing > .normal_text > .right {
				float : right;
				padding-right : 30px;
			}

			#main > .form_box > .billing > .normal_text > .right > p {
				line-height : 40px;
				margin : 0;
			}

			#main > .button_container {
				width : 95%;
				width : -webkit-calc(100% - 30px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 30px); /* for Firefox */
				width :         calc(100% - 30px); /* for IE */
				margin : 30px 0;
				overflow : auto;
				height : 80px;
				text-align : center;
			}

			#main > .button_container > .button_design {
				display : table;
				width : 200px;
				height : 70px;
				margin : auto;
				background-color : #ff6600;
				color : #ffffff;
				font-size : 30px;
			}

			#main > .button_container > .button_design > p {
				display : table-cell;
				vertical-align : middle;
			}

		}

		@media (max-width : 640px){
		
			#top_head {
				padding-bottom : 20px;
			}

			#top_title {
				width : 100%;
				padding-top : 10px;
				padding-bottom : 10px;
			}

			#top_title > .up_text{
				font-size : 20px;	
				margin-bottom : 5px;
			}

			#top_title > .down_text{
				font-size : 25px;
			}

			#top_choice {
				width : 95%;
				width : -webkit-calc(100% - 10px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 10px); /* for Firefox */
				width :         calc(100% - 10px); /* for IE */
				height : 390px;
				overflow : auto;
				margin : 0 5px;
				border-top : 0;
			}

			#top_choice > .category {
				float:left;
				width : 100%;
				height : 50px;
				overflow : auto;
				border-top : 2px solid #ff6600;
				border-bottom : 2px solid #ff6600;
			}

			#top_choice > .category > .content {
				float:left;
				width : 25%;
				height : 50px;
				display : table;
			}

			#top_choice > .category > .content > .category_list_on{
				width : 100%;
				height : 50px;
				border : 0;
			}

			#top_choice > .category > .content > .category_list_on > p{
				line-height : 100%;
				display : table-cell;
				vertical-align : middle;
				font-size : 14px;
			}

			#top_choice > .category > .content > .category_arrow_on{
				display : none;
			}

			#top_choice > .category > .content > .category_list_off{
				width : 100%;
				height : 50px;
				border : 0;
			}

			#top_choice > .category > .content > .category_list_off > p{
				line-height : 100%;
				display : table-cell;
				vertical-align : middle;
				font-size : 14px;
			}

			#top_choice > .category > .content > .category_arrow_off{
				display : none;
			}

			#top_choice > .content {
				float:left;
				width : 100%;
				height : 300px;
				padding-left : 0px;
			}

			#top_choice > .content > .inner {
				width : 95%;
				width : -webkit-calc(100% - 20px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 20px); /* for Firefox */
				width :         calc(100% - 20px); /* for IE */
				height : 100%;
				margin : 0 10px;
			}

			#top_choice > .content > .inner > .title {
				width : 95%;
				width : -webkit-calc(100% - 20px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 20px); /* for Firefox */
				width :         calc(100% - 20px); /* for IE */
				height : auto;
				padding : 15px 10px 10px;
			}

			#top_choice > .content > .inner > .title > p{
				margin : 0;
				display: table-cell;
				vertical-align: bottom;
				font-size : 16px;
			}

			#top_choice > .content > .inner > .content {
				visibility : hidden;
				font-size : 14px;
				width : 100%;
				background-color : white;
				height : 60%;
				font-family: 'Nanum Gothic', serif;
			}

			#top_choice > .content > .inner > .option {
				width : 100%;
				text-align : left;
				height : 100px;
				overflow : auto;
			}

			#top_choice > .content > .inner > .option > .link {
				float : left;
				width : 100%;
				height : 50%;
				text-align : center;
				overflow : auto;
				display : table;
			}

			#top_choice > .content > .inner > .option > .link > .inner {
				width : 100%;
				height : 45px;
				padding : 5px 0px 0px 0px;
				text-align : left;
				display:table-cell;
				vertical-align : middle;
			}

			#top_choice > .content > .inner > .option > .link > .inner > a > img {
				float : left;
				height : 40px;
				margin : 0 20px;
			}

			#top_choice > .content > .inner > .option > .link > .inner > a > p {
				text-align : left;
				font-size : 15px;
				line-height : 40px;
				margin : 0;
			}

			/* ========================================================================= */

			#main {
				padding : 0 5px;
			}

			#main > .title {
				width : 97%;
				width : -webkit-calc(100% - 15px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 15px); /* for Firefox */
				width :         calc(100% - 15px); /* for IE */
				border-bottom : 3px solid #ff6600;
				margin-top : 20px;
				margin-bottom : 0px;
				padding-bottom : 5px;
				padding-left : 15px;
				font-family: 'Jeju Gothic', serif;
				font-size : 16px;
				font-weight : lighter;
			}

			#main > .form_box{
				width : 95%;
				width : -webkit-calc(100% - 10px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 10px); /* for Firefox */
				width :         calc(100% - 10px); /* for IE */
				margin : 5px; 0;
				overflow : auto;
			}

			#main > .form_box > input{
				width : 98%;
				height : 30px;
				font-family: 'Jeju Gothic', serif;
				font-size : 16px;
				line-height : 20px;
				padding-left : 10px;
				width : -webkit-calc(100% - 10px - 8px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 10px - 8px); /* for Firefox */
				width :         calc(100% - 10px - 8px); /* for IE */
				margin : 4px;
				border : 2px solid #999999;
			}

			#main > .form_box > input::-webkit-input-placeholder { padding-left : 0px; color: #999999; } /* Chrome/Opera/Safari */
			#main > .form_box > input::-moz-placeholder { padding-left : 0px; color: #999999; } /* Firefox 19+ */
			#main > .form_box > input:-ms-input-placeholder { padding-left : 0px; color: #999999; } /* IE 10+ */
			#main > .form_box > input:-moz-placeholder { padding-left : 0px; color: #999999; } /* Firefox 18- */
			
			#main > .form_box > .input_special{
				width : 97%;
				font-size : 16px;
				text-align : left;
				line-height : 10px;
				width : -webkit-calc(100% - 8px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 8px); /* for Firefox */
				width :         calc(100% - 8px); /* for IE */
				height : 168px;
				margin : 4px;
				border : 2px solid #ff6600;
			}

			#main > .form_box > .input_special > .top{
				display : table;
				width : 100%;
				height : 30px;
				border-bottom : 2px solid #ff6600;
			}

			#main > .form_box > .input_special > .top > .left {
				display : table-cell;
				vertical-align : middle;
				float : left;
				height : 30px;
				width : 22%;
				width : -webkit-calc(27% - 30px); /* for Chrome, Safari */
				width :    -moz-calc(27% - 30px); /* for Firefox */
				width :         calc(27% - 30px); /* for IE */
				padding-left : 10px;
			}

			#main > .form_box > .input_special > .top > .left > p {
				color : #999999;
				line-height : 0px;
			}

			#main > .form_box > .input_special > .top > .right {
				width : 57%;
				width : -webkit-calc(66% - 40px); /* for Chrome, Safari */
				width :    -moz-calc(66% - 40px); /* for Firefox */
				width :         calc(66% - 40px); /* for IE */
				padding-left : 20px;
				padding-right : 20px;
				height : 30px;
				display : table-cell;
				vertical-align : middle;
				float : right;
			}

			#main > .form_box > .input_special > .top > .right > div {
				color : #999999;
				float : left;
				line-height : 0px;
				-webkit-margin-before: 1em;
				-webkit-margin-after: 1em;
				-webkit-margin-start: 0px;
				-webkit-margin-end: 0px;
			}

			#main > .form_box > .input_special > .top > .icon {
				width : 5%;
				width : -webkit-calc(7% - 5px); /* for Chrome, Safari */
				width :    -moz-calc(7% - 5px); /* for Firefox */
				width :         calc(7% - 5px); /* for IE */
				line-height : 0px;
				padding-right : 5px;
			}

			#main > .form_box > .input_special > .top > .icon > p {
				color : #999999;
			}

			#main > .form_box > .input_special > .middle{
				display : table;
				width : 93%;
				width : -webkit-calc(100% - 15px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 15px); /* for Firefox */
				width :         calc(100% - 15px); /* for IE */
				height : 34px;
				padding-left : 15px;
				margin : 5px 0 0 0;
			}
			
			#main > .form_box > .input_special > .middle > .left{
				display : table-cell;
				vertical-align : middle;
			}

			#main > .form_box > .input_special > .middle > .left > div{
				float : left;
			}

			#main > .form_box > .input_special > .middle > .right{
				display : table-cell;
				vertical-align : middle;
				height : 34px;
				padding : 2px 0;
			}
			
			#main > .form_box > .input_special > .middle > .right > .countbox{
				display : table-cell;
				vertical-align : middle;
				float : right;
				overflow : auto;
				height : 30px;
				border : 2px solid #999999;
				margin-right : 20px;
			}
			
			#main > .form_box > .input_special > .middle > .right > .countbox > .bt_up{
				width : 30px;
				height : 26px;
				font-size : 24px;
				line-height : 26px;
				padding-top : 4px;
			}

			#main > .form_box > .input_special > .middle > .right > .countbox > .bt_down{
				width : 30px;
				height : 26px;
				font-size : 24px;
				line-height : 26px;
				padding-top : 4px;
			}

			#main > .form_box > .input_special > .middle > .right > .countbox > .count{
				width : 120px;
				height : 30px;
				line-height : 30px;
				font-size : 16px;
			}

			#main > .form_box > .billing {
				width : 92%;
				width : -webkit-calc(100% - 20px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 20px); /* for Firefox */
				width :         calc(100% - 20px); /* for IE */
				padding : 10px;
			}

			#main > .form_box > .billing > .normal_text {
				width : 100%;
				overflow : auto;
				color : #999999;
				font-size : 16px;
			}

			#main > .form_box > .billing > .normal_text > .left {
				padding-left : 10px;
			}

			#main > .form_box > .billing > .normal_text > .left > p {
				line-height : 30px;
				margin : 0;
			}
			
			#main > .form_box > .billing > .normal_text > .right {
				padding-right : 10px;
			}

			#main > .form_box > .billing > .normal_text > .right > p {
				line-height : 30px;
				margin : 0;
			}

			#main > .button_container {
				width : 100%;
				margin : 0 0 15px 0;
				height : 40px;
			}

			#main > .button_container > .button_design {
				width : 130px;
				height : 100%;
				font-size : 18px;
			}

			#main > .button_container > .button_design > p {
			}


			/* ============================================================== */

			#list {
				background : #ffffff;
				overflow : auto;
				padding : 0px;
			}
			
			#list > .box{
				width : 100%;
				border-top : 2px solid #ff6600;
				border-bottom : 2px solid #000000;
			}

			table {
				width : 100%;
				text-align : center;
				border-collapse: collapse;
				font-family: 'Nanum Gothic', serif;
				font-size : 12px;
			}

			tr, td {
				border-bottom : 2px solid #aaaaaa;
				padding: 0px;
				word-wrap : break-word;
				word-break : keep-all;
			}

			.col_1{
				display : none;
				width : 0%;
				padding : 0;
			}

			.col_2{
				width : 20%;
				padding : 5px 0;
				border-left : none;
			}

			.col_3{
				width : 18%;
				width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
				width :    -moz-calc(20% - 2px); /* for Firefox */
				width :         calc(20% - 2px); /* for IE */
				padding : 5px 0;
				border-left : 2px solid #ff6600;
			}

			.col_4{
				width : 18%;
				width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
				width :    -moz-calc(20% - 2px); /* for Firefox */
				width :         calc(20% - 2px); /* for IE */
				padding : 5px 0;
				border-left : 2px solid #ff6600;
			}

			.col_5{
				width : 18%;
				width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
				width :    -moz-calc(20% - 2px); /* for Firefox */
				width :         calc(20% - 2px); /* for IE */
				padding : 5px 0;
				border-left : 2px solid #ff6600;
			}

			.col_6{
				width : 18%;
				width : -webkit-calc(20% - 2px); /* for Chrome, Safari */
				width :    -moz-calc(20% - 2px); /* for Firefox */
				width :         calc(20% - 2px); /* for IE */
				padding : 5px 0;
				border-left : 2px solid #ff6600;
			}

			#list > .total {
				width : 92%;
				width : -webkit-calc(100% - 20px); /* for Chrome, Safari */
				width :    -moz-calc(100% - 20px); /* for Firefox */
				width :         calc(100% - 20px); /* for IE */
				height : 105px;
				padding : 0 10px;
				margin-top : 10px;
				overflow : auto;
				border-bottom : 2px solid #ff6600;
			}

			#list > .total > .left {
				float : left;
				display : table;
				width : 100%;
				height : 30px;
				border-bottom : 1px solid #000000;
			}

			#list > .total > .left > p{
				display : table-cell;
				vertical-align : middle;
				font-size : 16px;
			}

			#list > .total > .right {
				float : right;
				width : 100%;
				height :50px;
				padding-top : 10px;
				padding-bottom : 10px;
			}

			#list > .total > .right > .orange{
				text-align : right;
				width : 100%;
				float : right;
				color : #ff6600;
				font-size : 18px;
				margin-top : 10px;
			}

			#list > .total > .right > .dark{
				text-align : right;
				width : 100%;
				float : right;
				margin-top : 6px;
				font-size : 12px;
			}


		}

	</style>

  </head>

  <body>
	
	<div id="top_head">

		<div id="top_title">
			<div class="up_text">괌자유여행 대표브랜드, 놀다괌!</div>
			<div class="down_text">놀다괌 추천옵션을 만나보세요!</div>
		</div>
		
		<div id="top_choice">
			<div class="category">
				<div class = "content">
					<div class="category_list_on"><p>투어</p></div>
					<div class="category_arrow_on"></div>
				</div>
				<div class = "content">
					<div class="category_list_off"><p>호텔</p></div>
					<div class="category_arrow_off"></div>
				</div>
				<div class = "content">
					<div class="category_list_off"><p>렌트카</p></div>
					<div class="category_arrow_off"></div>
				</div>
				<!--
				<div class = "content">
					<div class="category_list_off"><p>여행상품</p></div>
					<div class="category_arrow_off"></div>
				</div>
				-->
			</div>
			<div class="content">
				<div class="inner">
					<div class="title"><p>투어선택</p></div>
					<div class="content">숨겨놓은 박스지롱</div>
					<div class="option">
						<div class ="link">
							<div class ="inner">
								<a href="https://www.naver.com/" target="_blank">
									<img src="../images/NaverCafe.png">
									<p>놀다괌 공식 카페 바로가기</p>
								</a>
							</div>
						</div>
						<div class ="link">
							<div class ="inner">
								<a href="https://www.kakaocorp.com/service/KakaoTalk" target="_blank">
									<img src="../images/KakaoTalk.png">
									<p>놀다괌 카톡 상담 바로가기</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>

	<div id = "main">
		<div class ="title">예약자 정보</div>
		<div class = "form_box">
			<input type = "text" placeholder = "한글 이름"/>
			<input type = "text" placeholder = "영문 이름"/>
			<input type = "text" placeholder = "휴대폰번호"/>
			<input type = "text" placeholder = "이메일주소"/>
		</div>
		



		<div class ="title">예약상품 선택</div>

		<div class = "form_box">
			<input type = "text" placeholder = "예약 종류"/>
			<input type = "text" placeholder = "투어 선택"/>
			<input type = "text" placeholder = "투어 날짜"/>
			<input type = "text" placeholder = "투어 시간"/>
			<div class = "input_special">
				<script type="text/javascript">
					$(function(){ 
						$('.bt_up').click(function(){ 
							var n = $('.bt_up').index(this);
							var num = $(".count:eq("+n+")").val();
							nam = $(".count:eq("+n+")").val(num*1+1);
							num = nam.val();
							$(".a:eq("+n+")").text(num);
							$(".b:eq("+n+")").text(num);
						});
						$('.bt_down').click(function(){ 
							var n = $('.bt_down').index(this);
							var num = $(".count:eq("+n+")").val();
							if(num!=0) num = $(".count:eq("+n+")").val(num*1-1);
							num = nam.val();
							$(".a:eq("+n+")").text(num);
							$(".b:eq("+n+")").text(num);
						});
					})

				</script>

				<div class = "top">
					<div class = "left"><p>투어 인원</p></div>
					<div class = "icon">
						<p>▼</p>
					</div>
					<div class = "right">
						<div>성인&nbsp</div><div class = "a">0</div><div>명</div><div> / </div>
						<div>소아&nbsp</div><div class = "a">0</div><div>명</div><div> / </div>
						<div>유아&nbsp</div><div class = "a">0</div><div>명</div>
					</div>
				</div>			
				<div class = "middle">
					<div class = "left">
						<div>성인&nbsp</div><div class = "b">0</div><div>명</div>
					</div>
					<div class = "right">
						<div class = "countbox">
							<div class = "bt_down">-</div>
							<input class = "count" name ="num" value="0" placeholder ="인원"/>
							<div class = "bt_up">+</div>
						</div>
					</div>
				</div>
				<div class = "middle">
					<div class = "left">
						<div>소아&nbsp</div><div class = "b">0</div><div>명</div>
					</div>
					<div class = "right">
						<div class = "countbox">
							<div class = "bt_down">-</div>
							<input class = "count" name ="num" value="0" placeholder ="인원"/>
							<div class = "bt_up">+</div>
						</div>
					</div>
				</div>
				<div class = "middle">
					<div class = "left">
						<div>유아&nbsp</div><div class = "b">0</div><div>명</div>
					</div>
					<div class = "right">
						<div class = "countbox">
							<div class = "bt_down">-</div>
							<input class = "count" name ="num" value="0" placeholder ="인원"/>
							<div class = "bt_up">+</div>
						</div>
					</div>
				</div>
			</div>
			<div class = "billing">
				<div class = "normal_text">
					<div class = "left"><p>예약금</p></div>
					<div class = "right"><p>$0</p></div>
				</div>

				<div class = "normal_text">
					<div class = "left"><p>현지지불액</p></div>
					<div class = "right"><p>$0</p></div>
				</div>
			</div>
		</div>
		<div class = "button_container">
			<div class = "button_design"><p>상품 추가하기</p></div>
		</div>

	</div>

	<div id = "list">
		<div class = "box">
			<table id="bill"><!-- frame="void"-->
				<tr>
					<th class = "col_1">카테고리</th>
					<th class = "col_2">상품명</th>
					<th class = "col_3">투어날짜 및 시간</th>
					<th class = "col_4">인원</th>
					<th class = "col_5">예약금</th>
					<th class = "col_6">현지지불액</th>
				</tr>
				<tr>
					<td class = "col_1">투어</td>
					<td class = "col_2">오션벤처호 돌핀크루저</td>
					<td class = "col_3">2018-07-06</td>
					<td class = "col_4">성인 : 2</td>
					<td class = "col_5">$90<br>(101,700원)</td>
					<td class = "col_6">$990</td>
				</tr>
				<tr>
					<td class = "col_1">투어</td>
					<td class = "col_2">오션벤처호 돌핀크루저</td>
					<td class = "col_3">2018-07-06</td>
					<td class = "col_4">성인 : 2</td>
					<td class = "col_5">$90<br>(1,101,700원)</td>
					<td class = "col_6">$990</td>
				</tr>
			</table>
		</div>
		<div class = "total">

			<div class ="left">
				<p>총 결제금액</p>
			</div>

			<div class ="right">
				<div class = "orange">$90.00</div>
				<div class = "dark">$90.00(한국 결제 예약금 : 1,101,700원) + $0.00(현지 지불 금액)</div>
			</div>

		</div>



	
	<div id = "footer">

	</div>

    
  </body>

</html>
