.class Lcn/kuwo/ui/fragment/LocalMusicFragment$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$6;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDelete(Lcn/kuwo/ui/adapter/MusicAdapter;I)V
    .locals 5

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$6;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$6;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v2}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$100(Lcn/kuwo/ui/fragment/LocalMusicFragment;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcn/kuwo/base/bean/Music;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcn/kuwo/ui/fragment/LocalMusicFragment$6$1;

    invoke-direct {v3, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$6$1;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment$6;)V

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/util/MusicListUtils;->deleteMusics(Landroid/content/Context;Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    return-void
.end method
