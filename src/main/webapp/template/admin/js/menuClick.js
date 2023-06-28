// Sự kiện click cho các danh sách trong menu 
var btnMenuitem = document.querySelectorAll('.menu-item');
var listUser = document.querySelectorAll('.list-user');
var check = Array(listUser.length).fill(0);
var selected = null;
for (var i = 0; i < btnMenuitem.length; i++) {
  (function(j) {
    btnMenuitem[i].addEventListener('click', function(e) {
        e.preventDefault();
        var link = this.querySelector('a');
        if(selected !== null) {
            link = selected.querySelector('a');
            link.style.backgroundColor = 'white';
            link.style.color = 'var(--text-color)';
        }
        link = this.querySelector('a');
        link.style.backgroundColor = '#30a5ff';
        link.style.color = 'white';
        selected = this;
      for (var k = 0; k < listUser.length; k++) {
        if (k === j) {
            if(check[j] == 0) {
                var totalHeight = 0;
                var item = listUser[k].getElementsByTagName('li');
                for (l = 0; l <item.length;l++) {
                    totalHeight += item[l].offsetHeight;
                }
                listUser[k].style.height = totalHeight +'px';
                // listUser[j].classList.add("list-user-show");
                check[j] = 1;
            }else {
                listUser[k].style.height = '0px';
                // listUser[j].classList.add("list-user-hide");
                if(selected !== null) {
                    link = selected.querySelector('a');
                    link.style.backgroundColor = 'white';
                    link.style.color = 'var(--text-color)';
                    selected = null;
                }
                check[j] = 0;
            }

        } else {
          listUser[k].style.height = '0px';
        //   setTimeout(function() {
            listUser[k].classList.add("list-user-hide");
        //   }, 500);
            check[k] = 0;
        }
      }
    })
  })(i);
}

// Click hiển thị sidebar-menu

const btnMenu = document.querySelector('.navbar-menu-list');
btnMenu.addEventListener('click', function() {
  var modal = document.querySelector('.modal-hide');
  modal.classList.add('modal');
  var menu = document.querySelector('.sidebar-menu-modal');
  menu.style.display = 'block';
})

const btnmodal = document.querySelector('.modal-right');
btnmodal.addEventListener('click', function () {
  var modal = document.querySelector('.modal-hide');
  modal.classList.remove('modal');
  var menu = document.querySelector('.sidebar-menu-modal');
  menu.style.display = 'none';

})

if (window.innerWidth > 1023) {
  var modal = document.querySelector('.modal-hide');
  var menu = document.querySelector('.sidebar-menu-modal');
  menu.style.display = 'none';
  modal.classList.remove('modal');
}
if (window.innerWidth <= 1023){
  var modal = document.querySelector('.modal-hide');
  var menu = document.querySelector('.sidebar-menu-modal');
  modal.classList.add('modal'); 
  menu.style.display = 'block';
}

