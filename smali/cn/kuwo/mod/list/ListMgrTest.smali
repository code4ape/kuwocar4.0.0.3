.class public Lcn/kuwo/mod/list/ListMgrTest;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IListObserver;


# static fields
.field private static b:Lcn/kuwo/mod/list/ListMgrTest;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/list/ListMgrTest;

    invoke-direct {v0}, Lcn/kuwo/mod/list/ListMgrTest;-><init>()V

    sput-object v0, Lcn/kuwo/mod/list/ListMgrTest;->b:Lcn/kuwo/mod/list/ListMgrTest;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ListMgrT"

    iput-object v0, p0, Lcn/kuwo/mod/list/ListMgrTest;->a:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->c()Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/ListMgrTest;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/list/ListMgrTest;->a()V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v3, "|*32@@"

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v3, "li()st_1"

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    const-string v4, "sdsdfsd"

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->a:Lcn/kuwo/base/bean/ListType;

    const-string v4, "sdsdfsd"

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    const-string v4, "*/*"

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v3, "ListMgrTest"

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    iget-object v4, p0, Lcn/kuwo/mod/list/ListMgrTest;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    iget-object v4, p0, Lcn/kuwo/mod/list/ListMgrTest;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    iget-object v4, p0, Lcn/kuwo/mod/list/ListMgrTest;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcn/kuwo/mod/list/IListMgr;->b(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v3

    if-eqz v3, :cond_9

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v4, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v4}, Lcn/kuwo/mod/list/IListMgr;->b(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "ListMgrTest"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v5

    invoke-interface {v5, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;)Z

    if-eqz v3, :cond_a

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    goto :goto_9

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    sget-object v0, Lcn/kuwo/base/bean/ListType;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v4

    invoke-interface {v4, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    goto :goto_b

    :cond_c
    move v0, v2

    goto :goto_c

    :cond_d
    sget-object v0, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    sget-object v4, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v4, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    goto :goto_d

    :cond_f
    move v0, v2

    goto :goto_e

    :cond_10
    return-void
.end method

.method static synthetic b(Lcn/kuwo/mod/list/ListMgrTest;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/list/ListMgrTest;->b()V

    return-void
.end method

.method private c()V
    .locals 13

    const/16 v12, 0xc8

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcn/kuwo/mod/list/ListMgrTest;->a:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v4, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v4, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    new-instance v5, Lcn/kuwo/base/bean/Music;

    invoke-direct {v5}, Lcn/kuwo/base/bean/Music;-><init>()V

    const-wide/16 v6, 0x1

    iput-wide v6, v5, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-virtual {v4, v5}, Lcn/kuwo/base/bean/MusicList;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v11, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v5}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/kuwo/base/bean/Music;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    new-instance v6, Lcn/kuwo/base/bean/Music;

    invoke-direct {v6}, Lcn/kuwo/base/bean/Music;-><init>()V

    const-wide/16 v8, 0x2

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ne v0, v10, :cond_6

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/kuwo/base/bean/Music;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    new-instance v7, Lcn/kuwo/base/bean/Music;

    invoke-direct {v7}, Lcn/kuwo/base/bean/Music;-><init>()V

    const-wide/16 v8, 0x1

    iput-wide v8, v7, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ne v0, v10, :cond_8

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/kuwo/base/bean/Music;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v7}, Lcn/kuwo/base/bean/MusicList;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v11, :cond_a

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v7}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    new-instance v7, Lcn/kuwo/base/bean/Music;

    invoke-direct {v7}, Lcn/kuwo/base/bean/Music;-><init>()V

    const-wide/16 v8, 0x3

    iput-wide v8, v7, Lcn/kuwo/base/bean/Music;->a:J

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v8}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v8}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_c

    move v0, v1

    :goto_c
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v7}, Lcn/kuwo/base/bean/MusicList;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v11, :cond_d

    move v0, v1

    :goto_d
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v7}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v5}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v6}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v10, :cond_10

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v8}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Ljava/util/List;)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_11

    move v0, v1

    :goto_11
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ne v0, v10, :cond_12

    move v0, v1

    :goto_12
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->d(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v8}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v2, v10}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;II)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ne v0, v1, :cond_14

    move v0, v1

    :goto_14
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_15
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v8}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v6

    invoke-interface {v6, v3, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ne v0, v1, :cond_16

    move v0, v1

    :goto_16
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->d(Ljava/lang/String;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_17
    const/16 v6, 0x3e8

    if-gt v0, v6, :cond_17

    new-instance v6, Lcn/kuwo/base/bean/Music;

    invoke-direct {v6}, Lcn/kuwo/base/bean/Music;-><init>()V

    int-to-long v8, v0

    iput-wide v8, v6, Lcn/kuwo/base/bean/Music;->a:J

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto/16 :goto_f

    :cond_10
    move v0, v2

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    move v0, v2

    goto/16 :goto_12

    :cond_13
    move v0, v2

    goto/16 :goto_13

    :cond_14
    move v0, v2

    goto/16 :goto_14

    :cond_15
    move v0, v2

    goto/16 :goto_15

    :cond_16
    move v0, v2

    goto :goto_16

    :cond_17
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_18

    move v0, v1

    :goto_18
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    move v0, v1

    :goto_19
    if-gt v0, v12, :cond_19

    new-instance v5, Lcn/kuwo/base/bean/Music;

    invoke-direct {v5}, Lcn/kuwo/base/bean/Music;-><init>()V

    add-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    iput-wide v6, v5, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v2

    goto :goto_18

    :cond_19
    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v5, 0x4b0

    if-ne v0, v5, :cond_1a

    move v0, v1

    :goto_1a
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    move v0, v1

    :goto_1b
    if-gt v0, v12, :cond_1b

    new-instance v5, Lcn/kuwo/base/bean/Music;

    invoke-direct {v5}, Lcn/kuwo/base/bean/Music;-><init>()V

    int-to-long v6, v0

    iput-wide v6, v5, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v2

    goto :goto_1a

    :cond_1b
    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v5, 0x4b0

    if-ne v0, v5, :cond_1c

    move v0, v1

    :goto_1c
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    move v0, v1

    :goto_1d
    if-gt v0, v12, :cond_1d

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_1c
    move v0, v2

    goto :goto_1c

    :cond_1d
    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_1e

    move v0, v1

    :goto_1e
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->d(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    :goto_1f
    invoke-static {v1}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;)Z

    return-void

    :cond_1e
    move v0, v2

    goto :goto_1e

    :cond_1f
    move v1, v2

    goto :goto_1f
.end method

.method static synthetic c(Lcn/kuwo/mod/list/ListMgrTest;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/list/ListMgrTest;->c()V

    return-void
.end method


# virtual methods
.method public IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_deleteList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_initComplete()V
    .locals 2

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    new-instance v1, Lcn/kuwo/mod/list/ListMgrTest$1;

    invoke-direct {v1, p0}, Lcn/kuwo/mod/list/ListMgrTest$1;-><init>(Lcn/kuwo/mod/list/ListMgrTest;)V

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    invoke-direct {p0}, Lcn/kuwo/mod/list/ListMgrTest;->a()V

    invoke-direct {p0}, Lcn/kuwo/mod/list/ListMgrTest;->b()V

    invoke-direct {p0}, Lcn/kuwo/mod/list/ListMgrTest;->c()V

    const/16 v1, 0x36b0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    return-void
.end method

.method public IListObserver_insertList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_insertOverflow(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_loadComplete()V
    .locals 0

    return-void
.end method

.method public IListObserver_startLoad()V
    .locals 0

    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method
