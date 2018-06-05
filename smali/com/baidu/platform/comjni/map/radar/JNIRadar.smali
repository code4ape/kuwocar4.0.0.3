.class public Lcom/baidu/platform/comjni/map/radar/JNIRadar;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native Create()J
.end method

.method public native GetRadarResult(JI)Ljava/lang/String;
.end method

.method public native Release(J)I
.end method

.method public native SendClearLocationInfoRequest(JLandroid/os/Bundle;)Z
.end method

.method public native SendGetLocationInfosNearbyRequest(JLandroid/os/Bundle;)Z
.end method

.method public native SendUploadLocationInfoRequest(JLandroid/os/Bundle;)Z
.end method
