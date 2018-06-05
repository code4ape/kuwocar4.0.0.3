.class Lcn/kuwo/service/downloader/antistealing/AntiStealing$1$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$1$1;->a:Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    invoke-static {}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
