// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")} 
})
jQuery(document).ready(function($) {
  $('#loader').hide();
   $('#loader2').hide();
  $('div.ajaxlinks_left a').livequery('click', function() {
	$('#loader').show()
    $('#getfake_data').load(this.href, function(){$('#loader').hide()})	
    return false
  })

  $('div.ajaxlinks_right a').livequery('click', function() {
	$('#loader2').show()
	$('#getfake_data').addClass("getfake_yaml")	
	$('.getfake_yaml').load(this.href, function(){$('#loader2').hide()})	
    return false
  })

// slider code 
  $("dd:not(:first)").hide();
  $("dt a").click(function() {
  $("dd:visible").slideUp("slow");
  $(this).parent().next().slideDown("slow");
  return false
});
})
