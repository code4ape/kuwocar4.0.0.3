.class public Lcn/kuwo/ui/adapter/MusicAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private _OnClickListener:Landroid/view/View$OnClickListener;

.field private context:Landroid/content/Context;

.field private isShowDelete:Z

.field private isShowDownloadState:Z

.field private isShowLike:Z

.field private isShowPlayingState:Z

.field private muscis:Ljava/util/List;

.field private onItemDeleteListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;

.field private onItemLikeListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;

.field private onPlaySingleListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->muscis:Ljava/util/List;

    iput-boolean v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowLike:Z

    iput-boolean v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowDownloadState:Z

    iput-boolean v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowDelete:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowPlayingState:Z

    new-instance v0, Lcn/kuwo/ui/adapter/MusicAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/MusicAdapter$1;-><init>(Lcn/kuwo/ui/adapter/MusicAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->_OnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->onPlaySingleListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;

    return-object v0
.end method

.method static synthetic access$800(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->onItemDeleteListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;

    return-object v0
.end method

.method static synthetic access$900(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->onItemLikeListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->muscis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/MusicAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItem(I)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->muscis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->muscis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMuscis()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->muscis:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MusicAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-ge p2, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$000(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$000(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowPlayingState:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$600(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v3, :cond_3

    :cond_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v3, 0x7f020000

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$600(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$700(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowDownloadState:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcn/kuwo/base/util/MusicListUtils;->isDownloadedOrLocal(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$700(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowLike:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$000(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowDelete:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$000(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-static {v2}, Lcn/kuwo/base/util/MusicListUtils;->isFavorite(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void

    :cond_3
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f0200b7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$300(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$400(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$500(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$600(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;->access$100(Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MusicAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->context:Landroid/content/Context;

    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter$MusicViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setOnItemDeleteListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->onItemDeleteListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;

    return-void
.end method

.method public setOnItemLikeListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->onItemLikeListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;

    return-void
.end method

.method public setOnPlaySingleListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->onPlaySingleListener:Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;

    return-void
.end method

.method public setShowDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowDelete:Z

    return-void
.end method

.method public setShowDownloadState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowDownloadState:Z

    return-void
.end method

.method public setShowLike(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowLike:Z

    return-void
.end method

.method public showPlayingState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->isShowPlayingState:Z

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter;->muscis:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/MusicAdapter;->notifyDataSetChanged()V

    return-void
.end method
