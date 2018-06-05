.class final Lcn/kuwo/base/bean/Music$3;
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
.method public a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/Music;)I
    .locals 2

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    iget-object v1, p2, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    iget-object v1, p2, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwDate;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcn/kuwo/base/bean/Music;

    check-cast p2, Lcn/kuwo/base/bean/Music;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/bean/Music$3;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/Music;)I

    move-result v0

    return v0
.end method
