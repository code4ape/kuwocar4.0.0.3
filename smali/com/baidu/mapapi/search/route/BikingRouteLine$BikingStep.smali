.class public Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private c:I

.field private d:Lcom/baidu/mapapi/search/core/RouteNode;

.field private e:Lcom/baidu/mapapi/search/core/RouteNode;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/route/b;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/b;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->c:I

    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->i:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/baidu/mapapi/model/LatLng;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->c:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->f:Ljava/lang/String;

    return-void
.end method

.method b(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->g:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->h:Ljava/lang/String;

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->i:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->c:I

    return v0
.end method

.method public getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getEntranceInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExitInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->mWayPoints:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, v1}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->d:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
