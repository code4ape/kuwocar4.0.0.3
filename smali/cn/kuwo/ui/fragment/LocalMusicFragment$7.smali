.class Lcn/kuwo/ui/fragment/LocalMusicFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$7;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLike(Lcn/kuwo/ui/adapter/MusicAdapter;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/MusicListUtils;->favoriteSong(Lcn/kuwo/base/bean/Music;)V

    invoke-virtual {p1}, Lcn/kuwo/ui/adapter/MusicAdapter;->notifyDataSetChanged()V

    return-void
.end method
