.class public Lcn/kuwo/base/bean/quku/MvInfo;
.super Lcn/kuwo/base/bean/quku/MusicInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "mv"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;-><init>(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/bean/quku/MvInfo;->l(Ljava/lang/String;)V

    return-void
.end method
