#ifndef __UPLOADSERVICE_H_
#define __UPLOADSERVICE_H_

#include <port/EventLoop.h>

#include <boost/noncopyable.hpp>
#include <boost/function.hpp>
#include <port/Callbacks.h>
#include <port/Buffer.h>
#include <utils/Timestamp.h>
#include <port/TcpClient.h>
#include <port/TcpConnection.h>

#include <port/EventLoop.h>

using namespace dbdky;
using namespace dbdky::port;


namespace dbdky
{
namespace cac_client
{
class UpLoadService : boost::noncopyable
{
public:
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
    const string name_;

    mutable MutexLock mutex_;

    ConnectionCallback connectionCallback_;
    MessageCallback messageCallback_;
    WriteCompleteCallback writeCompleteCallback_;

    void onSystemTimer();
    void onHeartbeatTimer();

    TcpClient client_;

    void onConnection(const TcpConnectionPtr&);
    void onMessage(const TcpConnectionPtr&, Buffer*, Timestamp);
    void onWriteComplete(const TcpConnectionPtr&);

};
}
}

#endif    //__UPLOADSERVICE_H_
