.class public abstract Lcom/baidu/mapapi/cloud/BaseSearchResult;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_CODE_NETWORK_ERROR:I = 0x2

.field public static final STATUS_CODE_NETWORK_TIME_OUT:I = 0x8

.field public static final STATUS_CODE_RESULT_NOTFOUND:I = 0x1

.field public static final STATUS_CODE_SUCCEED:I


# instance fields
.field public size:I

.field public status:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mapapi/cloud/BaseSearchResult;->status:I

    return-void
.end method


# virtual methods
.method a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/cloud/BaseSearchResult;->status:I

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/cloud/BaseSearchResult;->size:I

    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/cloud/BaseSearchResult;->total:I

    return-void
.end method
