/// @description o_init create event

//display macros
#macro IDEAL_WIDTH global.ideal_width
#macro IDEAL_HEIGHT global.ideal_height
#macro DESIGN_WIDTH 160
#macro DESIGN_HEIGHT 240

device_mouse_dbclick_enable(false);

//	
//IMPORTANT: USE ONLY ONE set_resolution at a time
//	

//try this if you want the ideal resolution to be based on WIDTH 
//(You need a mobile device or emulator to see actual changes)
set_resolution(DESIGN_WIDTH, false, true, false, 1);

//try this if you want the ideal resolution to be based on HEIGHT
//(You need a mobile device or emulator to see actual changes)
//set_resolution(DESIGN_HEIGHT, true, true, true, .5);

//try this if you want the ideal resolution to be based on WIDTH and to hard code the HEIGHT
// let's pretend that we test on a tablet without using emulator ;) - will only work with VM->TEST (debug tool)
//set_resolution(DESIGN_WIDTH, false, true, true, .5, 1600);

//try this if you want the ideal resolution to be based on HEIGHT and to hard code the WIDTH
// let's try a really crazy aspect ratio 16:3 just for fun  - will only work with VM->TEST (debug tool)
//set_resolution(DESIGN_HEIGHT, true, true, true, .5, 360);

//By hard coding the aspect ratio you can test your game on-the-fly...
// ...on any possible screen without using emulator

set_camera(0, 0, IDEAL_WIDTH, IDEAL_HEIGHT);



