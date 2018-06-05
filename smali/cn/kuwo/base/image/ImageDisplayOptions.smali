.class public final Lcn/kuwo/base/image/ImageDisplayOptions;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/widget/ImageView$ScaleType;

.field public f:Landroid/widget/ImageView$ScaleType;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/kuwo/base/image/ImageDisplayOptions;->g:I

    iput v0, p0, Lcn/kuwo/base/image/ImageDisplayOptions;->h:I

    iput p1, p0, Lcn/kuwo/base/image/ImageDisplayOptions;->a:I

    iput p2, p0, Lcn/kuwo/base/image/ImageDisplayOptions;->b:I

    iput-boolean p3, p0, Lcn/kuwo/base/image/ImageDisplayOptions;->c:Z

    iput-boolean p4, p0, Lcn/kuwo/base/image/ImageDisplayOptions;->d:Z

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0, p1, p1, p2, p3}, Lcn/kuwo/base/image/ImageDisplayOptions;-><init>(IIZZ)V

    return-void
.end method

.method public static a(I)Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 3

    new-instance v0, Lcn/kuwo/base/image/ImageDisplayOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/kuwo/base/image/ImageDisplayOptions;-><init>(IZZ)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public static b(I)Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcn/kuwo/base/image/ImageDisplayOptions;

    invoke-direct {v0, p0, v1, v1}, Lcn/kuwo/base/image/ImageDisplayOptions;-><init>(IZZ)V

    return-object v0
.end method

.method public static c(I)Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 3

    new-instance v0, Lcn/kuwo/base/image/ImageDisplayOptions;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcn/kuwo/base/image/ImageDisplayOptions;-><init>(IZZ)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method
