.class public Lcn/kuwo/base/bean/quku/AutoTagInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItemList;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "autotag"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/AutoTagInfo;->c:Ljava/lang/String;

    return-void
.end method
