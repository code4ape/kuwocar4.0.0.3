.class Lcn/kuwo/mod/push/PushHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/push/PushHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/push/PushHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushHandler$2;->a:Lcn/kuwo/mod/push/PushHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
