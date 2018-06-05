.class public Lcn/kuwo/base/bean/MusicList$MyArrayList;
.super Ljava/util/ArrayList;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/MusicList;


# direct methods
.method protected constructor <init>(Lcn/kuwo/base/bean/MusicList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/MusicList$MyArrayList;->a:Lcn/kuwo/base/bean/MusicList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    return-void
.end method
