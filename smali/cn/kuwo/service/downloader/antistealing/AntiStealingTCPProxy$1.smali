.class Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    iput-object p2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-static {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-static {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-static {v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;->onAntiStealingTCPProxyFinished(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$1;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-virtual {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a()V

    return-void
.end method
