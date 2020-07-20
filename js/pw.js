/*DB연동 이후 수정필요*/

function pw_check() {
            var char = prompt("비밀번호를 입력하시오.");
        		if(char==='0000'){
        			location.replace("introdu2_modify.html");
        		} else if(char===null){
              alert("취소하였습니다.");
            }else{
        			alert("비밀번호가 틀렸습니다.");
        		}
        	}
