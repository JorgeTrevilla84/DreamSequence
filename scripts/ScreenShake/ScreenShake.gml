/// @desc ScreenShake(magnitude,frames)
// Doc https://youtu.be/0dcfqH4aSBw?list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK&t=1351

function ScreenShake(_magnitude, _frames){

    with (global.iCamera){
		
        if (_magnitude > shake_remain){		
	        shake_magnitude = _magnitude;
	        shake_remain = shake_magnitude;
	        shake_lenght = _frames;
        }
    }
}