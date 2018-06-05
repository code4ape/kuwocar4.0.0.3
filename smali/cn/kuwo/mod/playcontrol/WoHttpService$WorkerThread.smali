.class Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lorg/apache/http/protocol/HttpService;

.field private final b:Lorg/apache/http/HttpServerConnection;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->a:Lorg/apache/http/protocol/HttpService;

    iput-object p2, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "start new connection thread"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->c()I

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->a:Lorg/apache/http/protocol/HttpService;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Client closed connection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->d()I

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "no connection, close proxy connection"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->d()I

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "no connection, close proxy connection"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->d()I

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "no connection, close proxy connection"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_6
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecoverable HTTP protocol violation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpServerConnection;->shutdown()V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->d()I

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "no connection, close proxy connection"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$WorkerThread;->b:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpServerConnection;->shutdown()V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->d()I

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->e()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v2, "no connection, close proxy connection"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_2
    :goto_2
    throw v0

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method
