.class public final Lcn/kuwo/service/PlayProxy;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;


# direct methods
.method protected constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/service/PlayProxy;->b:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-void
.end method

.method private a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcn/kuwo/service/PlayProxy;->a(ZLcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    move-result v0

    return v0
.end method

.method private a(ZLcn/kuwo/core/messagemgr/MessageManager$Runner;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/kuwo/service/PlayProxy;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/service/PlayProxy;->a:J

    :cond_2
    iget-object v1, p0, Lcn/kuwo/service/PlayProxy;->b:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/PlayProxy;->b:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/PlayProxy;->b:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;
    .locals 4

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isOpenCopyRight()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayProxy$ErrorCode;->b:Lcn/kuwo/service/PlayProxy$ErrorCode;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    instance-of v1, v0, Lcn/kuwo/ui/fragment/MvFragment;

    if-eqz v1, :cond_2

    check-cast v0, Lcn/kuwo/ui/fragment/MvFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment;->onLostAudioFocus(Z)V

    :cond_2
    new-instance v0, Lcn/kuwo/service/PlayProxy$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/kuwo/service/PlayProxy$1;-><init>(Lcn/kuwo/service/PlayProxy;Lcn/kuwo/base/bean/Music;ZI)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/kuwo/service/PlayProxy$ErrorCode;->a:Lcn/kuwo/service/PlayProxy$ErrorCode;

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/kuwo/service/PlayProxy$ErrorCode;->c:Lcn/kuwo/service/PlayProxy$ErrorCode;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    new-instance v0, Lcn/kuwo/service/PlayProxy$3;

    invoke-direct {v0, p0}, Lcn/kuwo/service/PlayProxy$3;-><init>(Lcn/kuwo/service/PlayProxy;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    new-instance v0, Lcn/kuwo/service/PlayProxy$2;

    invoke-direct {v0, p0, p1}, Lcn/kuwo/service/PlayProxy$2;-><init>(Lcn/kuwo/service/PlayProxy;Lcn/kuwo/base/bean/Music;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    return-void
.end method

.method public a(Lcn/kuwo/service/PlayDelegate;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->setMute(Z)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcn/kuwo/service/PlayProxy$7;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/service/PlayProxy$7;-><init>(Lcn/kuwo/service/PlayProxy;I)V

    invoke-direct {p0, v0, v1}, Lcn/kuwo/service/PlayProxy;->a(ZLcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :try_start_0
    sget-boolean v0, Lcn/kuwo/base/util/DeviceUtils;->IS_NEON_SUPPORT:Z

    if-nez v0, :cond_0

    const-string v0, "\u60a8\u7684\u8bbe\u5907\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->setAudioEffect(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    new-instance v0, Lcn/kuwo/service/PlayProxy$4;

    invoke-direct {v0, p0}, Lcn/kuwo/service/PlayProxy$4;-><init>(Lcn/kuwo/service/PlayProxy;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    new-instance v0, Lcn/kuwo/service/PlayProxy$5;

    invoke-direct {v0, p0}, Lcn/kuwo/service/PlayProxy$5;-><init>(Lcn/kuwo/service/PlayProxy;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    new-instance v0, Lcn/kuwo/service/PlayProxy$6;

    invoke-direct {v0, p0}, Lcn/kuwo/service/PlayProxy$6;-><init>(Lcn/kuwo/service/PlayProxy;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getCurrentPos()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getBufferPos()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->isMute()Z

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getDuration()I

    move-result v0

    return v0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcn/kuwo/service/PlayProxy$PlayLogInfo;
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getPlayLogInfo()Lcn/kuwo/service/PlayProxy$PlayLogInfo;

    move-result-object v0

    return-object v0
.end method
