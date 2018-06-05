.class Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/antistealing/AntiStealing;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;->a:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_OnLowMemory()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b()Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/antistealing/AntiStealing$1$1;

    invoke-direct {v2, p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$1$1;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
