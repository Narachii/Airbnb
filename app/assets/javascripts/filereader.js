$(document).ready(function () {
  var view_box = $('.view_box');

  $(".file").on('change', function(){
     var fileprop = $(this).prop('files')[0],
         find_img = $(this).next('img'),
         fileRdr = new FileReader();

     if(find_img.length){
        find_img.nextAll().remove();
        find_img.remove();
     }


     $('.fa-user-circle-o').remove();
     $('.edit__profile').remove();
     $('.img_view').remove();
    var img = `<img width="100%" height= "100%" padding= "20px"  alt="" class="img_view">`;
    view_box.append(img);

    fileRdr.onload = function() {
      view_box.find('img').attr('src', fileRdr.result);
      img_del(view_box);
    }
    fileRdr.readAsDataURL(fileprop);
  });

  // function img_del(target)
  // {
  //    target.find("a.img_del").on('click',function(){

  //     if(window.confirm('サーバーから画像を削除します。\nよろしいですか？'))
  //     {
  //        $(this).parent().find('input[type=file]').val('');
  //        $(this).parent().find('.img_view, br').remove();
  //        $(this).remove();
  //     }

    //   return false;
    // });
  // }
});