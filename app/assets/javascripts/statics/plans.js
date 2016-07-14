$(document).ready(function(){
  $.ajax({
    url: '/api/plans.html',
    method: 'GET',
    success: function (res) {
      console.log(res);
      res.forEach(function(elem, index){
        var html = '<div>Title: ' + elem.title + '</div>';

        $('#index').append(html);
      })
    },
    error: function (res) {
      console.log(res);
    }
  });
});