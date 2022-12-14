<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<script type="text/javascript">
//전체 클릭시
function all(data) {
	let arr = '${bool}'
	alert("전체 클릭!" + '${bool}' + '!!! : ' );
	if(data != null){
	$.ajax("storejson.do?order="+data, {
		type: "get",
		dataType : "json",
		success : function(data){
			alert("성공~~");
			$("#all").attr('style','border-color: #3fe8d9');
			console.log(data);
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
                	if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	} 
               	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
	if(data == null){
		$.ajax("storejson.do?order="+data, {
			type: "get",
			dataType : "json",
			success : function(data){
				alert("성공~~");
				$("#all").attr('style','border-color: #3fe8d9');
				console.log(data);
				let add = "";
				$.each(data, function(index, obj){
					add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
					add += '<div class="single-product-area mb-30">';
					add += '<div class="product_image">';
					add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
	                	if(arr.indexOf(this.storeIdx) != -1){
	                    add += '<div class="product_wishlist">';
	                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
	                    add += '</div>';
	               	} else if(arr.indexOf(this.storeIdx) == -1){
	               		add += '<div class="product_wishlist">';
	                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
	                    add += '</div>';
	               	} 
	               	add += '</div>';
	                add += '<div class="product_description">';
	                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
	                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
	                add += '</div>';
	                add += '</div>';
	                add += '</div>';
				});
				$("#aaa").html(add);
				
			},
			error : function(){
				alert("실패~~");
			}
		});
		
	}
}
function food() {
	alert("푸드 클릭!");
	let arr = '${bool}'
	$(".img").attr('style','none');
	$.ajax("food.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~");
			$("img[name=food]").attr('style','border-color: #3fe8d9');
			console.log(data);
			
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	} 
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
function fashion() {
	alert("패션 클릭!");
	let arr = '${bool}'
			$(".img").attr('style','none');
	$.ajax("fashion.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~" + data);
			$("img[name=fashion]").attr('style','border-color: #3fe8d9');
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	} 
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
function pet() {
	let arr = '${bool}'
			$(".img").attr('style','none');
	$.ajax("pet.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~" + data);
			$("img[name=pet]").attr('style','border-color: #3fe8d9');
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	} 
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
function tech() {
	let arr = '${bool}'
			$(".img").attr('style','none');
	$.ajax("tech.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~" + data);
			$("img[name=tech]").attr('style','border-color: #3fe8d9');
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	} 
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
function beauty() {
	let arr = '${bool}'
			$(".img").attr('style','none');
	$.ajax("beauty.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~" + data);
			$("img[name=beauty]").attr('style','border-color: #3fe8d9');
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	}
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
function trip() {
	let arr = '${bool}'
			$(".img").attr('style','none');
	$.ajax("trip.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~" + data);
			$("img[name=trip]").attr('style','border-color: #3fe8d9');
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	} 
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
function baby() {
	let arr = '${bool}'
			$(".img").attr('style','none');
	$.ajax("baby.do", {
		type: "post",
		dataType : "json",
		success : function(data){
			alert("성공~~" + data);
			$("img[name=baby]").attr('style','border-color: #3fe8d9');
			let add = "";
			$.each(data, function(index, obj){
				add += '<div class="col-9 col-sm-6 col-md-4 col-lg-3">';
				add += '<div class="single-product-area mb-30">';
				add += '<div class="product_image">';
				add += '<img id="img" class="normal_img" src="imgs/' + this.storeImg+'" alt="">';
				if(arr.indexOf(this.storeIdx) != -1){
                    add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-minus"></i></a>';
                    add += '</div>';
               	} else if(arr.indexOf(this.storeIdx) == -1){
               		add += '<div class="product_wishlist">';
                    add += '<a href="javascript:storeLikeUpdate('+ this.storeIdx +')"><i id="heart" class="fa-solid fa-heart-circle-plus"></i></a>';
                    add += '</div>';
               	}
		     	add += '</div>';
                add += '<div class="product_description">';
                add += '<a id="title" href="detail.do?memberId=${memberId}&sotreIdx"' + this.storeIdx+'>' + this.storeTitle +'</a>';
                add += '<h6 id="price" class="product-price">' + this.storePrice+'원</h6> ';
                add += '</div>';
                add += '</div>';
                add += '</div>';
			});
			
			$("#aaa").html(add);
			
		},
		error : function(){
			alert("실패~~");
		}
	});
	
}
</script>
