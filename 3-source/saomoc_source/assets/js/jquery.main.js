function pageLoad() {
    mypageload();
}
(function ($) {
    $(window).load(function () {
        $('#sliderBanner').nivoSlider({
            pauseOnHover: true,
            autoplaySpeed: 3000,
            speed: 1000,
            directionNav: true,
            controlNavThumbs: true,
            controlNav: false,
            animSpeed: 1500,
        });
        $('#carousel').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 155,
            itemMargin: 5,
            asNavFor: '#slider'
        });

        $('#slider').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            sync: "#carousel"
        });
    });
    $(function () {
        myfunload();
        
       
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").not(".home").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    //$("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    //$("#menu > li > a").append('<span class="arrow-down"></span>');
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });

    $(".aside-desktop").clone().appendTo($(".asidemobi"));
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
    $(".menu-level li:last-child").addClass("last");
    $(".menu-level .active").find("ul:first").show();
    //$('#sliderBanner').slick({
    //    autoplay: true,
    //    autoplaySpeed: 5000,
    //    pauseOnHover: false,
    //    dots: false,
    //    infinite: true,
    //    speed: 1000,
    //    fade: true,
    //    cssEase: 'linear'
    //});
   
   
    if ($('#silderProduct').size() == 1)
        var silderProduct = $('#silderProduct').imagesLoaded(function () {
            silderProduct.slick({
                autoplay: true,
                autoplaySpeed: 3000,
                //cssEase: 'linear',
                dots: false,
                infinite: true,
                speed: 300,
                slidesToShow: 6,
                slidesToScroll: 1,
                //prevArrow: $(".control-slider .prev"),
                //nextArrow: $(".control-slider .next"),
                arrow: true,
                responsive: [
                    {
                        breakpoint: 1200,
                        settings: {
                            slidesToShow:5
                        }
                    },
                  {
                      breakpoint: 1000,
                      settings: {
                          slidesToShow: 4
                      }
                  },
                  {
                      breakpoint: 650,
                      settings: {
                          slidesToShow: 3
                      }
                  },

                  {
                      breakpoint: 510,
                      settings: {
                          slidesToShow: 2
                      }
                  },
                  {
                      breakpoint: 370,
                      settings: {
                          slidesToShow: 1
                      }
                  }

                  // You can unslick at a given breakpoint now by adding:
                  // settings: "unslick"
                  // instead of a settings object
                ]
            });
           
        });

    if ($('.list-pro').size() > 0) {
        var newstb = $('.list-pro').imagesLoaded(function () {
            newstb.textHeight({
                activetit: true,
                listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: false,
                csstr: ".element-item",
                max: true
            });
        });
    }
    //if ($('#silderProjects').size() == 1) {
    //    var silderProjects = $('#silderProjects').imagesLoaded(function () {
    //        silderProjects.slick({
    //            autoplaySpeed: 3000,
    //            dots: false,
    //            infinite: true,
    //            speed: 300,
    //            slidesToShow: 4,
    //            slidesToScroll: 2,
    //            prevArrow: $(".control-slider .prev"),
    //            nextArrow: $(".control-slider .next"),
    //            responsive: [
    //              {
    //                  breakpoint: 1200,
    //                  settings: {
    //                      slidesToShow: 4
    //                  }
    //              },
    //              {
    //                  breakpoint: 1199,
    //                  settings: {
    //                      slidesToShow: 3
    //                  }
    //              },
    //              {
    //                  breakpoint: 639,
    //                  settings: {
    //                      slidesToShow: 2
    //                  }
    //              },
    //              {
    //                  breakpoint: 479,
    //                  settings: {
    //                      slidesToShow: 1
    //                  }
    //              }
    //            ]
    //        });
    //        silderProjects.textHeight({
    //            activetit: true,
    //            listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
    //            desbool: false,
    //            listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
    //            tbrow: false,
    //            csstr: ".element-item",
    //            max: true
    //        });
    //    });
    //}
    if ($('#silderProjects').size() == 1) {
        var slidertree = $('#silderProjects').imagesLoaded(function () {
            slidertree.owlCarousel({
                margin: 10,
                loop: true,
                autoplaySpeed: 1000,
                margin: 10,
                nav: true,
                dots: false,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    390: {
                        items: 2
                    },
                    560: {
                        items: 3
                    },
                    767: {
                        items: 3
                    },
                    1000: {
                        items: 4
                    }
                }
            });

            slidertree.textHeight({
                activetit: true,
                listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
                desbool: false,
                //listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: false,
                csstr: ".element-item",
                max: true
            });
        });
    }
    if ($('.wrapper-news').size() > 0) {
        var wrappernews = $('.wrapper-news').imagesLoaded(function () {
            wrappernews.textHeight({
                activetit: true,
                listcss: [{ cssname: ".news-box" }],
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
    }
    $(".fancybox").fancybox({
        wrapCSS: 'zoom-fancybox',
        padding: 10,
        openEffect: 'elastic',
        closeEffect: 'elastic'
    });

    if ($('.produc-tblist').size() > 0) {
        var productlist = $('.produc-tblist').imagesLoaded(function () {
            productlist.textHeight({
                activetit: true,
                listcss: [{ cssname: ".pro-box" }, { cssname: ".pro-text" }],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                listpos: [{ cssnamepos: ".desription", cssheightnum: "3" }],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
        $('.produc-tblist').viewloads({
            cssitems: ".element-item",
            csslink: ".link-view",
            idbox: "loadView",
            idurl: "#productView",
            cssactive: "current",
            datattr: "href",
            onready: function () {
                var proslider = $("#proSlider").slick({
                    dots: false,
                    infinite: true,
                    speed: 300,
                    prevArrow: "[data-id='proSlider'] .prev",
                    nextArrow: "[data-id='proSlider'] .next",
                    slidesToShow: 4,
                    slidesToScroll: 1,
                    responsive: [
                      {
                          breakpoint: 1024,
                          settings: {
                              slidesToShow: 4
                          }
                      },
                      {
                          breakpoint: 639,
                          settings: {
                              slidesToShow: 4
                          }
                      },
                      {
                          breakpoint: 419,
                          settings: {
                              slidesToShow: 2
                          }
                      }
                    ]
                });
            }
        });
    }

    //var main_ing = $('.zoom-box').find('img').attr('src');
    //$('.slide img').click(function () {
    //    var img_child = $(this).attr('src');
    //    alert(img_child);
    //});

    if ($("#sliderDetails").size() == 1) {
        var bigimg = $(".small-img:first").attr("href");
        var smallimg = $(".small-img:first").attr("data-img");
        $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
        jQuery('.cloud-zoom').CloudZoom();

        $('#sliderDetails .slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            infinite: false,
            fade: true,
            asNavFor: '#sliderDetails .slider-nav'
        });
        $('#sliderDetails .slider-nav').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            asNavFor: '#sliderDetails .slider-for',
            dots: false,
            infinite: false,
            autoplay: true,
            //centerMode: true,
            focusOnSelect: true
        });
        $('#sliderDetails .slider-nav').on('beforeChange', function (event, slick, currentSlide, nextSlide) {
            var bigimg = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-img").attr("href");
            var smallimg = $("#sliderDetails .slider-nav .slick-slide:eq(" + nextSlide + ") .small-img").attr("data-img");
            $(".cloud-zoom").attr("href", bigimg).find("img:first").attr("src", smallimg);
            jQuery('.cloud-zoom').CloudZoom();
        });
    }
    $(function () {
        $("#tabs").tabs();
    });
    if ($("#sliderGallery").size() == 1) {
        $('#sliderGallery .slider-for').textHeight({
            activetit: true,
            listcss: [{ cssname: ".gallery-img" }],
            desbool: false,
            listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
            tbrow: false,
            csstr: ".element-item",
            max: true
        }).slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            fade: true,
            asNavFor: '#sliderGallery .slider-nav'
        });
        $('#sliderGallery .slider-nav').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            asNavFor: '#sliderGallery .slider-for',
            dots: false,
            arrow: true,
            //centerMode: true,
            focusOnSelect: true
        }).textHeight({
            activetit: true,
            //listcss: [{ cssname: ".small-box" }],
            desbool: false,
            listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
            tbrow: false,
            csstr: ".element-item",
            max: true
        });
    }
    mymap();

}
/*=========================================================================*/
function mypageload() {
    $(".select").uniform();
    $(".fullbox-img").bgsizebox({
        fimg: true,
        imgcss: "hideo",
        attrname: "data-src"
    });
    myListTb();
}


/*========================================================================*/
function myListTb() {
    if ($('.isotopelist').size() > 0) {
        var isolist = $('.isotopelist').imagesLoaded(function () {
            isolist.isotope({
                itemSelector: '.element-item',
                layoutMode: 'fitRows'
            });
        });
    }
   if ($('.project-main').size() > 0) {
        var projectmain = $('.project-main').imagesLoaded(function () {
            projectmain.textHeight({
                activetit: true,
                listcss: [ { cssname: ".project-img" }, { cssname: ".project-name" }],
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
    }
}
/*===============================*/
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
//==================
