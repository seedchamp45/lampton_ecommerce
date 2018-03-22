
$(document).ready(function(){
	close_sub_menu();
	$('.element').hide();


         var page =1;  
          var set_img = 2;
          
          if ($(window).width() > 768) {
            set_img=4;
            $(".carousel_li_p" ).addClass( "w-25" );
          }else{
            $(".carousel_li_p" ).addClass( "w-50" );
          }
          
          var count_img= $('#slide_highlight li').length;
          var count_page = parseInt(count_img/set_img);

          $('#back_highlight').hide();


      
          for(var i = set_img+1 ; i <= count_img ; i++){
            $('#hproduct_'+i).hide();
          }

          if(count_img % set_img > 0){
             count_page+=1;
          }

          if(count_page <=1){
            $('#next_highlight').hide();
          }

          $('#next_highlight').click(function(e) {
              for(var i = page-(set_img-1) ; i <= page*set_img ; i++){
                $('#hproduct_'+i).hide();
              }
              for(var i = (page*set_img)+1 ; i <= (page+1)*set_img ; i++){
                if(i <=count_img){
                   $('#hproduct_'+i).show();
                }
              }
              page+=1;
              
              if(page ==count_page){
                 $('#next_highlight').hide();
                 $('#back_highlight').show();
              }else{
                 $('#back_highlight').show();
                $('#next_highlight').show();
              }
          });


          $('#back_highlight').click(function(e) {
              //alert("==1 "+page);
              for(var i = page*set_img ; i > (page*set_img) -(set_img)  ; i--){
               //alert(i);
                $('#hproduct_'+i).hide();
              }

              page-=1;
              for(var i = (page*set_img)-(set_img-1) ; i <= page*set_img ; i++){
                $('#hproduct_'+i).show();
              }

              if(page == 1){
                $('#next_highlight').show();
                $('#back_highlight').hide();
              }else{
                $('#back_highlight').show();
              }
              
          });
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



;
