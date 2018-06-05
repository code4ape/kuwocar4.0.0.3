.class public Lcom/baidu/platform/comapi/map/z;
.super Lcom/baidu/platform/comapi/map/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/I;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comapi/map/z;->c:I

    const-string v0, "location"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/z;->b:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/platform/comapi/map/z;->d:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/baidu/platform/comapi/map/z;->g:I

    return-void
.end method
