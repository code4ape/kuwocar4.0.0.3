.class Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field bufferTime:I

.field currentTime:I

.field private delegate:Lcn/kuwo/service/PlayDelegate;

.field totalTime:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->delegate:Lcn/kuwo/service/PlayDelegate;

    iget v1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->totalTime:I

    iget v2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->currentTime:I

    iget v3, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->bufferTime:I

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/service/PlayDelegate;->a(III)V

    goto :goto_0
.end method

.method public pack(Lcn/kuwo/service/PlayDelegate;III)Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->delegate:Lcn/kuwo/service/PlayDelegate;

    iput p2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->totalTime:I

    iput p3, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->currentTime:I

    iput p4, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->bufferTime:I

    return-object p0
.end method
