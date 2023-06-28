<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/hanoirealstate.css"/> ">
<div class="Wrapper1" style="display:block;width: 100%;margin-top:71px;">
    <div class="gird wide">
        <div class="row headerfake">
                <div class="col l-6 m-6 c-12 headerfake-block">
                    <div class="filter">
                        <h1 style="text-align: center;">
                            <button onclick="displayModal()" style="background-color:unset;border:unset;"><i
                                    class="fa-solid fa-filter" style="color:white"></i></button>
                            &nbsp LỌC
                        </h1>
                    </div>
                    <div class="headerfake_contentfake">
                        <a class="headerfake_contentfake_link"><h1>TRANG CHỦ</h1></a>
                        <i class="fa-solid fa-chevron-right" style="color:white"></i>
                        <a class="headerfake_contentfake_link" style="margin-left: 5px"><h1>${requestScope.pagefrom}</h1></a>
                    </div>
                    <div class="block-right"></div>
                </div>
<%--                <div class="col l-5 m-6 c-12 headerfake_search">--%>
<%--                    <select class="headerfake_search_bar" name="searchtype">--%>
<%--                        <option value="buyedrealstate">Mới nhất</option>--%>
<%--                        <option value="rentedrealstate">Đắt nhất</option>--%>
<%--                        <option value="buyedrealstate">Giá từ cao xuống thấp</option>--%>
<%--                        <option value="rentedrealstate">Giá từ thấp đến cao</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
            </div>
        </div>
        <main id="main">
            <div class="grid wide contentfake">
                <div class="col l-3 m-4 c-12 sidebarfake">
                    <div class="row contentfake_search" id="contentfake_search1">
                        <div class="col l-12 c-12 modalfake_contentfake_search_items">
                            <h1>TÌM KIẾM NHANH</h1>
                            <hr class="search_items_line" style="width:20%; float: left;border: 2px solid #ccc;"/>
                            <form action="/find-post" class="contentfake_search_form">
                                <input type="hidden" name="type" value="1">
                                <input type="hidden" name="pagefrom" value="TÌM KIẾM">
                                <input type="text" id="fname" name="title1" placeholder="Nhập tìm kiếm"
                                       class="newfake">
                                <select id="newfakes1" name="postType1" class="newfake">
                                    <option value="">Loại tin</option>
                                    <option value="bán BĐS">BĐS bán</option>
                                    <option value="cho thuê BĐS">BĐS cho thuê</option>
                                </select>
                                <select id="select-city" name="province1" class="newfake">
                                    <option class="type__option type__option-start" value="">Tỉnh/Thành Phố</option>
                                    <option class="type__option" value="Hà Nội">Hà Nội</option>
                                    <option class="type__option" value="TPHCM">TPHCM</option>
                                </select>
                                <select id="select-district" name="district1" class="newfake">
                                    <option class="type__option type__option-start" value="">Chọn quận</option>
                                </select>
                                <select id="newfakes4" name="estateType1" class="newfake">
                                    <option class="type__option type__option-start" value="">Loại BĐS</option>
                                    <option class="type__option type__option-start" value="Nhà đất">Nhà đất</option>
                                    <option class="type__option type__option-start" value="Chung cư">Chung cư</option>
                                    <option class="type__option type__option-start" value="Đất thổ cư">Đất thổ cư
                                    </option>
                                    <option class="type__option type__option-start" value="Văn phòng">Văn phòng</option>
                                    <option class="type__option type__option-start" value="Loại BĐS">Loại BĐS</option>
                                    <option class="type__option type__option-start" value="BĐS khác">BĐS khác</option>
                                </select>
                                <div class="column-content column-content__area">
                                    <input type="text" class="input input__area" placeholder="Diện tích">
                                    <div class="area__noti">
                                        <input type="number" name="minArea1" class="input area__noti--start"
                                               placeholder="Từ m2">
                                        <input type="number" name="maxArea1" class="input area__noti--end"
                                               placeholder="Đến m2">
                                    </div>
                                </div>
                                <select id="newfakes6" name="priceRange1" class="newfake">
                                    <option class="type__option type__option-start" value="Khoảng giá">Khoảng giá
                                    </option>
                                    <option class="type__option type__option-start" value="Thỏa thuận">Thỏa thuận
                                    </option>
                                    <option class="type__option type__option-start" value="Dưới 3 triệu">Dưới 3 triệu
                                    </option>
                                    <option class="type__option type__option-start" value="3 - 5 triệu">3 - 5 triệu
                                    </option>
                                    <option class="type__option type__option-start" value="5 - 10 triệu">5 - 10 triệu
                                    </option>
                                    <option class="type__option type__option-start" value="10 - 15 triệu">10 - 15
                                        triệu
                                    </option>

                                    <option class="type__option type__option-start" value="15 – 20 triệu">15 – 20 triệu</option>
                                    <option class="type__option type__option-start" value="20 – 30 triệu">20 – 30 triệu</option>
                                    <option class="type__option type__option-start" value="30 – 40 triệu">30 – 40 triệu</option>
                                    <option class="type__option type__option-start" value="40 – 60 triệu">40 – 60 triệu</option>
                                    <option class="type__option type__option-start" value="60 – 80 triệu">60 – 80 triệu</option>
                                    <option class="type__option type__option-start" value="80 – 100 triệu">80 – 100 triệu</option>
                                    <option class="type__option type__option-start" value="100 – 300 triệu">100 – 300 triệu</option>
                                    <option class="type__option type__option-start" value="300 – 500 triệu">300 – 500 triệu</option>
                                    <option class="type__option type__option-start" value="500 – 700 triệu">500 – 700 triệu</option>
                                    <option class="type__option type__option-start" value="700 – 1 tỷ">700 – 1 tỷ</option>
                                    <option class="type__option type__option-start" value="1 – 2 tỷ">1 – 2 tỷ</option>
                                    <option class="type__option type__option-start" value="2 – 3 tỷ">2 – 3 tỷ</option>
                                    <option class="type__option type__option-start" value="3 – 4 tỷ">3 – 4 tỷ</option>
                                    <option class="type__option type__option-start" value="4 – 6 tỷ">4 – 6 tỷ</option>
                                    <option class="type__option type__option-start" value="6 – 8 tỷ">6 – 8 tỷ</option>
                                </select>

                                <input type="submit" value="Tìm kiếm" class="inputfake">
                            </form>

                        </div>
                    </div>
                    <br/>
                    <div class="row contentfake_category" id="contentfake_category1">
                        <div class="col l-12 c-12 contentfake_category_items">
                            <h1>DANH MỤC</h1>
                            <hr class="category_items_line"
                                style="width:20%; float: left;border: 2px solid #ccc;"/>
                            <a class="category_item_line_link"
                               href="find-post?type=1&pagefrom=BĐS+CHO+THUÊ&title1=&postType1=cho+thuê+BĐS&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                cho thuê</a>
                            <hr class="category_items_line"/>
                            <a class="category_item_line_link"
                               href="find-post?type=1&pagefrom=BĐS+HÀ+NỘI&title1=&postType1=&province1=Hà+Nội&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                Hà Nội</a>
                            <hr class="category_items_line"/>
                            <a class="category_item_line_link"
                               href="find-post?type=1&pagefrom=BĐS+MUA+BÁN&title1=&postType1=bán+BĐS&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                Mua Bán</a>
                            <hr class="category_items_line"/>
                            <a class="category_item_line_link"
                               href="find-post?type=1&postform1=nb&pagefrom=BĐS+NỔI+BẬT&title1=&postType1=&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                Nổi bật</a>
                            <hr class="category_items_line"/>
                            <a class="category_item_line_link"
                               href="find-post?type=1&pagefrom=BĐS+TPHCM&title1=&postType1=&province1=TPHCM&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                TP.HCM</a>
                            <hr class="category_items_line"/>
                        </div>
                    </div>
                </div>

                <div class="col l-9 m-8 c-12 products">
                    <% int d = 0;%>
                    <c:forEach items="${requestScope.lst1}" var="p">
                        <%if (d % 4 == 0) {%>
                        <div class="row products_row"><%}%>
                            <div class="col l-3 m-6 c-12 products_row_item">
                                <div class="products_row_item_component">
                                    <img class="product_img" src="<c:url value="${p.getImage()}" />">
                                    <div class="product_description">
                                        <div class="product_type">BĐS ${p.getSumarryAddress()}</div>
                                        <div class="product_title"><a class="title_estate_link"
                                                                      href="/post?id=${p.getId()}&pagefrom=${p.getSumarryAddress()}">${p.getTitle()}</a>
                                        </div>
                                        <div class="product_price"><i class="fa-solid fa-money-bill"></i>
                                            <c:if test="${p.getPrice()>=1000}">
                                                ${p.getPrice()/1000} tỷ
                                            </c:if>
                                            <c:if test="${p.getPrice()<1000}">
                                                ${p.getPrice()} triệu
                                            </c:if>
                                        </div>
                                        <div class="product_area"><i class="fa-solid fa-chart-area"></i>
                                                ${p.getArea()}m<sup>2</sup></div>
                                        <div class="product_date"><i class="fa-solid fa-calendar-days"></i>&nbsp
                                                ${p.getDate()}
                                        </div>
                                        <div class="product_location"><i class="fa-solid fa-location-dot"></i>&nbsp
                                                ${p.getSumarryAddress()}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%d += 1;%>
                            <%if (d % 4 == 0) {%></div>
                        <%}%>
                    </c:forEach>
                </div>
            </div>
        </main>
        <div class="modalfake" id="modalfake1">
            <button onclick="turnOffModal()" style="float:right; background-color:unset;border:unset;"><i
                    class="fa-solid fa-xmark" style="font-size: 40px;color:#ccc;"></i></button>
            <div class="modalfake_contentfake">
                <div class="col l-3 m-4 c-12">
                    <div class="row modalfake_contentfake_search">
                        <div class="col l-12 c-12 modalfake_contentfake_search_items">
                            <h1 id="tkn">TÌM KIẾM NHANH</h1>
                            <hr class="search_items_line" style="width:20%; float: left;border: 2px solid #ccc;"/>
                            <form action="/find-post" class="contentfake_search_form">
                                <input type="text" name="title1" placeholder="Nhập tìm kiếm"
                                       class="newfake">
                                <select name="postType1" class="newfake">
                                    <option value="">Loại tin</option>
                                    <option value="bán BĐS">BĐS bán</option>
                                    <option value="cho thuê BĐS">BĐS cho thuê</option>
                                </select>
                                <select id="modal_select-city" name="province1" class="newfake">
                                    <option class="type__option type__option-start" value="">Tỉnh/Thành Phố</option>
                                    <option class="type__option" value="Hà Nội">Hà Nội</option>
                                    <option class="type__option" value="TPHCM">TPHCM</option>
                                </select>
                                <select id="modal_select-district" name="district1" class="newfake">
                                    <option class="type__option type__option-start" value="">Chọn quận</option>
                                </select>
                                <select name="estateType1" class="newfake">
                                    <option class="type__option type__option-start" value="">Loại BĐS</option>
                                    <option class="type__option type__option-start" value="Nhà đất">Nhà đất</option>
                                    <option class="type__option type__option-start" value="Chung cư">Chung cư</option>
                                    <option class="type__option type__option-start" value="Đất thổ cư">Đất thổ cư
                                    </option>
                                    <option class="type__option type__option-start" value="Văn phòng">Văn phòng</option>
                                    <option class="type__option type__option-start" value="Loại BĐS">Loại BĐS</option>
                                    <option class="type__option type__option-start" value="BĐS khác">BĐS khác</option>
                                </select>
                                <div class="column-content column-content__area">
                                    <input type="text" class="input input__area" placeholder="Diện tích">
                                    <div class="area__noti">
                                        <input type="number" name="minArea1" class="input area__noti--start"
                                               placeholder="Từ m2">
                                        <input type="number" name="maxArea1" class="input area__noti--end"
                                               placeholder="Đến m2">
                                    </div>
                                </div>
                                <select name="priceRange1" class="newfake" value="">
                                    <option class="type__option type__option-start" value="Khoảng giá">Khoảng giá
                                    </option>
                                    <option class="type__option type__option-start" value="Thỏa thuận">Thỏa thuận
                                    </option>
                                    <option class="type__option type__option-start" value="Dưới 3 triệu">Dưới 3 triệu
                                    </option>
                                    <option class="type__option type__option-start" value="3 - 5 triệu">3 - 5 triệu
                                    </option>
                                    <option class="type__option type__option-start" value="5 - 10 triệu">5 - 10 triệu
                                    </option>
                                    <option class="type__option type__option-start" value="10 - 15 triệu">10 - 15
                                        triệu
                                    </option>
                                    <option class="type__option type__option-start" value="15 – 20 triệu">15 – 20 triệu</option>
                                    <option class="type__option type__option-start" value="20 – 30 triệu">20 – 30 triệu</option>
                                    <option class="type__option type__option-start" value="30 – 40 triệu">30 – 40 triệu</option>
                                    <option class="type__option type__option-start" value="40 – 60 triệu">40 – 60 triệu</option>
                                    <option class="type__option type__option-start" value="60 – 80 triệu">60 – 80 triệu</option>
                                    <option class="type__option type__option-start" value="80 – 100 triệu">80 – 100 triệu</option>
                                    <option class="type__option type__option-start" value="100 – 300 triệu">100 – 300 triệu</option>
                                    <option class="type__option type__option-start" value="300 – 500 triệu">300 – 500 triệu</option>
                                    <option class="type__option type__option-start" value="500 – 700 triệu">500 – 700 triệu</option>
                                    <option class="type__option type__option-start" value="700 – 1 tỷ">700 – 1 tỷ</option>
                                    <option class="type__option type__option-start" value="1 – 2 tỷ">1 – 2 tỷ</option>
                                    <option class="type__option type__option-start" value="2 – 3 tỷ">2 – 3 tỷ</option>
                                    <option class="type__option type__option-start" value="3 – 4 tỷ">3 – 4 tỷ</option>
                                    <option class="type__option type__option-start" value="4 – 6 tỷ">4 – 6 tỷ</option>
                                    <option class="type__option type__option-start" value="6 – 8 tỷ">6 – 8 tỷ</option>
                                </select>
                                <input type="hidden" name="pagefrom" value="TÌM KIẾM">
                                <input type="submit" value="Tìm kiếm" class="inputfake">
                            </form>

                        </div>
                        <br/>
