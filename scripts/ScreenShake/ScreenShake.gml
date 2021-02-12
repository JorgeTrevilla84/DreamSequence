/// @desc ScreenShake(magnitude,frames)

// Doc https://youtu.be/0dcfqH4aSBw?list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK&t=1351

function ScreenShake(_magnitude, _frames){
    show_debug_message("1st screen shake magnitude" + string(_magnitude));
    with (global.iCamera){
        
		show_debug_message("2nd screen shake magnitude" + string(_magnitude));
		
        if (_magnitude > shake_remain){
        
        shake_magnitude = _magnitude;
        shake_remain = shake_magnitude;
        shake_lenght = _frames;
        
        show_debug_message("3rd screen shake frames" + string(_frames));
        }
    }
}