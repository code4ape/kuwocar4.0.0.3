.class public Lcn/kuwo/ui/adapter/SearchTextAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private texts:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->texts:Ljava/util/List;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->texts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->texts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/SearchTextAdapter$TextViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SearchTextAdapter$TextViewHolder;->access$000(Lcn/kuwo/ui/adapter/SearchTextAdapter$TextViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->context:Landroid/content/Context;

    const v1, 0x7f040015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcn/kuwo/ui/adapter/SearchTextAdapter$TextViewHolder;

    invoke-direct {v1, v0}, Lcn/kuwo/ui/adapter/SearchTextAdapter$TextViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setTexts(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SearchTextAdapter;->texts:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->notifyDataSetChanged()V

    return-void
.end method
