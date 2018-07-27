/**
 * ajax.js
 */

var ajax = null;
//xmlHttp 을 ajax 로 바꾼것일뿐. 앞으로도 그렇게 부를 것.

function createAjax()
{
	// ※ 객체를 생성하는 방식의 차이일 뿐..
	//    모두 XMLHttpRequest 객체를 생성하는 구문이다. 
	
	//request 객체가 지원이되냐안되냐 확인했는데, 
	//ActiveXObject 먼저 확인한것. 
	if (window.ActiveXObject)	//-- IE 7 이전
	{
		return new ActiveXObject("Msxml2.XMLHTTP");
		//Microsoft . xml 이렇게 작성한거 이렇게 적어도됨.
		//-- 이와 같은 방식으로 XMLHttpRequest 객체를 생성해라. 
		//   (ActiveXObject 객체 → XMLHttpRequest 객체의 대리 객체) 
	}
	else		//-- 그 외의 모든 브라우저. 
	{
		if (window.XMLHttpRequest)		//XMLHttpRequest 지원 브라우저
		{
			return new XMLHttpRequest();
			//-- 이와 같은 방식으로 직접 XMLHttpRequest 객체를 생성해라. 
		}
		else	//AJAX 를 지원하지 않는 브라우저. 
		{
			return null;
			//또는 return ajax;
		}
	}
	
	
	
	
	
	
	
}