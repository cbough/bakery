window.onscroll = function() {showMe()};

function showMe() {
  if (document.body.scrollTop > 350 || document.documentElement.scrollTop > 350) {
    document.getElementsByClassName("hidden").className = "show";
  }
}
