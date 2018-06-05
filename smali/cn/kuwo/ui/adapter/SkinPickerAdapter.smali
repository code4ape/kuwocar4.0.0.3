.class public Lcn/kuwo/ui/adapter/SkinPickerAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private bitMapCache:Ljava/util/Map;

.field private context:Landroid/content/Context;

.field private skinPacks:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->bitMapCache:Ljava/util/Map;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->skinPacks:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->skinPacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/mod/skin/SkinPack;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->skinPacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/skin/SkinPack;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->getItem(I)Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->skinPacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    check-cast p1, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->getItem(I)Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinMgr;->a()Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v1

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$000(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Lcn/kuwo/mod/skin/SkinPack;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$000(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$100(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$200(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/mod/skin/SkinPack;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "Skin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->bitMapCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->bitMapCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$200(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$200(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->bitMapCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;->access$200(Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;
    .locals 4

    new-instance v0, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;

    iget-object v1, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->context:Landroid/content/Context;

    const v2, 0x7f040016

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter$SkinPackViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public update(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->skinPacks:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->notifyDataSetChanged()V

    return-void
.end method
