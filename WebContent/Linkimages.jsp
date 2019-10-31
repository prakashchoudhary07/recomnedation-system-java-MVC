<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.responsive {
    width: 100%;
    max-width: 600px;
    height: auto;
}
.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 50%;
}

<style>
ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.clearfix:after {
	content: '';
	clear: both;
	display: table;
}

.post {
	margin: 0 0 1.5em;
}

.post-toggle {
	float: center;
	width: 50%;
	height: auto;
	background: #bakl23;
}

.post-content {
	display: none;
	width : 40%;
	height: 8em;
	border: 0.25em solid #bada55;
}
</style>
<script src="LibSrc/jquery-3.3.1.js"
	type="text/javascript"></script>
<script type="text/javascript">

//You can also use `$` instead of `jQuery` if you are sure that variable is
//not occupied by another library. This `$(callback)` shortcut attaches a
//callback to the DOM load event. It's the same as `$(document).ready(callback)`,
//but shorter. It passed the jQuery object to the callback so we can safely
//use `$` inside of the callback.
jQuery(function($) {
		
 $('.posts').on('click', '.post-toggle', function() {
     // This is called a delegated event. The handler is attached to
     // the `<ul class="posts">`, so you only need one event handler.
     // But the callback is only executed if `<li class="post">` is in
     // the event chain. It's not only more efficient with memory but
     // also works automagically if posts get added or deleted.
     
     // `this` is the targetted element, the `post-toggle`. It's a normal
     // DOM element object so we convert it to a jQuery object with
     // `$(this)`.
     
     // `closest('.post')` finds the closest ancestor with class `post`.
     
     // `find('.post-content')` finds the closes descendant with class `post-content`.
     
     // `toggle()` toggles visibility using the `display` property.
     $(this).closest('.post').find('.post-content').toggle();
 });
});

</script>



</head>
<body>







	<ul class="posts">
		<li class="post clearfix">
			<div class="post-toggle">
						<img src="Images/2014_Yamaha_YZF-R6.jpg" alt="Flowers in Chania" class="responsive">
			</div>
			
			<div class="post-content"></div>
		</li>
		<li class="post clearfix">
			<div class="post-toggle">
			<img src="Images/2014_Yamaha_YZF-R6.jpg" alt="Flowers in Chania" class="responsive">
			</div>
			
			<div class="post-content"></div>
		</li>
		<li class="post clearfix">
			<div class="post-toggle"></div>
			
			<div class="post-content"></div>
		</li>	</ul>




</body>
</html>