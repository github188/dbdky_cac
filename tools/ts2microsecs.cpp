#include <utils/Timestamp.h>

#include <iostream>

using namespace dbdky;
using namespace std;

void usage()
{
    cout << "ts2microsecs [-t|-m] [Timestampe|microSecondsSinceEpoch]" << endl;
    cout << "For example: " << endl;
    cout << "The following converts 20120102 18:00:00 to microSecondsSinceEpoch" << endl;
    cout << "ts2microsecs -t 20120102 18:00:00" << endl;
    
    cout << "While the following converts xxx to formatted time string" << endl;
}

bool parseParams(int argc, char** argv)
{
    //TODO:
    return false;
}

int main(int argc, char** argv)
{
    if (!parseParams(argc, argv))
    {
        usage();
        exit(1);
    } 

    return 0; 
}


