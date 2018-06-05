.class final Lcn/kuwo/base/util/KwFileUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic val$exceptRegex:Ljava/lang/String;

.field final synthetic val$regex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwFileUtils$3;->val$regex:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/util/KwFileUtils$3;->val$exceptRegex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcn/kuwo/base/util/KwFileUtils$3;->val$regex:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/kuwo/base/util/KwFileUtils$3;->val$exceptRegex:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/base/util/KwFileUtils$3;->val$exceptRegex:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcn/kuwo/base/util/KwFileUtils$3;->val$exceptRegex:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FileUtils"

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
