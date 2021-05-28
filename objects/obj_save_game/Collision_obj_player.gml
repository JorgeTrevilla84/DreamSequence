/// @description Insert description here
// You can write your code in this editor
show_debug_message("file saved?: " + string(global.isFileSaved))
if (!global.isFileSaved) {
	//returned_filepath = get_save_filename(".dat","/Users/Gorge/Documents/WORK2021/DMSQ/datafiles/test");
	//game_save(returned_filepath);
	//show_debug_message("game saved:" + string(returned_filepath));
	global.isFileSaved = true;
}
