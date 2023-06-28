var backToTopDiv = document.getElementById("backToTop");

window.addEventListener("scroll", function() {
  var scrollPosition = window.scrollY;

  if (scrollPosition > window.innerHeight) {
    backToTopDiv.classList.add("show"); // Thêm lớp "show" để hiển thị phần tử
  } else {
    backToTopDiv.classList.remove("show"); // Loại bỏ lớp "show" để ẩn phần tử
  }
});
