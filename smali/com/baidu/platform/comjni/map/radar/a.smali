.class public Lcom/baidu/platform/comjni/map/radar/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    new-instance v0, Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;->Create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    return-wide v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;->GetRadarResult(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;->SendUploadLocationInfoRequest(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;->Release(J)I

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;->SendClearLocationInfoRequest(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/radar/a;->b:Lcom/baidu/platform/comjni/map/radar/JNIRadar;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/radar/a;->a:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/baidu/platform/comjni/map/radar/JNIRadar;->SendGetLocationInfosNearbyRequest(JLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
