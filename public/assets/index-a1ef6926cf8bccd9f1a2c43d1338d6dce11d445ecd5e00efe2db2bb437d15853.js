
$(document).ready(function(){
	/* update 11/03/2018 */
	AOS.init({
          offset: 200,
      duration: 600,
      easing: 'ease-in-sine',
      delay: 100,
      });
	/* update 11/03/2018 */
	
 	close_sub_menu();
 	$('.element').hide();


});


 $('#bu_menu').click(function() {
 	$('.carousel-indicators').hide();
 	$('#layout_sub_menu_popup').hide();
  	$(".overlay").css("width", "90%");
});

 $('#close_btn').click(function() {
 	$('.carousel-indicators').show();
	close();
});
 
 /*menu bar web */
$('#pills-tab > #pills-tab1 >.nav-item > a').hover(function() {
	
  $(".tab-content").show();
  $(this).tab('show');
});

$('#logo_bar').hover(function() {
	
  $(".tab-content").hide()
});

$("#carouselExampleIndicators").hover(
  function() {
  $(".tab-content").hide();
});

$("#img2").hover(
  function() {
  $(".tab-content").hide();
});

 /*menu bar web */

/* hover*/
/*
$( "#bg_sub_menu_web" ).hover(  function() {
	$('#sub_menu_web_'+$( this ).parent().get( 0 ).id).show();
	$(this).show();
	alert('in2' +$( this ).parent().get( 0 ).id);

  }, function() {
  	//$(this).remove();
  	alert('out2');
  }
);

$( ".down_down_head" ).hover(  function() {
	//alert($( this ).children().get( 0 ).id);
	if($( this ).children().get( 0 ) != null){
		$('#sub_menu_web_'+$( this ).children().get( 0 ).id).show();

	}
	
	
	//$('.element').show();
  }, function() {
  	if($( this ).children().get( 0 ) != null){
		$( "#bg_sub_menu_web_1" ).hover(  function() {
			alert('no');
		  }, function() {
		  	$(this).remove();
		  	alert('out2');
		  }
		);
  		//$('#sub_menu_web_'+$( this ).children().get( 0 ).id).hide();
  	}
	alert('out1');
    //$( this ).find( "span:last" ).remove();
  }
);*/



$('#close_btn2').click(function() {
 	$('.carousel-indicators').hide();
	$('#layout_menu_popup').show();
	close();
});

$('#back_popup').click(function() {
 	$('#layout_menu_popup').show();
	$('#layout_sub_menu_popup').hide();
	close_sub_menu();
});

 $('.select_sub').click(function() {
 	$('#layout_sub_menu_popup').show();
 	$('#layout_menu_popup').hide();
 	slerct_sub(this.id); 
 });

 function close(){
 	$('.collapse').collapse('hide');
	$(".overlay").css("width", "0%");
  }

 function slerct_sub(id){
 	close_sub_menu()
 	$('#'+id).show();
 }
 
 function close_sub_menu(){
 	$('.pop_sub_menu').hide();
 }

 /* cart
 plus  13/3/2018 */
$('.plus').click(function(e) {
	var id1= $(this).attr("id");
	var sname= id1.split("_");
	
	var c1 =+$('#count_'+sname[1]).val()+1;
	$('#count_'+sname[1]).val(c1);
	$('#count_show_'+sname[1]).text(c1);
	/*var c1 =+$('#count').val()+1;
	$('#count').val(c1);
	$('#count_show').text(c1);
	$('#count_show_mobile').text(c1);*/
});
/* plus  */

/* minus  13/3/2018 */
$('.minus').click(function(e) {
	var id1= $(this).attr("id");
	var sname= id1.split("_");

	if($('#count_'+sname[1]).val() >"1"){
		var c1 =+$('#count_'+sname[1]).val()-1;
		$('#count_'+sname[1]).val(c1);
		$('#count_show_'+sname[1]).text(c1);
	}			
});


$('.minus_m').click(function(e) {
	var id1= $(this).attr("id");
	var sname= id1.split("_");
	if($('#count_'+sname[2]).val() >"1"){
		//alert($('#count_'+sname[2]).val());
		var c1 =+$('#count_'+sname[2]).val()-1;
		$('#count_'+sname[2]).val(c1);
		$('#count_show_m_'+sname[2]).text(c1);
	}			
});

$('.plus_m').click(function(e) {
	var id1= $(this).attr("id");
	var sname= id1.split("_");
	
	var c1 =+$('#count_'+sname[2]).val()+1;
	$('#count_'+sname[2]).val(c1);
	$('#count_show_m_'+sname[2]).text(c1);
});
/*cart*/
				

;
