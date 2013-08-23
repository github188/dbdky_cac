#include <iostream>
#include <mysql_connection.h>
#include <mysql_driver.h>
#include <statement.h>
#include <string>

using namespace sql;
using namespace std;

void RunConnectMySQL()
{
    try
    {
    	mysql::MySQL_Driver *driver;
    	Connection *con;
    	Statement *state;
    	ResultSet *result;

    	driver = sql::mysql::get_mysql_driver_instance();
    	con = driver->connect("tcp://127.0.0.1:3306", "root", "kevinLike$");
    	state = con->createStatement();
    	state->execute("use omsdb");
    
    	result = state->executeQuery("select * from bd_cd");
    	assert(result != NULL);

    	while (result->next())
    	{
        	int objid = result->getInt("OBJID");
        	string sLinkedDevice = result->getString("LinkedDevice");
        	string sDeviceCode = result->getString("DeviceCode");
        	string sPhase = result->getString("Phase");
        	string sJCLXBM = result->getString("JCLXBM");
        	string sBDZMC = result->getString("BDZMC");
        	string sSSZT = result->getString("SSZT");
        	string sBJCSBMC = result->getString("BJCSBMC");
        	string sJCLXMC = result->getString("JCLXMC");
        	string sZIEDID = result->getString("ZIEDID");
        	string sIEDID = result->getString("IEDID");

        cout << "[" << objid << "]"
            << sLinkedDevice
            << " " << sDeviceCode << " " << sPhase
            << " " << sJCLXBM << " " << sBDZMC
            << " " << sSSZT << " " << sBJCSBMC
            << " " << sJCLXMC << " " << sZIEDID << " " << sIEDID;

    	}
        delete state;
        delete con;
    } catch (std::exception& e)
    {
        cout << e.what() << endl;
    }
    //delete state;
    //delete con;
}

int main()
{
    RunConnectMySQL();
    return 0;
}
