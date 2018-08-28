function formValidation() {
	var uname = document.getElementById("userName");
	var passid = document.getElementById("password");
	var cpassid = document.getElementById("confirmpassword");
	var uadd = document.getElementById("address");
	var umobno = document.getElementById("contact");
	var uemail = document.getElementById("email");
	if (allLetter(uname)) {
		if (ValidateEmail(uemail)) {
			if (passid_validation(passid, 8, 20)) {
				if (allnumeric(umobno, 10)) {
					if (alphanumeric(uadd)) {
							document.registration.submit();
						

					}

				}
			}
		}
	}
	return false;
}

function allLetter(uname) {
	var letters = /^[a-zA-Z\s]+$/;
	var uname_len = uname.value.length;
	if (uname.value.match(letters)) {
		return true;
	} else if (uname_len == 0) {
		alert('Username cannot be empty');
		uname.focus();
		return false;
	} else {
		alert('Username must have alphabet characters only');
		uname.focus();
		return false;
	}
}
function passid_validation(passid /* ,mx, my */) {
	var passid_len = passid.value.length;
	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,20}$/;
	if (passid.value.length == 0) {
		alert('Passowrd cannot be empty');
	} else if (passid.value.length < 8 || passid.value.length > 20) {
		alert('password must be between 8 to 20 characters');
	} else if (passid.value.match(passw)) {
		return true;
	}

	else {
		alert('Password must contain atleast one numeric digit,one uppercase,one special character & one lower case');
		passid.focus();
		return false
	}
	/*
	 * else if (passid_len == 0 || passid_len >= my || passid_len < mx) {
	 * alert("Password should not be empty / length be between " + mx + " to " +
	 * my); passid.focus(); return false;}
	 */
}

function ValidateEmail(uemail) {
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if (uemail.value.match(mailformat)) {
		return true;
	} else {
		alert("You have entered an invalid email address!");
		uemail.focus();
		return false;
	}
}

function allnumeric(umobno, mx) {
	var umobno_len = umobno.value.length;
	var numbers = /^[0-9]+$/;
	/*
	 * if (umobno.value.match(numbers)) { return true; }
	 */
	if ((umobno_len == 0 || umobno_len < mx || umobno_len > mx)) {
		alert("Mobile no should not be empty / length should be " + mx);
		umobno.focus();
		return false;
	} else if ((umobno.value.match(numbers))) {
		return true;
	} else {
		alert('Please enter a valid Mobile number');
		umobno.focus();
		return false;
	}
}
function alphanumeric(uadd) {
	var letters = /^[ A-Za-z0-9_@.:/#&+-]*$/;
	if (uadd.value.match(letters)) {
		return true;
	} else {
		alert('User address must have alphanumeric characters only');
		uadd.focus();
		return false;
	}
}
