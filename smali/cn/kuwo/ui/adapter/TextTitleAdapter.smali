.class public Lcn/kuwo/ui/adapter/TextTitleAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private currentIndex:I

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->currentIndex:I

    iput-object p1, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->currentIndex:I

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->titles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->titles:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->titles:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->access$000(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->currentIndex:I

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->access$000(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->access$100(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->access$100(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;->access$000(Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->context:Landroid/content/Context;

    const v2, 0x7f040018

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/TextTitleAdapter$TextTitleViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/adapter/TextTitleAdapter;->currentIndex:I

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->notifyDataSetChanged()V

    return-void
.end method
