.class Lcn/kuwo/ui/fragment/OnlineMusicFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$1;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$1;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getOnlineType()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->g:Lcn/kuwo/mod/quku/OnlineType;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, p2}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/PlayMusicHelper;->play(Lcn/kuwo/base/bean/Music;)V

    :goto_0
    invoke-virtual {p1}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MusicAdapter;->getMuscis()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$1;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getOnlineId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcn/kuwo/base/util/PlayMusicHelper;->playOnlineMusic(Ljava/util/List;JI)V

    goto :goto_0
.end method
