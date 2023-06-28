function displayModal(){
    document.getElementById('modalfake1').classList.add("modalfake-open");
}
function turnOffModal(){
        document.getElementById('modalfake1').classList.remove("modalfake-open");
    }
const modalfake = document.getElementById("modalfake1");
const btnNot = document.querySelector(".modalfake_contentfake");
modalfake.addEventListener('click', function () {
    this.classList.remove("modalfake-open");
})

btnNot.addEventListener('click', function (e) {
    e.stopPropagation()
})