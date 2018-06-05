.class Lcn/kuwo/service/DownloadProxy$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/kuwo/service/DownloadProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/DownloadProxy;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/DownloadProxy$3;->b:Lcn/kuwo/service/DownloadProxy;

    iput-object p2, p0, Lcn/kuwo/service/DownloadProxy$3;->a:Ljava/util/List;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/DownloadProxy$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;)V

    goto :goto_0

    :cond_0
    return-void
.end method
