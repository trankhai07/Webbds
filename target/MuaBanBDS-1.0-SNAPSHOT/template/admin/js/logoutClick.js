var showLogout1 = document.querySelector(".user-info__name");
var showLogout2 =  document.querySelector(".active-name");
var showLogout3 = document.querySelector(".user-avatar");
var showLogout4 = document.querySelector(".icon-color");
var out = document.querySelector(".user-exit");
// out.style.display = 'flex';
var check1 = false;


showLogout1.addEventListener('click', function() {
        // alert('ok');
if(!check1) {
    out.style.display = 'flex';
check1 = true;
}else {
    out.style.display = 'none';
    check1 = false;
}
})
showLogout2.addEventListener('click', function() {
    // alert('ok');
if(!check1) {
out.style.display = 'flex';
check1 = true;
}else {
out.style.display = 'none';
check1 = false;
}
})
showLogout3.addEventListener('click', function() {
    // alert('ok');
if(!check1) {
out.style.display = 'flex';
check1 = true;
}else {
out.style.display = 'none';
check1 = false;
}
})
showLogout4.addEventListener('click', function() {
    // alert('ok');
if(!check1) {
out.style.display = 'flex';
check1 = true;
}else {
out.style.display = 'none';
check1 = false;
}
})

document.addEventListener('click', function(e) {
    if( !out.contains(e.target) && e.target !== showLogout1 
    && e.target !== showLogout2
    && e.target !== showLogout3
    && e.target !== showLogout4) {
        out.style.display = 'none';
        check1 = false;
    }     
})


