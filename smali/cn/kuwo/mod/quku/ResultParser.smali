.class public Lcn/kuwo/mod/quku/ResultParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuwo/mod/quku/OnlineType;[B)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->g:Lcn/kuwo/mod/quku/OnlineType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->h:Lcn/kuwo/mod/quku/OnlineType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->i:Lcn/kuwo/mod/quku/OnlineType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->k:Lcn/kuwo/mod/quku/OnlineType;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->j:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p0, v1, :cond_2

    :cond_0
    invoke-static {p1, p0}, Lcn/kuwo/mod/search/SearchParse;->a([BLcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->p:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p0, v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcn/kuwo/mod/quku/SimilarSongParser;->a(Ljava/lang/String;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Ljava/lang/String;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
