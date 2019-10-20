

$("#registerBtn").click(function(){
	var memName = $("#memberName").val();
	var memPhone = $("#memberPhone").val();
	var enrollFr = $("#enrollFr").val();
	var enrollTo = $("#enrollTo").val();
	var isTraining = $("#isTraining").val();
	var ptOption = $("#ptList").val();
	var trName = $("#trainerList").val();
	var regiDate = $("#lastDate").val();
	var changeUser = $("#changeUser").val();
	
	if(isTraining == 1){
		isTraining = true;
	}
	else if(isTraining == 2){
		isTraining = false;
		ptOption = 0;
		trName = 0;
	}
	
	console.log("ajax 진입")

	$.ajax({
	 type: "post",
	 url: "/trainer/memberRegister",
	 dataType:"json",
	 data:{memberName : memName,
		 memberPhone : memPhone,
		 enrollFr : enrollFr,
		 enrollTo : enrollTo,
		 psTrainSeq: ptOption,
		 psTrainCheck : isTraining,
		 userSeq : trName,
		 lastDate : regiDate,
		 lastUserSeq : changeUser},
	 success: function(result){
		 console.log(result.result);
		 if(result.result == false){
			 alert("등록에 실패했습니다. 다시 확인하여 주세요");
		 }
		 else{
			 alert("성공적으로 등록 되었습니다!");
			 location.href=result.result;
		 }
	},
	error: function (request,status,error) {
		   alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		   console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	}
//	error: function (jqXHR, textStatus, errorThrown) {
//		   alert("오류가 발생하였습니다.");
//	}
 });
});