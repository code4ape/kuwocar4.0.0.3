.class Lcn/kuwo/kwmusiccar/App$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/App;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/App;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/App$4;->this$0:Lcn/kuwo/kwmusiccar/App;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const-string v0, "http://updatepage.kuwo.cn/pagesig/arpad/config.htm"

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const-string v1, "http://updatepage.kuwo.cn/pagesig/arpad/config.htm"

    invoke-static {v1}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "copyright="

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadConf"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/kwmusiccar/App$4$1;

    invoke-direct {v2, p0, v0}, Lcn/kuwo/kwmusiccar/App$4$1;-><init>(Lcn/kuwo/kwmusiccar/App$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_1
    return-void
.end method
