
<script type="text/javascript">

/* Delete */
		function Delete(id) {
			
			var page = $('#page').val();	
			
			var conf = confirm("Are You Sure Delete !");

			if (conf == true) {
				var url = "delete?id=" + id+"&page="+page;
				if (window.XMLHttpRequest) {
					request = new XMLHttpRequest();
				} else if (window.ActiveXObject) {
					request = new ActiveXObject("Microsoft.XMLHTTP");

				}

				try {
					
					request.onreadystatechange = setDelete;

					request.open("Get", url, true);
					request.send();
				} catch (e) {
					alert("cant connect server");
				}
			}
		}


		function setDelete() {

			var v = $('#searchbyid').val();
			if (request.readyState == 4) {
				var val = request.responseText;
				document.getElementById('record').innerHTML = val;
				
				if(v!=""){
					SByPagination();
					}
			}
			
		}

		
/* InsertData */
		function insertData() {

			var name = $('#name').val();
			var email = $('#email').val();
			var password = $('#pwd').val();
			var phone = $('#tel').val();
			var page = $('#tot').val();
			var id=0;
			var url = "insert?name=" + name + "&email=" + email + "&password="
					+ password + "&phone=" + phone+"&id=" + id+"&page=" + page;

			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");

			}

			try {

				request.onreadystatechange = getFeedback;

				request.open("Get", url, true);
				request.send();
			} catch (e) {
				alert("cant connect server");
			}
		}

		function getFeedback() {

			if (request.readyState == 4) {
				var val = request.responseText;
				document.getElementById('record').innerHTML = val;
				alert("Record Added")
			
			}
		}



/* get by id */
		function getbyId(id) {

			var url = "displaybyid?id=" + id;
			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");

			}

			try {

				request.onreadystatechange = getJsonbyidDsiplay;

				request.open("Get", url, true);
				request.send();
			} catch (e) {
				alert("cant connect server");
			}
		}
		function getJsonbyidDsiplay() {

			if (request.readyState == 4) {
				var val = request.responseText;
				var jd = JSON.parse(val);
				$('#utel').val(jd.phone);
				$('#uemail').val(jd.email);
				$('#uname').val(jd.name);
				$('#upwd').val(jd.password);
				$('#uid').val(jd.id);

			}
		}
/* UpdateData */
		function Update() {

			var name = $('#uname').val();
			var email = $('#uemail').val();
			var password = $('#upwd').val();
			var phone = $('#utel').val();
			var id = $('#uid').val();
			var page = $('#page').val();
			
			var url = "update?name=" + name + "&email=" + email + "&password="
					+ password + "&phone=" + phone + "&id=" + id+ "&page=" + page;

			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");

			}

			try {

				request.onreadystatechange = getFeedbackUpdate;

				request.open("Get", url, true);
				request.send();
			} catch (e) {
				alert("cant connect server");
			}
		}

		function getFeedbackUpdate() {

			if (request.readyState == 4) {
				var val = request.responseText;
				document.getElementById('record').innerHTML = val;
				
			}
		}


		/* Pagination */
		function Pagination(page) {
			
			if(page==-1){
			var page=0;
				}else
					if(page=="undefined"){
						var page=0;
							}
			
			var url = "pagination?page="+page;
			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");

			}

			try {

				request.onreadystatechange = getJsonDsiplay;

				request.open("Get", url, true);
				request.send();
			} catch (e) {
				alert("cant connect server");
			}
		}

		/* Serch Pagination */
		function SPagination() {
			
			var v = $('#no').val();
			var v1=$('#page').val();
			
			if(v==""||v==0){
				
			var v=v1;
				}else{
			var v=v-1;}
			
			
			var url = "pagination?page="+v;
			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");

			}

			try {

				request.onreadystatechange = getJsonDsiplay;

				request.open("Get", url, true);
				request.send();
			} catch (e) {
				alert("cant connect server");
			}
		}

		
		function getJsonDsiplay() {
			
			
			if (request.readyState == 4) {
				var val = request.responseText;
				document.getElementById('record').innerHTML = val;
				
			}
		}
		/* Serch By Pagination */
		function SByPagination() {
			
			var v = $('#searchbyid').val();
			var op=$('#Serchby').val();
			var url = "SearchByOther?page="+v+"&by="+op;
			if (window.XMLHttpRequest) {
				request = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				request = new ActiveXObject("Microsoft.XMLHTTP");

			}

			try {

				request.onreadystatechange = getJsonDsiplay;

				request.open("Get", url, true);
				request.send();
			} catch (e) {
				alert("cant connect server");
			}
		}
	</script>