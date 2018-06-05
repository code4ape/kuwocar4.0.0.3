.class Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcn/kuwo/base/cache/CacheCategoryNames;

.field public c:Lcn/kuwo/base/http/HttpSession;

.field public d:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->c:Lcn/kuwo/base/http/HttpSession;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;->d:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/base/imageloader/ImageLoadImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/imageloader/ImageLoadImpl$TaskItem;-><init>()V

    return-void
.end method
