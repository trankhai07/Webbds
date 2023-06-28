
  // Lắng nghe sự kiện thay đổi của select 
  const selectcity = document.getElementById('select-city');
  const selectdistrict = document.getElementById('select-district');
  
  selectcity.addEventListener('change', function() {

    const selectedcity = selectcity.value;
    
    selectdistrict.innerHTML = '';
    
    // Kiểm tra giá trị đã chọn và thêm các tùy chọn quận tương ứng
    if ( selectedcity === 'Hà Nội') {
      const districts = ['Chọn quận Hà Nội','Quận Ba Đình','Quận Cầu Giấy','Quận Bắc Từ Liêm','Quận Đống Đa',
      'Quận Hai Bà Trưng', 'Quận Hoàn Kiếm','Quận Hà Đông','Quận Hoàng Mai','Quận Nam Từ Liêm','Quận Tây Hồ','Quận Thanh Xuân','Huyện Ba Vì',
      'Huyện Đan Phượng','Huyện Đông Anh','Huyện Chương Mỹ','Huyện Gia Lâm','Huyện Hoài Đức','Huyện Mê Linh','Huyện Mỹ Đức','Huyện Phúc Thọ','Huyện Phú Xuyên','Huyện Quốc Oai','Huyện Sóc Sơn','Huyện Thạch Thất','Huyện Thanh Oai','Huyện Thanh Trì','Huyện Thường Tín','Huyện Ứng Hòa','Thị Xã Sơn Tây']; // danh sách quận của Hà Nội
      districts.forEach(function(district) {
        // tạo thẻ option mới 
        const option = document.createElement('option');
        option.className = 'type__option';
        option.textContent = district;
        option.value=district;
        if(option.value=='Chọn quận Hà Nội'){
            option.value="";
        }
        selectdistrict.appendChild(option);
      });
    }
    
    else if ( selectedcity === 'TPHCM') {
        const districts = ['Chọn quận HCM','Quận 1','Quận 2','Quận 3','Quận 4',
        'Quận 5', 'Quận 6','Quận 7','Quận 8','Quận 9','Quận 10','Quận 11','Quận 12','Quận Bình Tân','Quận Bình Thạnh','Quận Gò Vấp','Quận Phú Nhuận','Quận Tân Bình','Quận Tân Phú','Quận Thủ Đức',
        'Huyện Bình Chánh','Huyện Cần Giờ','Huyện Củ Chi','Huyện Hóc Môn','Huyện Nhà Bè']; // danh sách quận của HCM
        districts.forEach(function(district) {
          // tạo thẻ option mới 
          const option = document.createElement('option');
          option.className = 'type__option';
          option.textContent = district;
          option.value=district;
            if(option.value=='Chọn quận HCM'){
                option.value="";
            }
          selectdistrict.appendChild(option);
        });
      }
     else {
        const option = document.createElement('option');
        option.className = 'type__option';
        option.textContent = 'Chọn quận';
        selectdistrict.appendChild(option);
     }

  });


  const selectcity1 = document.getElementById('modal_select-city');
  const selectdistrict1 = document.getElementById('modal_select-district');

  selectcity1.addEventListener('change', function() {

      const selectedcity1 = selectcity1.value;

      selectdistrict1.innerHTML = '';

      // Kiểm tra giá trị đã chọn và thêm các tùy chọn quận tương ứng
      if ( selectedcity1 === 'Hà Nội') {
          const districts = ['Chọn quận Hà Nội','Quận Ba Đình','Quận Cầu Giấy','Quận Bắc Từ Liêm','Quận Đống Đa',
              'Quận Hai Bà Trưng', 'Quận Hoàn Kiếm','Quận Hà Đông','Quận Hoàng Mai','Quận Nam Từ Liêm','Quận Tây Hồ','Quận Thanh Xuân','Huyện Ba Vì',
              'Huyện Đan Phượng','Huyện Đông Anh','Huyện Chương Mỹ','Huyện Gia Lâm','Huyện Hoài Đức','Huyện Mê Linh','Huyện Mỹ Đức','Huyện Phúc Thọ','Huyện Phú Xuyên','Huyện Quốc Oai','Huyện Sóc Sơn','Huyện Thạch Thất','Huyện Thanh Oai','Huyện Thanh Trì','Huyện Thường Tín','Huyện Ứng Hòa','Thị Xã Sơn Tây']; // danh sách quận của Hà Nội
          districts.forEach(function(district) {
              // tạo thẻ option mới
              const option = document.createElement('option');
              option.className = 'type__option';
              option.textContent = district;
              option.value=district;
              if(option.value=='Chọn quận Hà Nội'){
                  option.value="";
              }
              selectdistrict1.appendChild(option);
          });
      }

      else if ( selectedcity1 === 'TPHCM') {
          const districts = ['Chọn quận HCM','Quận 1','Quận 2','Quận 3','Quận 4',
              'Quận 5', 'Quận 6','Quận 7','Quận 8','Quận 9','Quận 10','Quận 11','Quận 12','Quận Bình Tân','Quận Bình Thạnh','Quận Gò Vấp','Quận Phú Nhuận','Quận Tân Bình','Quận Tân Phú','Quận Thủ Đức',
              'Huyện Bình Chánh','Huyện Cần Giờ','Huyện Củ Chi','Huyện Hóc Môn','Huyện Nhà Bè']; // danh sách quận của HCM
          districts.forEach(function(district) {
              // tạo thẻ option mới
              const option = document.createElement('option');
              option.className = 'type__option';
              option.textContent = district;
              option.value=district;
              if(option.value=='Chọn quận HCM'){
                  option.value="";
              }
              selectdistrict1.appendChild(option);
          });
      }
      else {
          const option = document.createElement('option');
          option.className = 'type__option';
          option.textContent = 'Chọn quận';
          selectdistrict1.appendChild(option);
      }

  });
