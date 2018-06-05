.class public Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

.field private songLists:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->songLists:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->context:Landroid/content/Context;

    new-instance v0, Lcn/kuwo/base/image/ListImageLoader;

    invoke-direct {v0}, Lcn/kuwo/base/image/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/base/bean/quku/SongListInfo;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->songLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/quku/SongListInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->getItem(I)Lcn/kuwo/base/bean/quku/SongListInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->songLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->getItem(I)Lcn/kuwo/base/bean/quku/SongListInfo;

    move-result-object v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->access$000(Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->access$100(Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;->access$200(Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->listImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    iget-object v3, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->context:Landroid/content/Context;

    const v2, 0x7f040014

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter$OnlineMVViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setArtists(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->songLists:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateArtistInfos(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->songLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/OnlineSonglistAdapter;->notifyDataSetChanged()V

    return-void
.end method
