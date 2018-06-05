.class Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field private context:Landroid/content/Context;

.field private volatile isStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->isStop:Z

    iput-object p1, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    const-string v0, "MediaButtonRegister"

    const-string v1, "call"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->isStop:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/MediaButtonRegister;->getInstance()Lcn/kuwo/base/util/MediaButtonRegister;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/MediaButtonRegister;->registerMediaButtonEventReveiver(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/MediaButtonRegister;->getInstance()Lcn/kuwo/base/util/MediaButtonRegister;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/MediaButtonRegister;->unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public isStop()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->isStop:Z

    return v0
.end method

.method public setStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->isStop:Z

    return-void
.end method
