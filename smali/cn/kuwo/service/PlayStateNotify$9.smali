.class Lcn/kuwo/service/PlayStateNotify$9;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/PlayProxy$Status;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/service/PlayStateNotify;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayStateNotify;ILcn/kuwo/service/PlayProxy$Status;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayStateNotify$9;->c:Lcn/kuwo/service/PlayStateNotify;

    iput-object p3, p0, Lcn/kuwo/service/PlayStateNotify$9;->a:Lcn/kuwo/service/PlayProxy$Status;

    iput-object p4, p0, Lcn/kuwo/service/PlayStateNotify$9;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$9;->c:Lcn/kuwo/service/PlayStateNotify;

    invoke-static {v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$9;->a:Lcn/kuwo/service/PlayProxy$Status;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/PlayStateNotify$9;->callVersion:I

    invoke-static {}, Lcn/kuwo/service/PlayStateNotify;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/PlayStateNotify$9;->c:Lcn/kuwo/service/PlayStateNotify;

    invoke-static {v0}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayStateNotify;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/PlayStateNotify$9;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/service/PlayDelegate;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PlayStateNotify"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
