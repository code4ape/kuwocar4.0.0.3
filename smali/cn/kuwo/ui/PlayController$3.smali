.class Lcn/kuwo/ui/PlayController$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/PlayController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$3;->this$0:Lcn/kuwo/ui/PlayController;

    iput-object p2, p0, Lcn/kuwo/ui/PlayController$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicDelete(Lcn/kuwo/ui/adapter/NowPlayingAdapter;I)V
    .locals 4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcn/kuwo/ui/PlayController$3;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcn/kuwo/ui/PlayController$3$1;

    invoke-direct {v3, p0}, Lcn/kuwo/ui/PlayController$3$1;-><init>(Lcn/kuwo/ui/PlayController$3;)V

    invoke-static {v2, v0, v1, v3}, Lcn/kuwo/base/util/MusicListUtils;->deleteMusics(Landroid/content/Context;Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    return-void
.end method
