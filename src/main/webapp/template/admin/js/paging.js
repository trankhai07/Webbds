const items = document.querySelectorAll(".items-page");
const page = document.querySelector(".pagination");
const activepage = document.querySelector(".active");
const index = Array.from(items).indexOf(activepage);
// items.forEach(item => {
//     item.style.display = 'none';
// })
var pageWidth = Math.max(document.documentElement.clientWidth, document.body.clientWidth);
if(items.length > 5) {
    items.forEach(item => {
        item.style.display = 'none';
    })
    if (pageWidth < 740) {
        if(index < 1) {
            for(let i = 0; i <=2;i++) {
                items[i].style.display = 'block';
            }
        }else if(index > items.length-2) {
            for(let i = items.length-3; i < items.length;i++) {
                items[i].style.display = 'block';
            }
        }else {
            for(let i = index -1 ;i <= index+1;i++) {
                items[i].style.display = 'block';
            }
        }
    }else {
        if(index < 2) {
            for(let i = 0; i <=4;i++) {
                items[i].style.display = 'block';
            }
        }else if(index > items.length-3) {
            for(let i = items.length-5; i < items.length;i++) {
                items[i].style.display = 'block';
            }
        }else {
            for(let i = index -2 ;i <= index+2;i++) {
                items[i].style.display = 'block';
            }
        }
    }
}
