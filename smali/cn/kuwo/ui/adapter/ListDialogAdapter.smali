.class public Lcn/kuwo/ui/adapter/ListDialogAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private context:Landroid/content/Context;

.field private listDialogItems:Ljava/util/List;

.field private selectedPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->listDialogItems:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->selectedPos:I

    iput-object p1, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->listDialogItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->getItem(I)Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->listDialogItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPos()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->selectedPos:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->getItem(I)Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    move-result-object v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;->access$000(Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->selectedPos:I

    if-ne v0, p2, :cond_0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;->access$100(Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;->access$000(Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;->access$100(Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;->access$000(Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->context:Landroid/content/Context;

    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/ListDialogAdapter$DownloadQualityViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setListDialogItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->listDialogItems:Ljava/util/List;

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/adapter/ListDialogAdapter;->selectedPos:I

    return-void
.end method
