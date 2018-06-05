.class final Lcom/baidu/mapapi/search/sug/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;
    .locals 1

    new-array v0, p1, [Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/sug/b;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/sug/b;->a(I)[Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    move-result-object v0

    return-object v0
.end method
