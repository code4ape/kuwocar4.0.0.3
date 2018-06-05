.class final Lcn/kuwo/service/downloader/DownCacheMgr$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownCacheMgr$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownCacheMgr$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
