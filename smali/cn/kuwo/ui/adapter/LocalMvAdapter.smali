.class public Lcn/kuwo/ui/adapter/LocalMvAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

.field private musics:Ljava/util/List;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onItemDeleteClickListener:Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->musics:Ljava/util/List;

    new-instance v0, Lcn/kuwo/ui/adapter/LocalMvAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/LocalMvAdapter$1;-><init>(Lcn/kuwo/ui/adapter/LocalMvAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->context:Landroid/content/Context;

    new-instance v0, Lcn/kuwo/base/image/ListImageLoader;

    invoke-direct {v0}, Lcn/kuwo/base/image/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    return-void
.end method

.method static synthetic access$400(Lcn/kuwo/ui/adapter/LocalMvAdapter;)Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->onItemDeleteClickListener:Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;

    return-object v0
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->musics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->musics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMusics()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->musics:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    check-cast p1, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;

    invoke-static {p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;->access$000(Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;->access$100(Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;->access$200(Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;->access$200(Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;->access$300(Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    iget-object v3, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->context:Landroid/content/Context;

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->context:Landroid/content/Context;

    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/LocalMvAdapter$LocalMvViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setOnItemDeleteClickListener(Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->onItemDeleteClickListener:Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;

    return-void
.end method

.method public update()V
    .locals 1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->c()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter;->musics:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->notifyDataSetChanged()V

    return-void
.end method
