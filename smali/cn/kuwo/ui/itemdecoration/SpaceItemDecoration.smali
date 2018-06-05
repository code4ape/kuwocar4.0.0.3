.class public Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;


# instance fields
.field private horizontalSpace:I

.field private verticalSpace:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->horizontalSpace:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->verticalSpace:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->horizontalSpace:I

    iput p2, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->verticalSpace:I

    return-void
.end method

.method private getSpanCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 2

    iget v0, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->verticalSpace:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->verticalSpace:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p3}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->getSpanCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->horizontalSpace:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    rem-int v0, p2, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->horizontalSpace:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :goto_1
    return-void

    :cond_0
    iget v1, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->horizontalSpace:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;->horizontalSpace:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method
