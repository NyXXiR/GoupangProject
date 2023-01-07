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
box-sizing: border-box;
padding:0px;
margin:0px;

}
#itemDetail-container{
}

#itemImg{
width: 300px;
height: 300px;
background-color:tomato;
display: flex;

}
.text-small{
font-size:10px;
}
.text-medium{
	font-size:20px;
}
.text-large{
	font-size:30px;
}
#itemDetail-text > *{
    display:block;
}
#itemDetail-info{
	display:flex;
justify-content: center;
}

</style>
</head>
!!헤더위치!!
<body>
<article id=itemDetail-container>
	<section id=itemDetail-info>
	<!-- 이미지파일명은 item의 PK와 일치해야 함 -->
	<figure id="itemImg"><img src="./resources/1.jpg" alt=""/>
	<div><!-- 판매자id 입력 --></div>
	</figure>
	<span id="itemDetail-text">
	<div id="itemDetail">
	<div id="itemDetail-category" class="text-medium"><!-- 대분류 입력 -->대분류</div>
	<div id="itemDetail-name" class="text-large"><!-- 제품명 입력 -->제품명</div>
	<div id="itemDetail-price" class="text-small"><!-- 제품가격 입력 -->30,000</div>
	<div id="itemDetail-discount" class="text-medium"><!-- 할인율 입력 -->10%</div>
	<div id="itemDetail-discountPrice" class="text-large"><!-- 할인적용가격 입력.... -->27,000</div>
<div id="buttons">
	<input type="button" value="장바구니">
	<input type="button" value="바로구매">
	</div>
	</div>	
	
</span>





	</section>
	<section id=itemDescription>
        <h1>제품 설명</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi cumque quisquam culpa perspiciatis doloremque iste exercitationem repellat tempora alias doloribus. Pariatur perspiciatis aspernatur repudiandae harum corporis eaque minus modi repellendus?</p>
	</section>
	<!-- userID 인식해서 구매자일 경우 댓글달기 활성화,
	제품판매 당사자일 경우 답글달기 활성화-->
	<section id=itemReply>댓글란</section>
</article>





<article>
</article>





</body>
</html>