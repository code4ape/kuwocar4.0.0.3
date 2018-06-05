.class Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    iput p2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->a:I

    iput-object p3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-static {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-static {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-static {v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->b(Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->a:I

    iget-object v5, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->b:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;->onAntiStealingTCPProxyFinished(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$2;->c:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-virtual {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a()V

    return-void
.end method
