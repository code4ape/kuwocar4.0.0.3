.class public Lcom/baidu/platform/comapi/map/a;
.super Lcom/baidu/platform/comapi/map/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/d;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/platform/comapi/map/a;->c:I

    const-string v0, "heatmap"

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/a;->b:Ljava/lang/String;

    const v0, 0x2bf20

    iput v0, p0, Lcom/baidu/platform/comapi/map/a;->d:I

    return-void
.end method
