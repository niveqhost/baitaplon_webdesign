document.addEventListener("DOMContentLoaded", function() {
	let form = document.getElementById("register_form");

	function validateForm(e) {
		// e.preventDefault();

		let email = document.getElementById('txtEmail').value;
		let msgEmail = document.getElementById('msgEmail');

		let password = document.getElementById('txtPassword').value;
		let msgPassword = document.getElementById('msgPassword');

		let name = document.getElementById('txtName').value;
		let msgName = document.getElementById('msgName');

		let phone = document.getElementById('txtPhone').value;
		let msgPhone = document.getElementById('msgPhone');

		let count = 0;

		/* --- Regurlar Expression --- */
		let phoneCheck = /^[0][0-9]{9}$/;
		let passCheck = /^[0-9a-zA-Z]{8,}$/;
		//let emailCheck = //;

		/* --- Kiểm tra trường email --- */
		if (email == "") {
			msgEmail.style.display = "block";
			msgEmail.innerText = "Bạn chưa nhập địa chỉ E-mail";
			count += 1;
		}
		else {
			if (emailCheck.test(email) == false) {
				msgEmail.innerText = "E-mail chưa đúng định dạng";
				count += 1;
			}
			else{
				msgEmail.style.display = "none";
			}
		}

		/* --- Kiểm tra trường mật khẩu --- */
		if (password == "") {
				msgPassword.style.display = "block";
				msgPassword.innerText = "Mật khẩu bắt buộc phải nhập";
				count += 1;
		}
		else {
			if( passCheck.test(password) == false ) {
				msgPassword.style.display = "block";
				msgPassword.innerText = "Mật khẩu ít nhất phải 8 kí tự";
				count += 1;
			}
			else {
				msgPassword.display = "none";
			}
		}

		/* --- Kiểm tra trường họ tên--- */
		if(name == "") {
			msgName.style.display = "block";
			msgName.innerText = "Họ và tên bắt buộc phải nhập";
			count += 1;
		}
		else {
			msgName.style.display = "none";
		}

		/* --- Kiểm tra trường số điện thoại --- */
		if (phone == "") {
			msgPhone.style.display = "block";
			msgPhone.innerText = "Số điện thoại bắt buộc phải nhập";
			count += 1;
		}
		else {
			if( phoneCheck.test(phone) == false) {
				msgPhone.style.display = "block";
				msgPhone.innerText = "Số điện thoại phải là số, có độ dài 10 kí tự bắt đầu bằng số 0";
				count += 1;
			}
			else {
				msgPhone.style.display = "none";
			}
		}

		console.log(count);

		/* --- Dừng hành động trả kết quả về server của form --- */
		if(count != 0) {
			e.preventDefault();
		}
		else {
			alert("Bạn đã đăng kí thành công!");
		}
	}

	form.addEventListener("submit", validateForm);
});