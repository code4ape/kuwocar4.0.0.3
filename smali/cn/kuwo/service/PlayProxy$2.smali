.class Lcn/kuwo/service/PlayProxy$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:Lcn/kuwo/service/PlayProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayProxy;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayProxy$2;->b:Lcn/kuwo/service/PlayProxy;

    iput-object p2, p0, Lcn/kuwo/service/PlayProxy$2;->a:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/PlayProxy$2;->a:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/PlayManager;->prefetch(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method
