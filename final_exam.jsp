<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 신청서</title>
<!-- -
되는 기능
1,5,8 기능은 됩니다. 

2,3,4, 부분적으로 했습니다. 좀 더 노력하겠습니다.  


 -->


<script>
	window.onload = function() {
		document.querySelector("#btnCheckId").onclick = function() {	
			//alert("!"); 확인완료 
			window.open("check_id.jsp");
		 }
		

		document.querySelector("#id").onclick = function() {//id영역
 			
			
 			if(document.fr.id.value="") {//글자기능
				
 				document.querySelector("#checkIdResult").style.color = "green";
 				document.querySelector("#checkIdResult").innerHTML= "사용가능";
    			} else { 
   				document.querySelector("#checkIdResult").innerHTML = "4~8글자가 사용가능합니다";
   				document.querySelector("#checkIdResult").style.color = "red";
   			}

			
 		}	
		
		document.querySelector("#password2").onclick= function() {
			let na = document.querySelector("#password").value;//비밀번호 나옴. 
			console.log(na);
			let na1 = document.querySelector("#password2").value;
			console.log(na1);
			if(na==na1) {
				document.querySelector("#checkPasswd2Result").innerHTML ="비밀번호 일치";
			}else {
				document.querySelector("#checkPasswd2Result").innerHTML ="비밀번호 불일치";
			}//이런 느낌 같은데 잘 안됨
			
		}
				
		
		
		document.querySelector("#cb_all").onclick = function() {//전체선택버튼
			if(document.fr.cb_all.checked) { 
				for(let check of document.fr.hobby) {
					check.checked = true;
				}
			} else { 
				for(let check of document.fr.hobby) {
					check.checked = false;
				}
			}	
		}
		
		document.querySelector("#emailDomain").onclick = function() { //도메인 누르면 주소 입력되게
			//console.log(document.fr.fruit.value);
 			if(document.fr.emailDomain.options[0].selected){
 				alert("네이버");
               } else if (document.fr.emailDomain.options[1].selected){
            	  // alert("nate")	
               } else {
            	   //alert("gmail")
               }
		
		
		}	
	};//윈도우 끝. 
	function checkId1() {
		let id = document.querySelector("#id").value.length;
		console.log(id);//길이확인
	}
	
	
	

	
	function checkjumin1() {//주민번호임
		let b = document.querySelector("#jumin1").value.length;//값이 나오므로 길이를 구할 수 있음. 
		let c = document.querySelector("#jumin2").value.length;
		//console.log(b);
		//document.querySelector("#juminbun").innerText = b;
		if(b==6) {
			//b의 길이가 6이면 뒷자리오 옮긺.	
			document.fr.jumin2.focus();
			//alert("!");
		}else if(c==7){
			document.fr.jumin2.blur();
		}
	}
	
	
// 	function checkpass1() {
// 		let pass = document.querySelector("#password").value.length;//비밀번호 값을 확인해야 됨 . 
// 		let pass2 = document.querySelector("#password2").value.length;
// 		console.log(pass);
// 	}
	


</script>



</head>
<body>

	<div align="center">
	<h1>회원가입</h1>
	<form action="" name="fr">
	<table border="1">
	<tr>
		<th>이름</th>
		
		<td><input type="text"  id ="name" name= "name" size="20"></td>
	</tr>
	<tr>
		<th>id</th>
		<td><input type="text" id ="id" name="id"  placeholder="4~8글자" onkeyup="checkId1()">
		<input type="button" value="id중복확인" id="btnCheckId" name="id">
		
		<div id= "checkIdResult">
		</div>
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" id ="password" placeholder="8~16글자" onkeyup="checkpass1()">
		<div id= "checkPasswdResult"></div></td>
	</tr>
	<tr>
		<th>비밀번호확인</th>
		<td><input type="password" id ="password2" name="password2" onkeyup="checkpass1()">
		<div id= "checkPasswd2Result"></div></td>
	</tr>
	<tr>
		<th>주민번호</th>
		<td><input type= "text" id ="jumin1"  name="jumin1" size="10" maxlength="6" onkeyup="checkjumin1()"> -
		<input type= "text" id ="jumin2" name="jumin2" maxlength="7">
		<div id= "juminbun"></div></td>
	</tr>
	<tr>
		<th rowspan="2"><h3>주소</h3></th>
		<td>
		<input type="text" id ="passCode" name="passCode" size="6">
		<input type="button" id ="address2" value="주소검색" onclick="search_address()"><br>
		<input type="text" id ="address1" name="address1" placeholder="기본주소"required><br> 
		<input type="text" id="address2" name="address2" placeholder="상세주소" size="25">
		</td>
		
	</tr>
	<tr>
				
		
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="text" id ="email1" name="email1">@<input type="text" id ="email2">
		<select id="emailDomain" name="emailDomain">
		<option value="naver">naver.com</option>
		<option value="nate">nate.com</option>
		<option value="gmail">gmail.com</option>
       </select>
		</td>
	</tr>
	<tr>
		<th>직업</th>
		<td><select id ="job" name="job">
		<option value="hang">항목을 선택하세요</option>
		<option value="ga">개발자</option>
		<option value="db">db엔지니어</option>
		<option value="care">관리자</option>
        </select>
		</td>
	</tr>
	<tr>
		<th>성별</th>
		<td><input type="radio" name="gender" value="M">남
		
		<input type="radio" name="gender" value="F">여
 </td>
	</tr>
	<tr>
		<th>취미</th>
		
		<td>
		<input type="checkbox" name="hobby" value="여행">여행
		<input type="checkbox" name="hobby" value="독서">독서
		<input type="checkbox" name="hobby" value="게임">게임
		<input type="checkbox" id="cb_all" name="cb_all">전체선택

		</td>
	</tr>
	
	
	
	
	<tr>
		<th>가입동기</th>
		<td>
	<textarea cols="60" rows="5"  value="motivation" name="motivation"
	placeholder="남길말씀이 있다면 여기에" ></textarea></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="가입">
	<input type="reset" value="초기화">
	<input type="button" value="돌아가기">
	</td>
	</tr>
	

  </table>
 </form>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function search_address() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
    //th는 행의 제목셀에 저절로 진하게 해주고 중앙으로 해줌.
    //td는 그냥 칸 
</script>

</body>
</html>