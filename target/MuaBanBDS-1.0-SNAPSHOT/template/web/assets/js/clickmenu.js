function showmenu(){
    modal.classList.add("open");
}

function hidenmenu(){
    modal.classList.remove("open");
}
const btnmenu = document.getElementById('js-menu-bar');
const btnclose = document.getElementById('js-button-close');
const modal = document.querySelector('.modal');
const modal_header__wrapper = document.querySelector('.js-modal-header__wrapper');
btnmenu.addEventListener('click',showmenu);
btnclose.addEventListener('click',hidenmenu);
modal.addEventListener('click',hidenmenu);
modal_header__wrapper.addEventListener('click',function(event){
    event.stopPropagation();
});