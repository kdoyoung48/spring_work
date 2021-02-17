<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>Future Imperfect by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/design-main.css" />		
</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

<!-- Header -->
<header id="header">
	<h1><a href="home2.do">Home</a></h1>
	<nav class="links">
		<ul>
			<li><a href="#">About us</a></li>
			<li><a class="fa-bars" href="#menu2">Contents</a></li>									
			<li><a href="#">Reservation</a></li>
			<li><a href="#">Service</a></li>						
			
			<li style="float: right">
				<a href="${pageContext.request.contextPath }/users/loginform.do" 
					class="button" >Log In</a>
			</li>										
		</ul>												
	</nav>					
	<nav class="main">		
		<a class="fa-bars" href="#menu">
			<img style="width:30px;height:30px" src="${pageContext.request.contextPath }/svg/fi-rr-align-justify.svg" />
		</a>				
	</nav>
</header>
	<!-- Menu -->
	<section id="menu">					
		<!-- Links -->
			<section>
				<ul class="links">
					<li>
						<a href="#">
							<h3>About us</h3>
							<p>회사소개</p>
						</a>
					</li>
					<li>
						<a href="#">
							<h3>Contents</h3>
							<p>게시판</p>
						</a>
					</li>
					<li>
						<a href="#">
							<h3>Reservation</h3>
							<p>예약</p>
						</a>
					</li>
					<li>
						<a href="#">
							<h3>Service</h3>
							<p>서비스</p>
						</a>
					</li>
				</ul>
			</section>
			<section>
				<ul class="actions stacked">
					<li><a href="#" class="button large fit">Log In</a></li>
				</ul>
			</section>					
	</section>

