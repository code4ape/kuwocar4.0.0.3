.class Lcn/kuwo/service/PlayProxy$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/PlayProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayProxy;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayProxy$5;->a:Lcn/kuwo/service/PlayProxy;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->pause()V

    return-void
.end method
