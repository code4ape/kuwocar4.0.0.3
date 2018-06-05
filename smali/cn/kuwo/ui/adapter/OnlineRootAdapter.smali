.class public Lcn/kuwo/ui/adapter/OnlineRootAdapter;
.super Lcn/kuwo/ui/adapter/BaseKuwoAdapter;


# instance fields
.field private baseQukuItems:Ljava/util/List;

.field private context:Landroid/content/Context;

.field private mImageLoader:Lcn/kuwo/base/image/ListImageLoader;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onPlayClickListener:Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;

.field private parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->parent:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->baseQukuItems:Ljava/util/List;

    new-instance v0, Lcn/kuwo/base/image/ListImageLoader;

    invoke-direct {v0}, Lcn/kuwo/base/image/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->mImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    new-instance v0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$1;-><init>(Lcn/kuwo/ui/adapter/OnlineRootAdapter;)V

    iput-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$700(Lcn/kuwo/ui/adapter/OnlineRootAdapter;)Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->onPlayClickListener:Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;

    return-object v0
.end method

.method public static getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float v4, v6, v0

    div-float v0, v6, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v3, p0, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcn/kuwo/base/util/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getBlurBitmap(Ljava/lang/String;IILandroid/widget/ImageView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f020058

    new-instance v2, Lcn/kuwo/base/image/ImageViewAware;

    invoke-direct {v2, p4}, Lcn/kuwo/base/image/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcn/kuwo/base/image/ImageDisplayOptions;->a(I)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcn/kuwo/base/image/Utils;->a(Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/kuwo/base/image/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    const-string v2, "OnlineRootAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v2, "SMALLPIC_CACHE"

    invoke-virtual {v0, v2, p1}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getItem(I)Lcn/kuwo/base/bean/quku/BaseQukuItem;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->baseQukuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/quku/BaseQukuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->getItem(I)Lcn/kuwo/base/bean/quku/BaseQukuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->baseQukuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRVScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->mImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->mImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ListImageLoader;->b()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V
    .locals 12

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/adapter/BaseKuwoAdapter;->onBindViewHolder(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$BaseKuwoViewHolder;I)V

    move-object v0, p1

    check-cast v0, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;

    move-object v1, p1

    check-cast v1, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;

    iget-object v1, v1, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->parent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->getItem(I)Lcn/kuwo/base/bean/quku/BaseQukuItem;

    move-result-object v4

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinMgr;->a()Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v5

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/skin/SkinMgr;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/kuwo/base/image/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v3, 0x7f02009e

    invoke-virtual {v1, v3}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_0
    move-object v2, v1

    move-object v1, p1

    check-cast v1, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$000(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcn/kuwo/mod/skin/SkinPack;->e()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v1, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0607d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :cond_1
    check-cast p1, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;

    invoke-static {p1}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$000(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    instance-of v6, v4, Lcn/kuwo/base/bean/quku/RadioInfo;

    if-eqz v6, :cond_6

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$100(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$200(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$100(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$300(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$200(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v4}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getId()J

    move-result-wide v8

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v3

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v7

    const/4 v3, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    sget-object v10, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v10, :cond_8

    invoke-virtual {v7}, Lcn/kuwo/base/bean/MusicList;->e()I

    move-result v3

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :cond_2
    :goto_2
    if-eqz v3, :cond_a

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v3

    invoke-interface {v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v3

    sget-object v7, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v3, v7, :cond_3

    sget-object v7, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v3, v7, :cond_9

    :cond_3
    const v3, 0x7f020002

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_3
    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$500(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v3, 0x7f0200a7

    invoke-virtual {v1, v3}, Lcn/kuwo/mod/skin/SkinMgr;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_4
    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/kuwo/base/image/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    const v5, 0x7f0200a7

    invoke-virtual {v1, v5}, Lcn/kuwo/mod/skin/SkinMgr;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_4
    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$500(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$600(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f020058

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$600(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f020058

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->mImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    iget-object v4, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    if-eqz v6, :cond_5

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$600(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->mImageLoader:Lcn/kuwo/base/image/ListImageLoader;

    iget-object v3, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$600(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v4, Lcn/kuwo/base/image/processing/BlurImageProcessing;

    invoke-direct {v4}, Lcn/kuwo/base/image/processing/BlurImageProcessing;-><init>()V

    invoke-virtual {v2, v3, v1, v0, v4}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/processing/ImageProcessing;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$300(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$100(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$300(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$200(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-static {v8, v9}, Lcn/kuwo/base/util/PlayMusicHelper;->isPlayCurrent(J)Z

    move-result v3

    goto/16 :goto_2

    :cond_9
    const v3, 0x7f0200d7

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_a
    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$400(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f0200a3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;->access$200(Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f0200a3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_b
    move-object v3, v1

    goto/16 :goto_4

    :cond_c
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->context:Landroid/content/Context;

    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->parent:Landroid/view/View;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->parent:Landroid/view/View;

    :cond_0
    new-instance v1, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;

    invoke-direct {v1, v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter$BaseQukuViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setBaseQukuItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->baseQukuItems:Ljava/util/List;

    invoke-virtual {p0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnPlayClickListener(Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->onPlayClickListener:Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;

    return-void
.end method
