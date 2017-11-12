// Note that technically is Schiffman wants the string to have integers
// rather than floating point numbers in it we have to change the variable
// types to int. Otherwise you'll get:
// "That rectangle is 10.0 pixels wide, 12.0 pixels tall,
//  and sitting right at (100.0,100.0)."

int w = 10;
int h = 12;
int x = 100;
int y = 100;

String message = "That rectangle is ";
message += w + " pixels wide, ";
message += h + " pixels tall ";
message += "and sitting right at (" + x + "," + y + ").";

println(message);