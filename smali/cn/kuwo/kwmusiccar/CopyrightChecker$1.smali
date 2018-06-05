.class Lcn/kuwo/kwmusiccar/CopyrightChecker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/CopyrightChecker;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/CopyrightChecker;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/CopyrightChecker$1;->this$0:Lcn/kuwo/kwmusiccar/CopyrightChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const-string v2, "RESULT=0"

    invoke-static {}, Lcn/kuwo/base/util/UrlManagerUtils;->getCheckCopyrightRequest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const-string v1, "hascopyright"

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_1
    invoke-static {v1, v0}, Lcn/kuwo/base/util/SettingsUtils;->setStringSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
