.class public Lcn/kuwo/mod/quku/OnlineUrlUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineUrlUtils$1;->a:[I

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcn/kuwo/mod/quku/OnlineUrlUtils;->b(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcn/kuwo/mod/quku/OnlineUrlUtils;->c(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcn/kuwo/base/util/UrlManagerUtils;->getPanContentHomeRequest()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2}, Lcn/kuwo/mod/quku/OnlineUrlUtils;->d(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2}, Lcn/kuwo/mod/quku/OnlineUrlUtils;->b(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/quku/OnlineType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->a()I

    move-result v1

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->b()I

    move-result v4

    invoke-static {v0, v2, v3, v1, v4}, Lcn/kuwo/base/util/UrlManagerUtils;->getSimilarSongUrl(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static b(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->c()Ljava/lang/String;

    move-result-object v8

    mul-int v4, p1, p2

    move v5, p2

    invoke-static/range {v1 .. v8}, Lcn/kuwo/base/util/UrlManagerUtils;->getQukuRequestNew(Lcn/kuwo/mod/quku/OnlineType;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcn/kuwo/base/util/UrlManagerUtils;->getSearchRequest(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineType;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcn/kuwo/mod/quku/OnlineExtra;II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/OnlineExtra;->f()Ljava/lang/String;

    move-result-object v2

    mul-int v3, p1, p2

    invoke-static {v0, v1, v3, p2, v2}, Lcn/kuwo/base/util/UrlManagerUtils;->getPanContentTagListRequest(JIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
