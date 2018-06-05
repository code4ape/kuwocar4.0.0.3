.class final Lcn/kuwo/base/util/CopyrightInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcn/kuwo/base/util/UrlManagerUtils;->getCheckCopyrightRequest()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v2}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-string v3, "GBK"

    invoke-virtual {v2, v0, v3}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "\\n|\\r\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    const-string v5, "RESULT="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "RESULT=0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcn/kuwo/base/util/CopyrightInfo;->access$002(Z)Z

    const-string v4, "appconfig"

    const-string v5, "ipdomian_has_copyright"

    invoke-static {v4, v5, v1, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "IP="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "IP="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    const-string v4, "appconfig"

    const-string v5, "ipdomian_client_ip"

    sget-object v6, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_2

    :cond_4
    const-string v5, "DOMAIN="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "DOMAIN="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_AREA:Ljava/lang/String;

    const-string v4, "appconfig"

    const-string v5, "ipdomian_client_area"

    sget-object v6, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_AREA:Ljava/lang/String;

    invoke-static {v4, v5, v6, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_2

    :cond_5
    const-string v0, "\u7248\u6743"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCopyight   HAS_COPYRIGHT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/util/CopyrightInfo;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CLIENT_IP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CLIENT_AREA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_AREA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
