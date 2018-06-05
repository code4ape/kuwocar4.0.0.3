.class public Lcom/baidu/platform/comapi/search/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/baidu/mapapi/model/inner/Point;

.field public c:Lcom/baidu/mapapi/model/LatLng;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/platform/comapi/search/a;->a:I

    iput-object v1, p0, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput-object v1, p0, Lcom/baidu/platform/comapi/search/a;->c:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, p0, Lcom/baidu/platform/comapi/search/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/platform/comapi/search/a;->e:Ljava/lang/String;

    return-void
.end method
