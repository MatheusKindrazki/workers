const scrollToTop = () => {
	jQuery("button#btn-top").click(function() {
		jQuery("html, body").animate({ scrollTop: 0 }, "slow");
		return false;
	});
}

jQuery('document').ready(function(){
	scrollToTop();
});