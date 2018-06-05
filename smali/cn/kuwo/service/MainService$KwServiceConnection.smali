.class Lcn/kuwo/service/MainService$KwServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/MainService$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/MainService$KwServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "\u670d\u52a1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/service/MainService;->g()Lcn/kuwo/service/MainService$ConnectStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/service/MainService$ConnectStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/service/MainService;->g()Lcn/kuwo/service/MainService$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/MainService$ConnectStatus;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/service/MainService;->g()Lcn/kuwo/service/MainService$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/MainService$ConnectStatus;->e:Lcn/kuwo/service/MainService$ConnectStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->h()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/service/MainService$KwServiceConnection$1;

    invoke-direct {v2, p0}, Lcn/kuwo/service/MainService$KwServiceConnection$1;-><init>(Lcn/kuwo/service/MainService$KwServiceConnection;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_1
    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->c:Lcn/kuwo/service/MainService$ConnectStatus;

    invoke-static {v0}, Lcn/kuwo/service/MainService;->a(Lcn/kuwo/service/MainService$ConnectStatus;)Lcn/kuwo/service/MainService$ConnectStatus;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->d:Lcn/kuwo/service/MainService$ConnectStatus;

    invoke-static {v0}, Lcn/kuwo/service/MainService;->a(Lcn/kuwo/service/MainService$ConnectStatus;)Lcn/kuwo/service/MainService$ConnectStatus;

    const-string v0, "\u670d\u52a1"

    const-string v1, "onServiceDisconnected--"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
