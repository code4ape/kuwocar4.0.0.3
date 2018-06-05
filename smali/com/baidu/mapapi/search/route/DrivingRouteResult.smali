.class public final Lcom/baidu/mapapi/search/route/DrivingRouteResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Lcom/baidu/mapapi/search/core/TaxiInfo;

.field private d:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/route/f;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/f;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a:Ljava/util/List;

    sget-object v1, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->b:Ljava/util/List;

    sget-object v1, Lcom/baidu/mapapi/search/core/TaxiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    const-class v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->d:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->d:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a:Ljava/util/List;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRouteLines()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->d:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-object v0
.end method

.method public getTaxiInfo()Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-object v0
.end method

.method public getTaxiInfos()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public setTaxiInfos(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->b:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->d:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
