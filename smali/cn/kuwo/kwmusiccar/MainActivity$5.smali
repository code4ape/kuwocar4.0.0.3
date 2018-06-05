.class Lcn/kuwo/kwmusiccar/MainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$5;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->g()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    :try_start_0
    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iget-object v5, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, v3, v1}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Z)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/kwmusiccar/MainActivity$5$1;

    invoke-direct {v1, p0, v3}, Lcn/kuwo/kwmusiccar/MainActivity$5$1;-><init>(Lcn/kuwo/kwmusiccar/MainActivity$5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
