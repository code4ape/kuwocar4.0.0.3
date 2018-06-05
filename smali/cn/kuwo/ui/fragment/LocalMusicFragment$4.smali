.class Lcn/kuwo/ui/fragment/LocalMusicFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$4;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$4;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$100(Lcn/kuwo/ui/fragment/LocalMusicFragment;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/kuwo/base/util/PlayMusicHelper;->playMusiclist(Lcn/kuwo/base/bean/MusicList;I)V

    invoke-virtual {p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->notifyDataSetChanged()V

    return-void
.end method
