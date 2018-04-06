function CreateAjax(){
			var ajax = null;
			try {
				ajax = new ActiveXObject("microsoft.xmlhttp");
			} catch (e) {
				ajax = new XMLHttpRequest();
			}
			return ajax;
		}