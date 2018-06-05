.class final Lcn/kuwo/service/downloader/DownCacheMgr$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownCacheMgr$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method
