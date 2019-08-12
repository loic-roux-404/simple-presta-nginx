import $ from 'jquery';

export default class scrollBehaviours{
    scrollTop(){
        $("a[href^='#']").click(function(e) {
            e.preventDefault();
            var aid = $(this).attr("href");
            $('html,body').animate({scrollTop: $(aid).offset().top},450);
        });
    }
}