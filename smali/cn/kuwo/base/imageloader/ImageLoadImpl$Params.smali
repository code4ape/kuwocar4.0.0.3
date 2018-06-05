.class public Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public c:[B

.field public d:Lcn/kuwo/base/imageloader/ImageLoadListener;

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->c:[B

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->d:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->f:Z

    iput-boolean v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$Params;->g:Z

    return-void
.end method
