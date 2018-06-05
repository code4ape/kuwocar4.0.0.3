.class final Lcn/kuwo/mod/localmgr/LocalMgrImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/bean/MusicList;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcn/kuwo/base/bean/MusicList;

    check-cast p2, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl$1;->a(Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/bean/MusicList;)I

    move-result v0

    return v0
.end method
