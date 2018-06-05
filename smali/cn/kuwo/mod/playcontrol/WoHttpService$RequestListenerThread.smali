.class Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/net/ServerSocket;

.field private final b:Lorg/apache/http/params/HttpParams;

.field private final c:Lorg/apache/http/protocol/HttpService;


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v1}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    sget-object v2, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incoming connection from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;->b:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;->c:Lorg/apache/http/protocol/HttpService;

    invoke-direct {v0, v2, v1}, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;-><init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->b:Z

    return-void

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error initialising connection thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
