function submen_select(elem) {
    $('a').removeClass("suselected");
    $(elem).addClass("suselected");
}


function use_eng_js(quant) {
    $.post("request.game", { 
	     action: 'use_eng',
	     quant: quant } 
	   );

    // this assumes were are not in a nested frameset. Adjust if needed.
    parent.frames['header'].energy = parent.frames['header'].energy - quant;
    parent.frames['header'].do_loop();

}

// Show debug text in javascript console. Use this instead of calling console.log directly to avoid
// mistakenly leaving console.log calls in the code (they break on browsers without dev tools enabled).
function cl(str)
{
  if (window.console !== undefined && console.log !== undefined) {
    console.log(str);
  }
}

// Interim post without graph ID goes to DB -> user clicks accept -> update DB with graph ID

function initFB(appId){
  FB.init({
    appId:appId, cookie:true,
    status:true, xfbml:true
  });
}

function postOnWall(wall_post_type_id){
  $.post(
    "request.game",
    {
      action: 'interim_wall_post',
      wall_post_type_id: wall_post_type_id
    },
    showPostDialog,
    "json"
  );
};

function showPostDialog(post) {
  var obj = {
    'method' : 'feed',
    'link' : post.canvas_page + 'clickedOnWallPost=' + post.post_id,
    'picture' : post.picture_url,
    'name' : post.name,
    'caption' : post.caption,
    'description' : post.description
  };

  // Show post dialog. Call server with the graph ID if user accepted post.
  FB.ui(obj, function(response) {
    if (response) {
      $.post(
        "request.game",
        {
          action: 'accepted_wall_post',
          post_id: post.post_id,
          fb_graph_post_id: response.post_id
        }
      );
    } else {
      // Rejected wall post.
    }
  });
}
