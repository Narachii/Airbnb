$(document).ready(function() {

  $('#translation').on('click',function() {
    const now = new Date();
    const nowtime = now.getTime();


    const getToken = function() {
      const defer = $.Deferred();


      const arr = JSON.parse(sessionStorage.getItem("tdata"));

      if (arr === null || arr.time + 1000 * 60 * 8 < nowtime) {
        $.ajax({
          url: 'https://api.cognitive.microsoft.com/sts/v1.0/issueToken',
          type: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/jwt',
            'Ocp-Apim-Subscription-Key': ENV['MS_KEY'],
          },
          async: false,
        }).done(function(data) {

          const datalist = {
            time: nowtime,
            token: data,
          }
          sessionStorage.setItem('tdata', JSON.stringify(datalist));
        });
      }


      const arr2 = JSON.parse(sessionStorage.getItem("tdata"));
      const token = arr2.token;
      defer.resolve(token);
      return defer.promise();
    };



    $.when(getToken()).done(function(token) {
      const key = 'Bearer ' + token;
      const text = $("#form_id").val();
      const response = $.ajax({
          url: 'https://api.microsofttranslator.com/v2/http.svc/Translate',
          type: 'GET',
          data: {
            'appid': key,
            'Accept': 'application/xml',
            'text': text,
            'to': 'en',
          },
          async: false,
        })

      const data = response.responseText;
      const translation = data.replace(/<("[^"]*"|'[^']*'|[^'">])*>/g, '');
      $("#form_id").val(translation);

    })
  })
})
