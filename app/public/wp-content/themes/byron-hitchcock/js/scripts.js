// Function for navigation bar overlay
jQuery(function () {
  jQuery('#menu-toggle, #menu > ul > li > a').unbind("click").click(function (e) {
    var jQuerytoggle = jQuery(this);
    var jQuerymenu = jQuery('#' + jQuery(this).attr('aria-controls'));

    if (jQuerymenu.attr('aria-hidden') == 'true') {
      jQuery('body').addClass('open');
      jQuerymenu.attr('aria-hidden', 'false');
      jQuerytoggle.attr('aria-expanded', 'true');
    }
    else if (jQuerymenu.attr('aria-hidden') == 'false') {
      jQuery('body').removeClass('open');
      jQuerymenu.attr('aria-hidden', 'true');
      jQuerytoggle.attr('aria-expanded', 'faremove');
    }
  });
});
