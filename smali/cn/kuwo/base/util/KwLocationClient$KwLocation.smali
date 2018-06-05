.class public Lcn/kuwo/base/util/KwLocationClient$KwLocation;
.super Ljava/lang/Object;


# instance fields
.field private city:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->province:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->city:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->district:Ljava/lang/String;

    iput-wide p4, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->latitude:D

    iput-wide p6, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->longitude:D

    return-void
.end method


# virtual methods
.method public equalLocation(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    if-eqz v0, :cond_0

    check-cast p1, Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->longitude:D

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->city:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->district:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->longitude:D

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient$KwLocation;->province:Ljava/lang/String;

    return-void
.end method
