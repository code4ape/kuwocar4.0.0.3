.class public Lcom/baidu/mapapi/search/poi/PoiIndoorResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:I

.field b:I

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/poi/b;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/b;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->b:I

    return v0
.end method

.method public getPoiNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->a:I

    return v0
.end method

.method public getmArrayPoiInfo()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public setPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->b:I

    return-void
.end method

.method public setPoiNum(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->a:I

    return-void
.end method

.method public setmArrayPoiInfo(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->c:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
