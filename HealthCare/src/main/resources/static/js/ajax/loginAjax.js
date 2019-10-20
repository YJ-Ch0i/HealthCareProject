

$("#logBtn").click(function(){
	var id = $("#adId").val();
	var pass = $("#adPass").val();
	
	console.log("ajax 진입")

	$.ajax({
	 type: "post",
	 url: "/trainer/Login",
	 dataType:"json",
	 data:{adId : id,
		 adPass : pass},
	 success: function(result){
		 console.log(result.result);
		 if(result.result == false){
			 
			 $("#adId").val('');
			 $("#adPass").val('');
			 
			 alert("로그인에 실패하였습니다. 계정과 비밀번호를 확인 해 주세요.");
			 $("#adId").focus();
		 }
		 else{
			 location.href="/trainer/main";
		 }
	},
	error: function (request,status,error) {
		   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		   console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	},
	error: function (jqXHR, textStatus, errorThrown) {
		   alert("오류가 발생하였습니다.");
	}
 });
});