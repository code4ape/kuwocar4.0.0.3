.class Lcn/kuwo/service/PlayStateNotify$8;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcn/kuwo/service/PlayStateNotify;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayStateNotify;IIII)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayStateNotify$8;->d:Lcn/kuwo/service/PlayStateNotify;

    iput p3, p0, Lcn/kuwo/service/PlayStateNotify$8;->a:I

    iput p4, p0, Lcn/kuwo/service/PlayStateNotify$8;->b:I

    iput p5, p0, Lcn/kuwo/service/PlayStateNotify$8;->c:I

    invoke-direct {p0, p2}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlayStateNotify"

    const-string v1, "notifyPlayProgress fail app is not exiting"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$8;->d:Lcn/kuwo/service/PlayStateNotify;

    invoke-static {v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/service/PlayStateNotify$8;->callVersion:I

    invoke-static {}, Lcn/kuwo/service/PlayStateNotify;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$8;->d:Lcn/kuwo/service/PlayStateNotify;

    invoke-static {v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/service/PlayStateNotify$8;->a:I

    iget v2, p0, Lcn/kuwo/service/PlayStateNotify$8;->b:I

    iget v3, p0, Lcn/kuwo/service/PlayStateNotify$8;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/service/PlayDelegate;->a(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlayStateNotify"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "PlayStateNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPlayProgress fail callVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/PlayStateNotify$8;->callVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentNotifyVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/service/PlayStateNotify;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
