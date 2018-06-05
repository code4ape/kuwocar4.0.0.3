.class public Lcom/baidu/platform/comjni/map/cloud/JniCloud;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native cloudDetailSearch(JLandroid/os/Bundle;)V
.end method

.method public native cloudSearch(JLandroid/os/Bundle;)V
.end method

.method public native create()J
.end method

.method public native getSearchResult(JI)Ljava/lang/String;
.end method

.method public native release(J)I
.end method
