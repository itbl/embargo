
$.fn.cycle = function(timeout){
    var $all_elem = $(this)

    show_cycle_elem = function(index){
        if (index == $all_elem.length) return; //you can make it start-over, if you want
        $all_elem.hide().eq(index).fadeIn()
        setTimeout(function(){show_cycle_elem(++index)}, timeout);
    }
    show_cycle_elem(0);
}

$('.sreport').cycle(4500);


//$('.sreport')