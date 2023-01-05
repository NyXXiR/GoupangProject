<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>상세 페이지</title>

<style>
*{
border: 1px solid black;
box-sizing: border-box;}

#item-container{
}

#itemImg{
width: 500px;
height: 500px;}

.text-small{

}

</style>
</head>


<article id=item-container>
	<section id=item-info>
	<!-- 이미지파일명은 item의 PK와 일치해야 함 -->
	<figure id="itemImg"><img src="./resources/1.jpg" alt=""/>
	<div><!-- 판매자id 입력 --></div>
	</figure>
	<span class="itemDetail-text">
	<div id="itemDetail" class="text-small"></div>
	<div id="itemDetail-category" class="text-medium"><!-- 대분류 입력 --></div>
	<div id="itemDetail-name" class="text-large"><!-- 제품명 입력 --></div>
	<div id="itemDetail-price" class="text-small"><!-- 제품가격 입력 --></div>
	<div id="itemDetail-discount" class="text-medium"><!-- 할인율 입력 --></div>
	<div id="itemDetail-discountPrice" class="text-large"><!-- 할인적용가격 입력.... --></div>
	</span>



	</section>
	<section id=itemDescription>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi cumque quisquam culpa perspiciatis doloremque iste exercitationem repellat tempora alias doloribus. Pariatur perspiciatis aspernatur repudiandae harum corporis eaque minus modi repellendus?</p>
	</section>
	<section id=itemReply></section>
</article>

<article>

</article>

<body>




</body>
</html>