<%--                        <div class="row modalfake_contentfake_category">--%>
                            <div class="col l-12 c-12 modalfake_contentfake_category_items">
                                <h1>DANH MỤC</h1>
                                <hr class="category_items_line"
                                    style="width:20%; float: left;border: 2px solid #ccc;"/>
                                <a class="category_item_line_link"
                                   href="find-post?type=1&pagefrom=BĐS+CHO+THUÊ&title1=&postType1=cho+thuê+BĐS&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                    cho thuê</a>
                                <hr class="category_items_line"/>
                                <a class="category_item_line_link"
                                   href="find-post?type=1&pagefrom=BĐS+HÀ+NỘI&title1=&postType1=&province1=Hà+Nội&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                    Hà Nội</a>
                                <hr class="category_items_line"/>
                                <a class="category_item_line_link"
                                   href="find-post?type=1&pagefrom=BĐS+MUA+BÁN&title1=&postType1=bán+BĐS&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                    Mua Bán</a>
                                <hr class="category_items_line"/>
                                <a class="category_item_line_link"
                                   href="find-post?type=1&postform1=nb&pagefrom=BĐS+NỔI+BẬT&title1=&postType1=&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                    Nổi bật</a>
                                <hr class="category_items_line"/>
                                <a class="category_item_line_link"
                                   href="find-post?type=1&pagefrom=BĐS+TPHCM&title1=&postType1=&province1=TPHCM&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
                                    TP.HCM</a>
                                <hr class="category_items_line"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    <c:set value="${requestScope.currentPage}" var="currentPage"/>
    <c:set value="${requestScope.numOfPage}" var="numOfPage"/>
    <c:set value="${requestScope.type}" var="type"/>
    <div class="pagination">
        <div class="paging-item">
            <c:if test="${currentPage!=1}">
                <a href="find-post?pagenum=${currentPage-1}&pagefrom="${requestScope.pagefrom}"
                   class="${1==currentPage?"active":"normal"}"><i class="fa-solid fa-chevron-left"></i></a>
            </c:if>
            <c:forEach begin="${1}" end="${numOfPage}" var="i">
                <a href="find-post?pagenum=${i}&pagefrom=${requestScope.pagefrom}"
                   class="${i==currentPage?"active":"normal"} items-page">${i}</a>
            </c:forEach>
            <c:if test="${currentPage!=numOfPage}">
                <a href="find-post?pagenum=${currentPage+1}&pagefrom=${requestScope.pagefrom}"
                   class="${numOfPage==currentPage?"active":"normal"}"> <i
                        class="fa-solid fa-chevron-right"></i> </a>
            </c:if>
        </div>
    </div>
</div>
<script>
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
</script>
<script src="<c:url value="/template/web/assets/js/hanoirealesate.js" />"></script>
</body>
</html>