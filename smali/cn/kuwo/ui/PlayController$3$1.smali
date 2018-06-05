.class Lcn/kuwo/ui/PlayController$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/PlayController$3;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController$3;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$3$1;->this$1:Lcn/kuwo/ui/PlayController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationCancel()V
    .locals 0

    return-void
.end method

.method public onOperationCompelete()V
    .locals 2

    const-string v0, "\u5220\u9664\u6210\u529f"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/PlayController$3$1;->this$1:Lcn/kuwo/ui/PlayController$3;

    iget-object v1, v1, Lcn/kuwo/ui/PlayController$3;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-static {v1}, Lcn/kuwo/ui/PlayController;->access$000(Lcn/kuwo/ui/PlayController;)Lcn/kuwo/ui/adapter/NowPlayingAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->forceUpdate(Lcn/kuwo/base/bean/MusicList;)V

    return-void
.end method
