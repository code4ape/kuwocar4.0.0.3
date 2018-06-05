.class Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;

.field final synthetic b:Lcn/kuwo/service/downloader/antistealing/AntiStealing;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing;ILcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    iput-object p3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->a:Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;

    invoke-direct {p0, p2}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->callVersion:I

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    invoke-static {v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->a:Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;

    iget-object v1, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealing;Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    invoke-static {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;->callVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
