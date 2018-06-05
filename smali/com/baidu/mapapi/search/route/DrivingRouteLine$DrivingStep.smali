.class public Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field c:Ljava/util/List;

.field d:[I

.field private e:I

.field private f:Lcom/baidu/mapapi/search/core/RouteNode;

.field private g:Lcom/baidu/mapapi/search/core/RouteNode;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/route/e;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/e;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:I

    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:I

    sget-object v0, Lcom/baidu/mapapi/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->c:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:[I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:I

    return-void
.end method

.method a(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->c:Ljava/util/List;

    return-void
.end method

.method a([I)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:[I

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:I

    return-void
.end method

.method b(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:I

    return v0
.end method

.method public getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getEntranceInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExitInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getNumTurns()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:I

    return v0
.end method

.method public getTrafficList()[I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:[I

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->mWayPoints:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->c:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
