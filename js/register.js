document.addEventListener("DOMContentLoaded", function() {
	let form = document.getElementById("register_form");

	function validateForm(event) {

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
		let passCheck = /^[A-Za-z][0-9a-zA-Z]{7,}$/;
		let emailCheck = //;
		let nameCheck = /[^_#&<>\"~;$^%{}?\d]{1,6}$/g;
		/* --- Kiểm tra trường email --- */
		if (email == "") {
			msgEmail.style.display = "block";
			msgEmail.innerText = "Bạn chưa nhập địa chỉ e-mail";
			count += 1;
		}
		else {
			if (emailCheck.test(email) == false) {
				msgEmail.innerText = "Định dạng e-mail không phù hợp.";
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
				msgPassword.innerHTML = "Mật khẩu ít nhất phải có 8 kí tự chứa chữ và số <br style='display:block;'> bắt đầu bằng chữ cái và không có các kí tự đặc biệt";
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
			event.preventDefault();
		}
		else {
			alert("Bạn đã đăng kí thành công!");
		}
	}

	form.addEventListener("submit", validateForm);
});