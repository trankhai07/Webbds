
<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Estate</title>
</head>
<body>
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/hanoirealstate.css" />">

<!-- Wrapper contain header, content -->
  <!-- Header -->

  <!-- Content -->
  <div class="content">
    <div class="content-banner">

      <!-- Section P1  -->
      <section class="section section_p1" >
        <div class="section-img-banner fill" style="background-image:url('/template/web/assets/img/banner_home.jpg');">
          <div class="section-img-banner--overlay absolute fill"></div>
        </div>

        <div class="section-content relative">
          <div class="grid wide row">
            <div class="col l-6 c-12 c-12-padding25 m-6 m-6-padding20">
              <div class="col-inner text-center">
                <a href="<c:url value="/new-post"/> " class="text-center__link">
                  <span class="text-center--content">ĐĂNG TIN NHÀ ĐẤT CHÍNH CHỦ TẠI ĐÂY</span>
                </a>
              </div>
            </div>

            <div class="col l-6 c-12 c-12-padding25 m-6 m-6-padding20">
              <div class="col-inner text-center">
                <a href="<c:url value="/lien-he" /> " class="text-center__link">
                  <span class="text-center--content">GỬI NHU CẦU MUA-THUÊ BĐS TẠI ĐÂY</span>
                </a>
              </div>
            </div>

            <div class="col l-12 c-12 c-12-padding m-12">
              <div class="col-inner text-center">
                <h1 class="section-title">
                                        <span class="section-title__center">
                                            <i class="center--search fa-solid fa-magnifying-glass"></i>
                                            LỌC NGUỒN NHÀ CHÍNH CHỦ
                                        </span>
                </h1>

                <form action="/find-post" class="section-content-description">
                  <div class="grid">
                    <div class="row">
                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content">
                          <input type="hidden" name="type" value="1">
                          <input type="text" name="title1" class="input" placeholder="Nhập tìm kiếm">
                          <div class="column-content__notifi">
                            <span class="content-item">Bia carl</span>
                            <span class="content-item">Bia carl</span>
                            <span class="content-item">Bia carl</span>
                            <span class="content-item">Bia carl</span>
                            <span class="content-item">Bia carl</span>
                          </div>
                        </div>
                      </div>

                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content column-content__type">
                          <i class="down-option fa-solid fa-chevron-down"></i>
                          <select class="input content__type--option" name="postType1">
                            <option class="type__option type__option-start" value="">Loại tin</option>
                            <option class="type__option " value="bán BĐS">BĐS Bán</option>
                            <option class="type__option" value="cho thuê BĐS">BĐS Cho Thuê</option>
                          </select>
                        </div>
                      </div>

                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content">
                          <i class="down-option fa-solid fa-chevron-down"></i>
                          <select class="input content__type--option" id = "select-city" name="province1">
                            <option class="type__option type__option-start" value="">Tỉnh/Thành Phố</option>
                            <option class="type__option" value="Hà Nội">Hà Nội</option>
                            <option class="type__option" value="TPHCM">TPHCM</option>
                          </select>

                        </div>
                      </div>

                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content">
                          <i class="down-option fa-solid fa-chevron-down"></i>
                          <select class="input content__type--option" id = "select-district" name="district1">
                            <option class="type__option type__option-start" value="">Chọn quận</option>
                          </select>
                        </div>
                      </div>

                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content">
                          <i class="down-option fa-solid fa-chevron-down"></i>
                          <select class="input content__type--option" name="estateType1">
                            <option class="type__option type__option-start" value="">Loại BĐS</option>
                            <option class="type__option type__option-start" value="Nhà đất">Nhà đất</option>
                            <option class="type__option type__option-start" value="Chung cư">Chung cư</option>
                            <option class="type__option type__option-start" value="Đất thổ cư">Đất thổ cư</option>
                            <option class="type__option type__option-start" value="Văn phòng">Văn phòng</option>
                            <option class="type__option type__option-start" value="Loại BĐS">Loại BĐS</option>
                            <option class="type__option type__option-start" value="BĐS khác">BĐS khác</option>

                          </select>
                        </div>
                      </div>

                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content column-content__area">
                          <input type="text" class="input input__area" placeholder="Diện tích" >
                          <div class="area__noti">
                            <input type="number" name="minArea1" class="input area__noti--start" placeholder="Từ m2">
                            <input type="number" name="maxArea1" class="input area__noti--end" placeholder="Đến m2">
                          </div>
                        </div>
                      </div>

                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content">
                          <i class="down-option fa-solid fa-chevron-down"></i>
                          <select name="priceRange1" class="input content__type--option">
                            <option class="type__option type__option-start" value="Khoảng giá">Khoảng giá</option>
                            <option class="type__option type__option-start" value="Thỏa thuận">Thỏa thuận</option>
                            <option class="type__option type__option-start" value="Dưới 3 triệu">Dưới 3 triệu</option>
                            <option class="type__option type__option-start" value="3 - 5 triệu">3 - 5 triệu</option>
                            <option class="type__option type__option-start" value="5 - 10 triệu">5 - 10 triệu</option>
                            <option class="type__option type__option-start" value="10 - 15 triệu">10 - 15 triệu</option>
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
                        </div>
                      </div>
                      <input type="hidden" name="pagefrom" value="TÌM KIẾM">
                      <div class="col l-3 c-12 c-12-padding m-12">
                        <div class="column-content">
                          <button type="submit" class="button-search mobile-search">TÌM KIẾM NHANH</button>
                        </div>
                      </div>

                    </div>
                  </div>
                </form>
              </div>
            </div>

          </div>
        </div>

      </section>

      <!-- Section P2 -->
      <section class="section section_p2">
        <div class="section-img-banner fill" >
        </div>

        <div class="section-content relative section_p2__center">
          <div class="grid wide">
            <div class="row">
              <div class="col c-12 col-padding m-12">
                <div class="p2__center--infor">
                  <h1 class="infor--uppercase">TIN BẤT ĐỘNG SẢN CHÍNH CHỦ</h1>
                  <h2 class="infor--thin_font">Tin BĐS tỷ lệ chính chủ cao, cập nhật hàng ngày, đăng ký nhanh chóng, bộ lọc tìm kiếm thông minh, dễ dàng sử dụng, kích hoạt ngay lập tức.</h2>
                </div>

              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Section P3 -->
        <section class="section section_p4">
            <div class="section-img-banner fill" >
            </div>

            <div class="section-content relative section_p4__center">
                <div class="grid wide">
                    <div class="row ">
                        <div class="col l-12 c-12 c-12-padding m-12">
                            <div class="section__content">
                                <div class="section__content--title">
                                    <h3 class="title__center">
                                                <span>
                                                    BẤT ĐỘNG SẢN NỔI BẬT
                                                </span>
                                    </h3>
                                </div>
                                <div class="section__content--infor">
                                    <div class="grid wide">
                                            <% int d = 0;%>
                                            <c:forEach items="${requestScope.NBlst}" var="p">
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

                                        <!-- Button -->
                                        <div class="col l-12 c-12 c-12-padding m-12">
                                            <div class="button__news">
                                                <a href="<c:url value="find-post?type=1&postform1=nb&pagefrom=BĐS+NỔI+BẬT&title1=&postType1=&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1="/> " class="news-all text-center-content">XEM TẤT CẢ TIN
                                                    <i class="down-option news-all--down fa-solid fa-chevron-down"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        </section>
      <!-- Section P4 -->
      <section class="section section_p4">
        <div class="section-img-banner fill" >
        </div>

        <div class="section-content relative section_p4__center">
          <div class="grid wide">
            <div class="row ">
              <div class="col l-12 c-12 c-12-padding m-12">
                <div class="section__content">
                  <div class="section__content--title">
                    <h3 class="title__center">
                                                <span>
                                                    BẤT ĐỘNG SẢN HÀ NỘI
                                                </span>
                    </h3>
                  </div>
                  <div class="section__content--infor">
                    <div class="grid wide">
                      <div class="row ">
                          <% d = 0;%>
                          <c:forEach items="${requestScope.HNlst}" var="p">
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

                        <!-- Button -->
                        <div class="col l-12 c-12 c-12-padding m-12">
                          <div class="button__news">
                            <a href="<c:url value="find-post?type=1&pagefrom=BĐS+HÀ+NỘI&title1=&postType1=&province1=Hà+Nội&district1=&estateType1=&minArea1=&maxArea1=&priceRange1="/> " class="news-all text-center-content">XEM TẤT CẢ TIN
                              <i class="down-option news-all--down fa-solid fa-chevron-down"></i>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          </div>

      </section>

      <!-- Section P5 -->
      <section class="section section_p5">
        <div class="section-img-banner fill" >
        </div>

        <div class="section-content relative section_p5__center">
          <div class="grid wide">
            <div class="row">
              <div class="col l-12 c-12 c-12-padding m-12">
                <div class="section__content">
                  <div class="section__content--title">
                    <h3 class="title__center">
                                                <span>
                                                    BẤT ĐỘNG SẢN HCM
                                                </span>
                    </h3>
                  </div>
                  <div class="section__content--infor">
                    <div class="grid wide">
                          <% d = 0;%>
                          <c:forEach items="${requestScope.HCMlst}" var="p">
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
                        <!-- Button -->
                        <div class="col l-12 c-12 c-12-padding m-12">
                          <div class="button__news">
                            <a href="find-post?type=1&pagefrom=BĐS+TPHCM&title1=&postType1=&province1=TPHCM&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=" class="news-all text-center-content">XEM TẤT CẢ TIN
                              <i class="down-option news-all--down fa-solid fa-chevron-down"></i>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      </section>
    </div>


      <!-- Section P6 (wait)-->
      <section class="section section_p6">
        <div class="section-img-banner fill" >
        </div>
        <div class="section-content relative section_p5__center">
          <div class="grid wide">
            <div class="row">
              <div class="col l-6 m-6 c-12">
                <div class="tablePrice__container section-table-p6">
                  <div class="tablePrice__container__topic">BẢNG GIÁ DỊCH VỤ XEM TIN</div>
                  <div class="tablePrice__container__content">
                    <ul class="tablePrice__list">
                      <h1 class="tablePrice__list_topic">
                        300K/ THÁNG
                      </h1>
                      <li class="tablePrice__item">
                        LH 0562138187 Mua gói dịch vụ để hiển thị Liên Hệ Chủ Nhà
                      </li>
                      <li class="tablePrice__item">
                        Mua 1 tháng: 300k
                      </li>
                      <li class="tablePrice__item">
                        Mua 3 tháng: 900k - Tặng 1 tháng
                      </li>
                      <li class="tablePrice__item">
                        Mua 6 tháng: 1800k - Tặng 2 tháng
                      </li>
                      <li class="tablePrice__item">
                        Mua 1 năm: 3600k - Tặng 4 tháng
                      </li>
                      <div></div>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col l-6 m-6 c-12">
                <div class="tablePrice__container">
                  <div class="tablePrice__container__topic">HƯỚNG DẪN MUA GÓI DỊCH VỤ</div>
                  <div class="tablePrice__container__content">
                    <ul class="tablePrice__list">
                      <h1 class="tablePrice__list_topic">
                        CHUYỂN KHOẢN
                      </h1>
                        <li class="tablePrice__item">
                            VP Bank: 0026A710021 - Trần Đình Khải
                        </li>
                        <li class="tablePrice__item">
                            Vietcombank: 1034345904 - Nguyễn Anh Quốc
                        </li>
                        <li class="tablePrice__item">
                            MB Bank: 0353621271 - Ngô Đức Phương
                        </li>
                      <li class="tablePrice__item">
                        NỘI DUNG: (Khu vực) (Email) (Số đt)
                      </li>
                      <li class="tablePrice__item">
                        VD: HN( hoặc HCM) abcgmail.com( bỏ @) 0839100210
                      </li>
                      <div></div>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>

</body>

</html>