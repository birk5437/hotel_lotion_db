jQuery(function() {
  if ($('#infinite-scrolling').size() > 0) {
    setOnScroll();
  }
});

function setOnScroll() {
  $(window).on('scroll', function() {
    if ($(window).scrollTop() > $(document).height() - $(window).height() - 6) {
      morePaginatedResults();
    }
  });
}

function morePaginatedResults(){
  var more_posts_url;
  more_posts_url = $('.pagination a.next_page').attr('href');
  if (more_posts_url) {
  // if (more_posts_url) {
    $('.pagination').html('');
    $.getScript(more_posts_url);
  }
  return;
}
