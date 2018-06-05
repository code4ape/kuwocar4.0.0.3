.class final Lcn/kuwo/service/MainService$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    invoke-static {}, Lcn/kuwo/service/MainService;->j()Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    return-void
.end method
