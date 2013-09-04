#ifndef __UPLOADSERVICE_H_
#define __UPLOADSERVICE_H_

#include <port/EventLoop.h>

#include <boost/noncopyable.hpp>
#include <boost/function.hpp>
#include <boost/scoped_ptr.hpp>

#include <port/Callbacks.h>
#include <port/Buffer.h>
#include <utils/Timestamp.h>
#include <port/TcpClient.h>
#include <port/TcpConnection.h>

#include <port/EventLoop.h>
#include <port/EventLoopThreadPool.h>

#include <dbhelper/dbhelper.h>


using namespace dbdky;
using namespace dbdky::port;


namespace dbdky
{
namespace cac_client
{
class UpLoadService : boost::noncopyable
{
public:
    typedef boost::shared_ptr<ResultSet> ResultSetPtr;
    typedef boost::function <string (const ResultSetPtr&)> NodeXmlMaker;
    void start();
    void stop();
    explicit UpLoadService(EventLoop* loop,  
                           const InetAddress& proxyAddr, 
                           const string& name);

    ~UpLoadService();

    void setConnectionCallback(const ConnectionCallback& cb)
    {
        connectionCallback_ = cb;
    }

    void setMessageCallback(const MessageCallback& cb)
    {
        messageCallback_ = cb;
    }

    void setWriteCompleteCallback(const WriteCompleteCallback& cb)
    {
        writeCompleteCallback_ = cb;
    }

private:
    EventLoop* loop_;
    TimerId systemTimer_;
    TimerId heartBeatTimer_;
    TimerId uploadMoniDataTimer_;

    const string name_;
    const string cacid_;

    mutable MutexLock mutex_;
    mutable MutexLock mutexConn_;
    TcpConnectionPtr connection_;

    boost::scoped_ptr<EventLoopThreadPool> threadPool_;
    boost::scoped_ptr<DBHelper> dbhelper_;

    ConnectionCallback connectionCallback_;
    MessageCallback messageCallback_;
    WriteCompleteCallback writeCompleteCallback_;

    void onSystemTimer();
    void onHeartbeatTimer();
    void onUploadMoniDataTimer();

    void uploadMoniDataTask();
    void uploadHeartbeatTask();

    TcpClient client_;

    void connect();
    void disconnect();
    void write(const StringPiece& message);

    void onConnection(const TcpConnectionPtr&);
    void onMessage(const TcpConnectionPtr&, Buffer*, Timestamp);
    void onWriteComplete(const TcpConnectionPtr&);

    string makeNodeXml(const string&, const ResultSetPtr&);

    string XmlNodeMaker_yzrj(const ResultSetPtr&);
    string XmlNodeMaker_jbfd(const ResultSetPtr&);
    string XmlNodeMaker_txxl(const ResultSetPtr&);
    string XmlNodeMaker_sf6(const ResultSetPtr&);
    string XmlNodeMaker_sf6ws(const ResultSetPtr&);
    string XmlNodeMaker_ws(const ResultSetPtr&);
    string XmlNodeMaker_dcyw(const ResultSetPtr&);
    string XmlNodeMaker_rzcw(const ResultSetPtr&);
    string XmlNodeMaker_blqjyjc(const ResultSetPtr&);
    string XmlNodeMaker_drjc(const ResultSetPtr&);
    string XmlNodeMaker_fhdlwave(const ResultSetPtr&);
    string XmlNodeMaker_fhzxqwave(const ResultSetPtr&);
    string XmlNodeMaker_dlqjbfd(const ResultSetPtr&);
};
}
}

#endif    //__UPLOADSERVICE_H_
