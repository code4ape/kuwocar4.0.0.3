.class Lcn/kuwo/mod/list/ListSet$ListComparable;
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
.method public a(Lcn/kuwo/mod/list/MusicListInner;Lcn/kuwo/mod/list/MusicListInner;)I
    .locals 4

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcn/kuwo/mod/list/MusicListInner;

    check-cast p2, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/mod/list/ListSet$ListComparable;->a(Lcn/kuwo/mod/list/MusicListInner;Lcn/kuwo/mod/list/MusicListInner;)I

    move-result v0

    return v0
.end method
