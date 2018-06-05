.class public Lcom/baidu/platform/comapi/map/L;
.super Lcom/baidu/platform/comapi/map/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/I;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/platform/comapi/map/L;->c:I

    const-string v0, "sdktile"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/L;->b:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/baidu/platform/comapi/map/L;->d:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/baidu/platform/comapi/map/L;->g:I

    return-void
.end method
