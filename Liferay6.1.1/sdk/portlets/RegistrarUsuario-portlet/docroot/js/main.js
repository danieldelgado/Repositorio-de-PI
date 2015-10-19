$(document).ready(function() {
	init();
});

function init() {

	var fechadia = $(".fechadia");
	var fechames = $(".fechames");
	var fechaanno = $(".fechaanno");
	selectItem(fechadia);
	selectItem(fechames);
	selectItem(fechaanno);

}

function selectItem(selectitem) {
	
	var label = $(selectitem).children("a");
	var item = $(selectitem).find("li");

	$(item).each(function(idx, val) {
		var itema = $(this).children("a");
		$(itema).click(function(e) {
			var valueItem = $(itema).html();
			$(label).html(valueItem+"<span class='caret'></span>");
		});
	});


}
