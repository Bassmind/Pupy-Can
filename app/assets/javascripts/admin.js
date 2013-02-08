/*# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/*/

$(document).ready(eventos);

function eventos(){
	//Carga del titulo al dar click en una categoria
	$(".category").click(
		function(){
			$('#panel_title').text($(this).text());
		});
}
