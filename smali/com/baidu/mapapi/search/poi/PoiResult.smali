.class public Lcom/baidu/mapapi/search/poi/PoiResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/poi/c;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/c;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    const-class v0, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Z

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Z

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->g:Ljava/util/List;

    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    return-void
.end method

.method c(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Ljava/util/List;

    return-void
.end method

.method d(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllAddr()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->g:Ljava/util/List;

    return-object v0
.end method

.method public getAllPoi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPageCapacity()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    return v0
.end method

.method public getCurrentPageNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    return v0
.end method

.method public getSuggestCityList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Ljava/util/List;

    return-object v0
.end method

.method public getTotalPageNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    return v0
.end method

.method public getTotalPoiNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    return v0
.end method

.method public isHasAddrInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
