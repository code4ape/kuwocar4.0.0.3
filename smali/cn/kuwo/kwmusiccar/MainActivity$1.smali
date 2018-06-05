.class Lcn/kuwo/kwmusiccar/MainActivity$1;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$1;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_PlayFailed(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_PlayFailed(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    const-string v0, "\u7f13\u51b2\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    return-void
.end method
