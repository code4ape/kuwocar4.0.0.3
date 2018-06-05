.class final Lcom/baidu/mapapi/search/route/a;
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
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/WalkingRouteLine;
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/WalkingRouteLine;
    .locals 1

    new-array v0, p1, [Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/a;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/a;->a(I)[Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    move-result-object v0

    return-object v0
.end method
