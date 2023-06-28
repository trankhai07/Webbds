function onlyOne(checkbox) {
    var checkboxes = document.getElementsByName('estate_type')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    })
}

function onlyOne1(checkbox) {
    var checkboxes = document.getElementsByName('post_type')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    })
}

function onlyOne2(checkbox) {
    var checkboxes = document.getElementsByName('post_form')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    })
}
function validatePhoneNumber(phoneNumber) {
    var regexPhone = /^[0-9]{10,}$/; // Để kiểm tra 10 chữ số trở lên, bạn có thể sử dụng /^[0-9]{10,}$/;
    return regexPhone.test(phoneNumber);
}
function validateNumber(number){
    var naturalNumberRegex = /^\d+$/; //Kiểm tra số tự nhiên
    return naturalNumberRegex.test(number);
}
function checkPhone(){
    var phone = document.getElementById("phone");
    if(!validatePhoneNumber(phone.value))   phone.style.border = 'solid 2px red';
    else    phone.style.border = 'solid 2px green';
}
function checkOwner_name(){
    var name = document.getElementById("owner_name")
    if(name.value == "") name.style.border = 'solid 2px red';
    else    name.style.border = 'solid 2px green';
}
function checkAddress(){
    var address = document.getElementById("address")
    if(address.value == "") address.style.border = 'solid 2px red';
    else    address.style.border = 'solid 2px green';
}
function checkArea(){
    var area = document.getElementById("area");
    if(!validateNumber(area.value)) area.style.border = 'solid 2px red';
    else    area.style.border = 'solid 2px green';
}
function validatePrice(input) {
    var priceRegex = /^\s*(\d+)(\s*(triệu|tỷ|k)\s*\/?\s*((m2|tháng))?(\s*\/\s*(m2|tháng))?)?\s*$/;
    return priceRegex.test(input);
}
function checkPrice(){
    var price = document.getElementById("price");
    if(!validatePrice(price.value)) price.style.border = 'solid 2px red';
    else    price.style.border = 'solid 2px green';
}

var input = document.querySelector("#phone");
var iti = window.intlTelInput(input, {
    preferredCountries: ["vn", "us", "gb"], // Các quốc gia ưu tiên hiển thị
    separateDialCode: false, // Hiển thị mã quốc gia cách riêng
    utilsScript: "/template/web/assets/js/utils.js" // Đường dẫn đến utils.js
});