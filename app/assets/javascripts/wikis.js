;(function($){
  $(function(){
    $(".wiki ul.actions a.edit").click(function(){
      var wikiId = $(this).data("wikiId");
      var contentElement = $("#content-"+wikiId);
      var p = new Pen({editor: contentElement[0]});
      $(this).hide();
      $("#save-"+wikiId).removeClass('hide').data('pen',p);
      return false;
    });
    $(".wiki ul.actions a.save").click(function(){
      var wikiId = $(this).data("wikiId");
      var contentElement = $("#content-"+wikiId);
      $.post($(this).attr("href"),{_method: "PUT", wiki: {content: contentElement.html()}},function(content){

        console.log("saved", content);
        $("#edit-"+wikiId).show();
        var p = $("#save-"+wikiId).addClass('hide').data('pen');
        p.destroy();
        contentElement.removeClass('pen');

      });
      return false;
    });
  });
})(jQuery);