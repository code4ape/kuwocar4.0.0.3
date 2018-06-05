.class Lcn/kuwo/service/downloader/antistealing/AntiStealing$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/antistealing/AntiStealing;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$2;->a:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-static {}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->d()Lcn/kuwo/core/observers/ext/AppObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
