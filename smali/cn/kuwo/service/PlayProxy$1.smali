.class Lcn/kuwo/service/PlayProxy$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcn/kuwo/service/PlayProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/PlayProxy;Lcn/kuwo/base/bean/Music;ZI)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/PlayProxy$1;->d:Lcn/kuwo/service/PlayProxy;

    iput-object p2, p0, Lcn/kuwo/service/PlayProxy$1;->a:Lcn/kuwo/base/bean/Music;

    iput-boolean p3, p0, Lcn/kuwo/service/PlayProxy$1;->b:Z

    iput p4, p0, Lcn/kuwo/service/PlayProxy$1;->c:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/PlayProxy$1;->a:Lcn/kuwo/base/bean/Music;

    iget-boolean v2, p0, Lcn/kuwo/service/PlayProxy$1;->b:Z

    iget v3, p0, Lcn/kuwo/service/PlayProxy$1;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/service/kwplayer/PlayManager;->play(Lcn/kuwo/base/bean/Music;ZI)V

    return-void
.end method
