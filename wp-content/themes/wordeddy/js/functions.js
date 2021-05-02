const scrollToTop = () => {
	jQuery("button#btn-top").click(function() {
		jQuery("html, body").animate({ scrollTop: 0 }, "slow");
		return false;
	});
}
const scrollTrigger = () => {
	gsap.registerPlugin(ScrollTrigger);

	const sections = gsap.utils.toArray("section");
	let maxWidth = 0;

	const getMaxWidth = () => {
		maxWidth = 0;
		sections.forEach((section) => {
			maxWidth += section.offsetWidth;
		});
	};
	getMaxWidth();
	ScrollTrigger.addEventListener("refreshInit", getMaxWidth);

	gsap.to(sections, {
		x: () => `-${maxWidth - window.innerWidth}`,
		ease: "none",
		scrollTrigger: {
			trigger: ".wrapper",
			pin: true,
			scrub: true,
			end: () => `+=${maxWidth}`,
			invalidateOnRefresh: true
		}
	});

	sections.forEach((sct, i) => {
		ScrollTrigger.create({
			trigger: sct,
			start: () => 'top top-=' + (sct.offsetLeft - window.innerWidth/2) * (maxWidth / (maxWidth - window.innerWidth)),
			end: () => '+=' + sct.offsetWidth * (maxWidth / (maxWidth - window.innerWidth)),
			toggleClass: {targets: sct, className: "active"}
		});
	});
}

jQuery('document').ready(function(){
	scrollToTop();
	scrollTrigger();
});