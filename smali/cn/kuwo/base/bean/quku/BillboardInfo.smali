.class public Lcn/kuwo/base/bean/quku/BillboardInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItemList;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Billboard"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/bean/quku/BillboardInfo;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/bean/quku/BillboardInfo;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
