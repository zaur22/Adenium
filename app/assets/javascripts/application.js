// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .


var init = function(){


	$("#save_blocks").click(function(e){
		e.stopPropagation();
		version_id = $(this).data("versionId");
		$(this).text("Сохранение...");
		var id_arr = [];
		$("#version_blocks tr").each(function(){
			id_arr.push($(this).data("blockId"));
		});
		$.post("/versions/" + version_id + "/edit_child_blocks_list",
			{
				list: id_arr
			}
		);
		$(this).text("Сохранить");
	});
}


$(document).on('turbolinks:load', function() {
	start_sortable();
	$('.dropdown-toggle').dropdown();
	init();
});


var start_sortable = function(){
	$( "#version_blocks, #all_blocks").sortable({
      connectWith: ".sortable",
      helper: "clone"
    });
    $( ".block-list").disableSelection();
}


