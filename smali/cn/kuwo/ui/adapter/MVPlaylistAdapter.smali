.class public Lcn/kuwo/ui/adapter/MVPlaylistAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private musics:Ljava/util/List;

.field private pos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->musics:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->pos:I

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->musics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->musics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;->access$000(Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;->access$100(Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;->access$200(Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->pos:I

    if-eq v1, p2, :cond_0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;->access$200(Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;->access$100(Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;->access$000(Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->context:Landroid/content/Context;

    const v2, 0x7f04000f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter$MvViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setMusics(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->musics:Ljava/util/List;

    return-void
.end method

.method public setPos(I)V
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->pos:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->pos:I

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/MVPlaylistAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
