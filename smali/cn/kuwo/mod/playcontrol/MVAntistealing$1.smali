.class Lcn/kuwo/mod/playcontrol/MVAntistealing$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

.field final synthetic c:Lcn/kuwo/mod/playcontrol/MVAntistealing;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/MVAntistealing;JLcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->c:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    iput-wide p2, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->a:J

    iput-object p4, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-wide v2, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->a:J

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    if-ne v0, v1, :cond_0

    const-string v0, "MP4L"

    :goto_0
    invoke-static {v2, v3, v0}, Lcn/kuwo/base/util/UrlManagerUtils;->getMVUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->c:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    invoke-static {v0, v6}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Lcn/kuwo/mod/playcontrol/MVAntistealing;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "MP4"

    goto :goto_0

    :cond_1
    const-string v1, "\\n|\\r\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->c:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    invoke-static {v0, v3}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Lcn/kuwo/mod/playcontrol/MVAntistealing;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;->c:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    invoke-static {v0, v6}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Lcn/kuwo/mod/playcontrol/MVAntistealing;Ljava/lang/String;)V

    goto :goto_1
.end method
