.class public final Lcn/kuwo/mod/search/SearchTipsRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;


# direct methods
.method private b()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/UrlManagerUtils;->getSearchTipsRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v2}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->a:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/mod/search/SearchTipsRunner;->a()V

    const-string v0, "\u6e05\u9664"

    const-string v1, "11111"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v0, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_2
    iget-boolean v0, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/mod/search/SearchTipsRunner;->a()V

    const-string v0, "\u6e05\u9664"

    const-string v1, "22222"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RELWORD=(.+)\\r\\nSNUM=(\\d+)\\r\\nRNUM=(\\d+)\\r\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuwo/mod/search/SearchTipsRunner;->a()V

    :goto_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->c:Ljava/util/ArrayList;

    new-instance v2, Lcn/kuwo/mod/search/TipInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/kuwo/mod/search/TipInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-boolean v0, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/search/SearchTipsRunner;->a()V

    const-string v0, "\u6e05\u9664"

    const-string v1, "33333"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/search/SearchTipsRunner;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/search/SearchTipsRunner;->b()V

    :cond_0
    return-void
.end method
