
//트레이너 등록 비밀번호 정규식
$(function(){
    $("#alert-success").hide();
    $("#alert-danger").hide();
    $("#alert-danger-pass").hide();
    $("#submit").attr("disabled", "disabled");  
    $("input").change(function(){
        var pwd1=$("#trPass").val();
        var pwd2=$("#rePass").val();
        
        //8자리 이상, 대문자/소문자/특수문자/숫자 모두 포함하는 정규식
        var checker = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;        
        
        if(pwd1 != "" || pwd2 != ""){
        	if(true === checker.test(pwd1)){
        		if(pwd1 == pwd2){
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#alert-danger-pass").hide();
					$("#submit").removeAttr("disabled");
        		}
        		else if(pwd1 != pwd2){
        			$("#alert-success").hide();               
        			$("#alert-danger").show();                
        			$("#alert-danger-pass").hide();           
        			$("#submit").attr("disabled", "disabled");
        		}
        	}
        	else if(false === checker.test(pwd1)){
        		if(pwd1 == pwd2){
        			$("#alert-success").hide();               
        			$("#alert-danger").hide();                
        			$("#alert-danger-pass").show();           
        			$("#submit").attr("disabled", "disabled");
        		}
        		else if(pwd1 != pwd2){
        			$("#alert-success").hide();               
        			$("#alert-danger").show();                
        			$("#alert-danger-pass").show();           
        			$("#submit").attr("disabled", "disabled");
        		}
        	}
        }
    });
});

//회원등록 pt로직
$(function(){
	$("#isTraining").change(function(){
		if(this.value == -1 || this.value==2){
			$("#ptOptions").hide();
			$("#trList").hide();
		}
		else if(this.value == 1){
			$("#ptOptions").show();
			$("#trList").show();
		}
	})
})
