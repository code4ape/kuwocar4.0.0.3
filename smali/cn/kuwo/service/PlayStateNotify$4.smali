.class Lcn/kuwo/service/PlayStateNotify$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/service/PlayStateNotify;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayStateNotify;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayStateNotify$4;->c:Lcn/kuwo/service/PlayStateNotify;

    iput-boolean p2, p0, Lcn/kuwo/service/PlayStateNotify$4;->a:Z

    iput-object p3, p0, Lcn/kuwo/service/PlayStateNotify$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyStop fail app is not exiting"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$4;->c:Lcn/kuwo/service/PlayStateNotify;

    invoke-static {v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$4;->c:Lcn/kuwo/service/PlayStateNotify;

    invoke-static {v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcn/kuwo/service/PlayStateNotify$4;->a:Z

    iget-object v2, p0, Lcn/kuwo/service/PlayStateNotify$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/service/PlayDelegate;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlayStateNotify"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
