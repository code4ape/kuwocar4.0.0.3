.class Lcn/kuwo/service/kwplayer/PlayManager$8;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$8;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getVolume()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->setVolume(I)V

    return-void
.end method
