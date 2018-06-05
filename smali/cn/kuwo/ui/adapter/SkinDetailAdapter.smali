.class public Lcn/kuwo/ui/adapter/SkinDetailAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private bitMapCache:Ljava/util/Map;

.field private context:Landroid/content/Context;

.field private ids:Ljava/util/List;

.field private paths:Ljava/util/List;

.field private skinPack:Lcn/kuwo/mod/skin/SkinPack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->bitMapCache:Ljava/util/Map;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->paths:Ljava/util/List;

    return-void
.end method

.method private getId(I)I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->paths:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 5

    const/16 v4, 0x8

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;->access$000(Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->getId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;->access$100(Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;->access$200(Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->bitMapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->bitMapCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;->access$000(Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;->access$000(Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->bitMapCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;->access$000(Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->context:Landroid/content/Context;

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter$SkinPackViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setSkinPack(Lcn/kuwo/mod/skin/SkinPack;)V
    .locals 2

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {p1}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    const v1, 0x7f0200f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    const v1, 0x7f0200f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->ids:Ljava/util/List;

    const v1, 0x7f0200f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
