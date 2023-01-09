<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goupang</title>
<style>
.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}
</style>
</head>
<body>
	<script>
		var index = 0; //이미지에 접근하는 인덱스
		window.onload = function() {
			slideShow();
		}

		function slideShow() {
			var i;
			var x = document.getElementsByClassName("slide1"); //slide1에 대한 dom 참조
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none"; //처음에 전부 display를 none으로 한다.
			}
			index++;
			if (index > x.length) {
				index = 1; //인덱스가 초과되면 1로 변경
			}
			x[index - 1].style.display = "block"; //해당 인덱스는 block으로
			setTimeout(slideShow, 4000); //함수를 4초마다 호출

		}
	</script>

	<center>
		<div>
			<img class="slide1" src="resources/slide01.jpg"> <img
				class="slide1" src="resources/slide02.jpg"> <img class="slide1"
				src="resources/slide03.jpg">
		</div>

		<table>
			<tr>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
			<tr>
		</table>
		<div id="detail">
			석류</br>10,000원
		</div>

		<table>
			<tr>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
			<tr>
				<div class="b-example-divider"></div>
		</table>
		<div id="detail">
			석류</br>10,000원
		</div>

		<table>
			<tr>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
				<td><img alt="" src="resources/석류.jpg" onmouseenter="zoomIn(event)"
					onmouseleave="zoomOut(event)" /></td>
			<tr>
				<div class="b-example-divider"></div>
		</table>
		<div id="detail">
			석류</br>10,000원
		</div>
		</tr>
		<div class="b-example-divider"></div>
		</table>

		<script>
			function zoomIn(event) {
				event.target.style.transform = "scale(1.2)";
				event.target.style.zIndex = 1;
				event.target.style.transition = "all 0.5s";
			}

			function zoomOut(event) {
				event.target.style.transform = "scale(1)";
				event.target.style.zIndex = 0;
				event.target.style.transition = "all 0.5s";
			}
		</script>

		<footer class="footer-black">
			<div
				style="position: relative; left: 0px; top: 800px; width: 100%; height: 200px; background-color: #708090;">
				<div class="frame">
					<div class="footer-division-1">
						<div class="footer-tel">고객센터 1234-5678</div>
						<div class="footer-text">영업시간 : AM 9:00 ~ PM 17:50(주말 및 공휴일
							휴무)</div>
						<div class="footer-text">점심시간 : PM 12:50 ~ PM 14:00</div>
					</div>
					<div class="footer-division-2">
						<div class="footer-text">회사명 : (주)Goupang | 대표이사: 중앙 |
							사업자등록번호:000-00-00000 | 호스팅사업자:(주)Goupang</div>
						<div class="footer-text">주소 : (00000) 서울특별시 마포구</div>
						<div class="footer-text">개인정보관리책임자 : 중앙</div>
						<div class="footer-link-company">
							<a>이용약관</a> <span class="footer-sep"> | </span> <a>개인정보처리방침</a> <span
								class="footer-sep"> | </span> <a>사업자정보확인</a>
						</div>
					</div>

				</div>
		</footer>
	</center>


	<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>