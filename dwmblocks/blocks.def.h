//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", 		"internet", 												30, 	0},
	{"Mem: ", 	"free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
	{"Vol: ", 	"volume", 													30, 	10},
	{"Bckl: ", 	"B=$(xbacklight) ; echo ${B%.*}%",							30, 	11},
	{"Batt: ", 	"battery",													30, 	0},
	{"", 		"date '+%b %d (%a) %H:%M%p'",								5,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
