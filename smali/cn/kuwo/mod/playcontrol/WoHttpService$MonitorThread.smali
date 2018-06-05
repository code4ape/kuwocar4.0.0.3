.class Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "start monitor thread"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->e()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "no connection for 20s, close server"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;->a:I

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/WoHttpService;->f()Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;->interrupt()V

    sput-boolean v2, Lcn/kuwo/mod/playcontrol/WoHttpService;->b:Z

    invoke-static {v2}, Lcn/kuwo/mod/playcontrol/WoHttpService;->a(I)I

    :cond_0
    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    const-string v1, "shutdown monitor thread"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;->a:I

    :cond_2
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
