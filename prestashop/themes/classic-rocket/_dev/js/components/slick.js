import $ from 'jquery';


export default class SlickSlider {

    init() {


        $('[data-slick]').not('.slick-initialized').each(function () {
            let self = $(this);
            if (self.data('count') === 1) {
                return;
            }

            self.slick({
                prevArrow: "<button type=\"button\" class=\"btn btn-link slick-prev slick-arrow\"><i class=\"material-icons left\">arrow_back</i></button>",
                nextArrow: "<button type=\"button\" class=\"btn btn-link slick-next slick-arrow\"><i class=\"material-icons right\">arrow_forward</i></button>"

            });
        });

        // $('.slider-caption .display-1, .slider-caption p , .slider-caption h3 ').each(function () {
        //     let t = this.textContent.replace(/([A-z0-9'<>/]+)/g, '<span class="word">$1</span>');
        //     this.innerHTML = t;
        // })
    }



}
