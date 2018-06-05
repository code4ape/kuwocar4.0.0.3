.class Lcn/kuwo/service/PlayProxy$7;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/kuwo/service/PlayProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayProxy;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayProxy$7;->b:Lcn/kuwo/service/PlayProxy;

    iput p2, p0, Lcn/kuwo/service/PlayProxy$7;->a:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/service/PlayProxy$7;->a:I

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/PlayManager;->seek(I)V

    return-void
.end method
