/**
 * 
 */
window.onload=function(){
	createcode();
}
function createcode(){
	var code; //定义验证码
	code="";
	var codeLength=4; //验证码长度
	var selectChar=new Array(2,3,4,5,6,7,8,9,'a','b','c','d','e','f','g','h','i','j','k',
  'm','n','p','q','r','s','t','u','v','w','x','y','z'); //组成验证码的字符
	for(var i=0;i<codeLength;i++){
		var charIndex=Math.floor(Math.random()*32);
		code+=selectChar[charIndex];
	}
	// 设置验证码的显示样式，并显示
	 document.getElementById("yzm").style.fontFamily="Fixedsys"; //设置字体
	 document.getElementById("yzm").style.letterSpacing="5px"; //字体间距
	 document.getElementById("yzm").style.color="#0ab000"; //字体颜色
	 document.getElementById("yzm").innerHTML=code; // 显示
}