<!-- Main -->
<div id="main">

	<!-- Post -->
	<article class="post">
		<header>
			<div class="title">
				<h2><a href="single.html">Magna sed adipiscing</a></h2>
				<p>Lorem ipsum dolor amet nullam consequat etiam feugiat</p>
			</div>
			<div class="meta">
				<time class="published" datetime="2015-11-01">November 1, 2015</time>
				<a href="#" class="author"><span class="name">Jane Doe</span><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
			</div>
		</header>
		<a href="single.html" class="image featured"><img src="${pageContext.request.contextPath }/resources/images/pic01.jpg" alt="" /></a>
		<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
		<footer>
			<ul class="actions">
				<li><a href="single.html" class="button large">Continue Reading</a></li>
			</ul>
			<ul class="stats">
				<li><a href="#">General</a></li>
				<li><a href="#" class="icon solid fa-heart">28</a></li>
				<li><a href="#" class="icon solid fa-comment">128</a></li>
			</ul>
		</footer>
	</article>

	<!-- Post -->
		<article class="post">
			<header>
				<div class="title">
					<h2><a href="single.html">Ultricies sed magna euismod enim vitae gravida</a></h2>
					<p>Lorem ipsum dolor amet nullam consequat etiam feugiat</p>
				</div>
				<div class="meta">
					<time class="published" datetime="2015-10-25">October 25, 2015</time>
					<a href="#" class="author"><span class="name">Jane Doe</span><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
				</div>
			</header>
			<a href="single.html" class="image featured"><img src="${pageContext.request.contextPath }/resources/images/pic02.jpg" alt="" /></a>
			<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper.</p>
			<footer>
				<ul class="actions">
					<li><a href="single.html" class="button large">Continue Reading</a></li>
				</ul>
				<ul class="stats">
					<li><a href="#">General</a></li>
					<li><a href="#" class="icon solid fa-heart">28</a></li>
					<li><a href="#" class="icon solid fa-comment">128</a></li>
				</ul>
			</footer>
		</article>

						<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="single.html">Euismod et accumsan</a></h2>
										<p>Lorem ipsum dolor amet nullam consequat etiam feugiat</p>
									</div>
									<div class="meta">
										<time class="published" datetime="2015-10-22">October 22, 2015</time>
										<a href="#" class="author"><span class="name">Jane Doe</span><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
									</div>
								</header>
								<a href="single.html" class="image featured"><img src="${pageContext.request.contextPath }/resources/images/pic03.jpg" alt="" /></a>
								<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at. Phasellus sed ultricies mi non congue ullam corper. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Cras vehicula tellus eu ligula viverra, ac fringilla turpis suscipit. Quisque vestibulum rhoncus ligula.</p>
								<footer>
									<ul class="actions">
										<li><a href="single.html" class="button large">Continue Reading</a></li>
									</ul>
									<ul class="stats">
										<li><a href="#">General</a></li>
										<li><a href="#" class="icon solid fa-heart">28</a></li>
										<li><a href="#" class="icon solid fa-comment">128</a></li>
									</ul>
								</footer>
							</article>
		

						<!-- Pagination -->
							<ul class="actions pagination">
								<li><a href="" class="disabled button large previous">Previous Page</a></li>
								<li><a href="#" class="button large next">Next Page</a></li>
							</ul>

					</div>

				<!-- Sidebar -->
					<section id="sidebar">

						<!-- Intro -->
							<section id="intro">
								<a href="#" class="logo"><img src="${pageContext.request.contextPath }/resources/images/logo.jpg" alt="" /></a>
								<header>
									<h2>Future Imperfect</h2>
									<p>Another fine responsive site template by <a href="http://html5up.net">HTML5 UP</a></p>
								</header>
							</section>

						<!-- Mini Posts -->
							<section>
								<div class="mini-posts">

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="single.html">Vitae sed condimentum</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
												<a href="#" class="author"><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic04.jpg" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="single.html">Rutrum neque accumsan</a></h3>
												<time class="published" datetime="2015-10-19">October 19, 2015</time>
												<a href="#" class="author"><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic05.jpg" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="single.html">Odio congue mattis</a></h3>
												<time class="published" datetime="2015-10-18">October 18, 2015</time>
												<a href="#" class="author"><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic06.jpg" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="single.html">Enim nisl veroeros</a></h3>
												<time class="published" datetime="2015-10-17">October 17, 2015</time>
												<a href="#" class="author"><img src="${pageContext.request.contextPath }/resources/images/avatar.jpg" alt="" /></a>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic07.jpg" alt="" /></a>
										</article>

								</div>
							</section>

						<!-- Posts List -->
							<section>
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="single.html">ㄱㄱㄱㄱ</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic08.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html">ㅂㅂㅂㅂ</a></h3>
												<time class="published" datetime="2015-10-15">October 15, 2015</time>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic09.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html">ㅇㅇㅇㅇ</a></h3>
												<time class="published" datetime="2015-10-10">October 10, 2015</time>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic10.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html">ㄴㄴㄴㄴ</a></h3>
												<time class="published" datetime="2015-10-08">October 8, 2015</time>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic11.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="single.html">ㅋㅋㅋㅋ</a></h3>
												<time class="published" datetime="2015-10-06">October 7, 2015</time>
											</header>
											<a href="single.html" class="image"><img src="${pageContext.request.contextPath }/resources/images/pic12.jpg" alt="" /></a>
										</article>
									</li>
								</ul>
							</section>

						<!-- About -->
							<section class="blurb">
								<h2>About</h2>
								<p>q블라블라 어쩌구 저쩌구</p>
								<ul class="actions">
									<li><a href="#" class="button">더보기</a></li>
								</ul>
							</section>

						<!-- Footer -->
							<section id="footer">
								<ul class="icons">
									<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="icon solid fa-rss"><span class="label">RSS</span></a></li>
									<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
								</ul>
								<p class="copyright">&copy; Untitled. Design: <a href="http://html5up.net">HTML5 UP</a>. Images: <a href="http://unsplash.com">Unsplash</a>.</p>
							</section>

					</section>

			</div>

		<!-- Scripts -->/
			<script src="${pageContext.request.contextPath }/resources/js/design-jquery.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/design-browser.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/design-breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/design-util.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js/design-main.js"></script>
			<script src="${pageContext.request.contextPath }/resources/sass/main.scss"></script>
			<script src="${pageContext.request.contextPath }/resources/css2/main.css" /></script>		
			<script src="${pageContext.request.contextPath }/resources/js2/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath }/resources/js2/jquery.dropotron.min.js"></script>	
			<script src="${pageContext.request.contextPath }/resources/js2/breakpoints.min.js"></script>			
			<script src="${pageContext.request.contextPath }/resources/js2/main.js"></script>
	</body>
</html>