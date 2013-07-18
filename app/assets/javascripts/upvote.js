var Upvote = {
  init: function()  {
    $('a.upvote').on('ajax:success', this.addUpvote);
  },
  addUpvote: function() {
    $(this).hide();
    var voteSpan = $(this).siblings('span');
    var count = voteSpan.text();
    voteSpan.text(parseInt(count+=1));
  }
}

$(document).ready(function() {
  Upvote.init();
});
