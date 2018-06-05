.class public Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcn/kuwo/base/imageloader/ImageLoadListener;

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lcn/kuwo/base/imageloader/ImageLoadListener;Ljava/lang/Object;ZZ)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iput-object v1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->b:Ljava/lang/Object;

    iput-boolean v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->c:Z

    iput-boolean v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->d:Z

    iput-object p1, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->a:Lcn/kuwo/base/imageloader/ImageLoadListener;

    iput-object p2, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->c:Z

    iput-boolean p4, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$ObserverInfo;->d:Z

    return-void
.end method
