.class public Lcom/baidu/mapapi/search/sug/SuggestionResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/sug/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/sug/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    const-class v0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->a:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllSuggestions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
