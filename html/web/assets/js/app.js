$(document).ready(function(){
    var top = 0;
    
    var troll = $('.troll');
    var trollStart = Math.abs(parseInt(troll.css('top')));

    var camp = $('.camp');
    var campStart = Math.abs(parseInt(camp.css('bottom')));

    var updateElements = function() {
        top = $(window).scrollTop();

        troll.css({'top': -trollStart-(top*1.5)});
        camp.css({'bottom': campStart+(top/1.5)-700});
    };

    updateElements();
    $(window).scroll(function(){
        updateElements();
    });
});