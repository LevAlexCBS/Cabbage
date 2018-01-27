'use strict';

(function ($) {

    // Navigation scrolls
    $(".navbar-nav li a").on('click', function (event) {
        $('.navbar-nav li').removeClass('active');
        $(this).closest('li').addClass('active');
        var $anchor = $(this);
        var nav = $($anchor.attr('href'));
        if (nav.length) {
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top
            }, 1500, 'easeInOutExpo');

            event.preventDefault();
        }
    });

    // Add smooth scrolling to all links in navbar
    $("a.mouse-hover, a.get-quote").on('click', function (event) {
        var hash = this.hash;
        if (hash) {
            event.preventDefault();
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 1500, 'easeInOutExpo');
        }
    });

    $('[data-toggle="popover"]').each(function (index, element) {
        $(element).popover({
            html: true,
            content: $(".content-for-popover_" + (index + 1)).html()
        });
    });
})(jQuery);

