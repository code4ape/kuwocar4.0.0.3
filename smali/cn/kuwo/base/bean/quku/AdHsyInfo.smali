.class public Lcn/kuwo/base/bean/quku/AdHsyInfo;
.super Lcn/kuwo/base/bean/quku/AppInfo;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ad_ar"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/AppInfo;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/bean/quku/AdHsyInfo;->a:I

    return-void
.end method
