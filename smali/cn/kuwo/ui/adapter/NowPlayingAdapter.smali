.class public Lcn/kuwo/ui/adapter/NowPlayingAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private _OnClickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private musicList:Lcn/kuwo/base/bean/MusicList;

.field private musics:Ljava/util/List;

.field private onMusicDeleteListener:Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musics:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musicList:Lcn/kuwo/base/bean/MusicList;

    new-instance v0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$1;-><init>(Lcn/kuwo/ui/adapter/NowPlayingAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->_OnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/NowPlayingAdapter;)Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->onMusicDeleteListener:Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;

    return-object v0
.end method


# virtual methods
.method public forceUpdate(Lcn/kuwo/base/bean/MusicList;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musicList:Lcn/kuwo/base/bean/MusicList;

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musics:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musics:Ljava/util/List;

    goto :goto_0
.end method

.method public getItem(I)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$000(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$100(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$200(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$200(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x7f020000

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$200(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$300(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$300(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$000(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$200(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f0200b7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$000(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$100(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;->access$200(Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->context:Landroid/content/Context;

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter$NowPlayingViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setOnMusicDeleteListener(Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->onMusicDeleteListener:Lcn/kuwo/ui/adapter/NowPlayingAdapter$OnMusicDeleteListener;

    return-void
.end method

.method public update(Lcn/kuwo/base/bean/MusicList;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musicList:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->musics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->forceUpdate(Lcn/kuwo/base/bean/MusicList;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/NowPlayingAdapter;->forceUpdate(Lcn/kuwo/base/bean/MusicList;)V

    goto :goto_0
.end method
