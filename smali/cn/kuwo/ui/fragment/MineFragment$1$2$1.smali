.class Lcn/kuwo/ui/fragment/MineFragment$1$2$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$2:Lcn/kuwo/ui/fragment/MineFragment$1$2;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MineFragment$1$2;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MineFragment$1$2$1;->this$2:Lcn/kuwo/ui/fragment/MineFragment$1$2;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x7

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "ARTISTPIC_CACHE"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "SMALLPIC_CACHE"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "MVPIC_CACHE"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "QUKU_CACHE"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->deleteFiles(I)Z

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->deleteFiles(I)Z

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "LYRICS_CACHE"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/util/SearchHistoryUtils;->clean()V

    const-string v0, "\u6e05\u9664\u5b8c\u6210"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    return-void
.end method
