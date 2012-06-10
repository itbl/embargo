$(document).ready(function{
  $('#sample-report').load(function() {
    setInterval(function() {
      $.get('/frontpage/feed.js', null, null, 'script');
    }, 2500);
  })
});