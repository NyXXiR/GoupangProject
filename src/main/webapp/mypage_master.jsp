<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Document</title>
		<link rel="stylesheet" href="./mypage.css">
	</head>

	<body>
		<div id="wrap">
			<header id="header">

			</header>
			<section id="main">

				<div id="left">
					<!-- 목록 -->
					<ul id="category">
						<li>
							<h1 id="myPage" onclick="getPage(this.id)" val="1">마이페이지</h1>
						</li>
						<li>
							<h2 id="pdPage" onclick="getPage(this.id)" val="2">상품 관리</h2>
						</li>
						<li>
							<h2 id="dvPage" onclick="getPage(this.id)" val="3">배송 관리</h2>
						</li>
						<li>
							<h2 id="psPage" onclick="getPage(this.id)" val="4">게시글 관리</h2>
						</li>
					</ul>
				</div>

				<div id="center">
					<!-- 내용 -->
					<div id="changePage">
						<table class="pdTable">
							<tr>
								<td>
									<h3>상품명</h3>
								</td>
							</tr>
							<tr>
								<td class="pdInput"><input type="text" name="pdName"></td>
							</tr>
						</table>

						<table class="pdTable">
							<tr>
								<td>
									<h3>가격</h3>
								</td>
							</tr>
							<tr>
								<td class="pdInput"><input type="text" name="pdPrice"></td>
							</tr>
						</table>

						<table class="pdTable">
							<tr>
								<td>
									<h3>제품사진</h3>
								</td>
							</tr>
							<tr>
								<td class="pdInputP">
									<form action="imagesave.jsp" name="imagesave" method="post" enctype="multipart/form-data">
										<div id="fakeInputP1" class="fakeInputP"></div>
										<!-- <div id="fakeInputP2" class="fakeInputP"></div> -->
										<!-- <div id="fakeInputP3" class="fakeInputP"></div> -->
										<input type="file" name="pdPhoto" accept="image/*" required id="realInputP1">
									</form>
								</td>
							</tr>
						</table>

						<table class="pdTable">
							<tr>
								<td>
									<h3>상세설명</h3>
								</td>
							</tr>
							<tr>
								<td class="pdInput"><input type="text" name="pdEx" id="pdInput2"></td>
							</tr>
						</table>

					</div>
				</div>
			</section>
		</div>


		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script>
			function getPage(id) {
				// console.log(id);
				var xhttp;
				xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function () {
					if (this.readyState == 4 && this.status == 200) {
						document.getElementById("changePage")
							.innerHTML = xhttp.responseText;
					}
				}
				xhttp.open("GET", "./" + id + ".jsp", true);
				xhttp.send();
			}


			$('#fakeInputP1').click(function () {
				$('#realInputP1').click();
			})
			$('#realInputP1').on('change', function (e) {
				let formData = new FormData();

				let fileInput = $('#realInputP1');
				/*let fileList = fileInput[0].files;
				let fileobj = fileList[0];
				let fileName = fileobj.name;
				let fileSize = fileobj.size;*/

				let files = fileInput[0].files;
				console.log(files);

				fileCheck(fileSize);
				formData.append("uploadFile",fileobj);
				
				$.ajax({
					url: '/uploadAjaxAction',
				})
				
			function fileCheck(FileS) {
				let maxFileSize = 1048567; //1MB
				if (maxFileSize <= FileS) {
					alert("파일 사이즈 초과")
					return false
				}
				return true;
			}

		</script>

	</body>

	</html>