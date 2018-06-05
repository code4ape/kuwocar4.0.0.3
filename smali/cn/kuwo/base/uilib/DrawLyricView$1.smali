.class Lcn/kuwo/base/uilib/DrawLyricView$1;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/uilib/DrawLyricView;


# direct methods
.method constructor <init>(Lcn/kuwo/base/uilib/DrawLyricView;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/DrawLyricView$1;->this$0:Lcn/kuwo/base/uilib/DrawLyricView;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_RealPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView$1;->this$0:Lcn/kuwo/base/uilib/DrawLyricView;

    invoke-virtual {v0}, Lcn/kuwo/base/uilib/DrawLyricView;->UpdateView()V

    return-void
.end method
