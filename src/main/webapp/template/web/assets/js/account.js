function validatePhoneNumber(phoneNumber) {
    var regexPhone = /^[0-9]{10,}$/; // Để kiểm tra 10 chữ số trở lên, bạn có thể sử dụng /^[0-9]{10,}$/;
    return regexPhone.test(phoneNumber);
}

function validatePassword(pass) {
    var regexPass = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    return regexPass.test(pass);
}

function validateEmail(email) {
    var regexEmail = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    return regexEmail.test(email);
}
document.addEventListener('DOMContentLoaded', function() {
    var email = document.getElementById("email");
    email.addEventListener('keyup', function() {
        var emailValue = this.value;
        if (!validateEmail(emailValue)) {
            email.style.border = 'solid 2px red';
        } else {
            email.style.border = 'solid 2px green';
        }
    });

    var phone = document.getElementById("phone");
    phone.addEventListener('keyup', function() {
        var phoneValue = this.value;
        if (!validatePhoneNumber(phoneValue)) {
            phone.style.border = 'solid 2px red';
        } else {
            phone.style.border = 'solid 2px green';
        }
    });

    var pass = document.getElementById("password");
    pass.addEventListener('keyup', function() {
        var passValue = this.value;
        if (!validatePassword(passValue)) {
            pass.style.border = 'solid 2px red';
        } else {
            pass.style.border = 'solid 2px green';
        }
    });

    var newpass = document.getElementById("password-new");
    newpass.addEventListener('keyup', function() {
        var newpassValue = this.value;
        if (newpassValue !== pass.value) {
            newpass.style.border = 'solid 2px red';
        } else {
            newpass.style.border = 'solid 2px green';
        }
    });
});

var btnsub = document.getElementById("btnSubmit");
btnsub.addEventListener('click', function (e) {
    e.preventDefault();
    var data = {};
    var email = document.getElementById("email");
    var phone = document.getElementById("phone");
    var pass = document.getElementById("password");
    var newpass = document.getElementById("password-new");
    const formData = new FormData( document.getElementById("formUser"));
    for (var item of formData.entries()) {
        data[item[0]] = item[1];
    }
    if(validateEmail(email.value) && validatePhoneNumber(phone.value) && validatePassword(pass.value) && (pass.value === newpass.value)) {
        updateUser(data);
    }
    else{
        if(!validateEmail(email.value))     email.style.border = 'solid 2px red';
        else    email.style.border = 'solid 2px green';
        if(!validatePhoneNumber(phone.value))   phone.style.border = 'solid 2px red';
        else    phone.style.border = 'solid 2px green';
        if(!validatePassword(pass.value))   pass.style.border = 'solid 2px red';
        else    pass.style.border = 'solid 2px green';
        if(pass.value != newpass.value)     newpass.style.border = 'solid 2px red';
        else    newpass.style.border = 'solid 2px green';
    }
})
function updateUser(data) {
    var url = '/api-web-account';
    fetch(url, {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })

        .then(function (result) {
            window.location.href = '/tai-khoan?message=update_success';
            // alert("ok");
        })
        .catch(function (error) {
            window.location.href = '/tai-khoan' + '?message=error_system';
            // alert("fail")
        });
}

