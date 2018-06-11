.class public Lcn/kuwo/mod/localmgr/LocalMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IDownloadMgrObserver;
.implements Lcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;
.implements Lcn/kuwo/mod/localmgr/ILocalMgr;


# static fields
.field public static a:Ljava/util/Comparator;


# instance fields
.field private b:Lcn/kuwo/base/bean/MusicList;

.field private c:Landroid/util/SparseArray;

.field private d:Landroid/util/SparseArray;

.field private e:Landroid/util/SparseArray;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Z

.field private j:Lcn/kuwo/mod/localmgr/DirectoryScanner;

.field private k:J

.field private l:J

.field private m:Lcn/kuwo/base/bean/MusicList;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcn/kuwo/base/bean/Music;

.field private s:Lcn/kuwo/core/observers/ext/ListObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$1;

    invoke-direct {v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl$1;-><init>()V

    sput-object v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x1f4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->k:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->l:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->m:Lcn/kuwo/base/bean/MusicList;

    new-instance v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;-><init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->s:Lcn/kuwo/core/observers/ext/ListObserver;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Lcn/kuwo/base/bean/Music;)Lcn/kuwo/base/bean/Music;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->r:Lcn/kuwo/base/bean/Music;

    return-object p1
.end method

.method private a(Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;
    .locals 4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->d(Ljava/lang/String;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->m:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    return-object p1
.end method

.method private a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicListMem;
    .locals 1

    new-instance v0, Lcn/kuwo/base/bean/MusicListMem;

    invoke-direct {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;-><init>(Lcn/kuwo/base/bean/ListType;)V

    return-object v0
.end method

.method private a(Lcn/kuwo/base/bean/ListType;Lcn/kuwo/base/bean/Music;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    if-ne p1, v1, :cond_3

    iget-object v1, p2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/Comparator;)Z

    goto :goto_0
.end method

.method private a(Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/bean/MusicList;)Z
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->q:Z

    return p1
.end method

.method private b(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 5

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->getScanRootFiles()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
	
    if-eqz v4, :cond_0

    :goto_0
	const-string v1, "===LocalMgrImpl private string b(music) compare filepaths:======="
	invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "\u9177\u6211\u4e0b\u8f7d\u76ee\u5f55"

    goto :goto_0

    :cond_2
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Ljava/util/Comparator;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcn/kuwo/base/bean/MusicList;)Ljava/util/List;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->n:Z

    return p1
.end method

.method private c(Lcn/kuwo/base/bean/Music;)V
    .locals 5

    invoke-direct {p0, p1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicListMem;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->add(Lcn/kuwo/base/bean/Music;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicListMem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->b(Ljava/lang/String;)V

    const-string v3, "local.disk"

    invoke-virtual {v0, v3}, Lcn/kuwo/base/bean/MusicListMem;->setName(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u672c\u5730\u97f3\u4e50"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->c(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->add(Lcn/kuwo/base/bean/Music;)Z

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

	const-string v1, "===LocalMgrImpl private void c(music) check MusicListMem======="
	invoke-virtual {v0},Lcn/kuwo/base/bean/MusicListMem;->toString()Ljava/lang/String;
	move-result-object v2
	invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
	
    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o:Z

    return p1
.end method

.method static synthetic d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->r:Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method private d(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c:Landroid/util/SparseArray;

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicListMem;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->add(Lcn/kuwo/base/bean/Music;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicListMem;

    move-result-object v0

    const-string v1, "local.artist"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->setName(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->add(Lcn/kuwo/base/bean/Music;)Z

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c:Landroid/util/SparseArray;

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p:Z

    return p1
.end method

.method static synthetic e(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method private e(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    iput-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicListMem;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->add(Lcn/kuwo/base/bean/Music;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicListMem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/MusicListMem;->setName(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/MusicListMem;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/MusicListMem;->add(Lcn/kuwo/base/bean/Music;)Z

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicListMem;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9177\u6211\u4e0b\u8f7d\u76ee\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private f(Lcn/kuwo/base/bean/Music;)Z
    .locals 2

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    sget-object v0, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicListMem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "\u672c\u5730\u97f3\u4e50"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicListMem;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->j()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/base/bean/Music;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h:Ljava/util/ArrayList;

    sget-object v1, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->q:Z

    goto :goto_0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/base/bean/Music;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->f:Ljava/util/ArrayList;

    sget-object v1, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o:Z

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e(Lcn/kuwo/base/bean/Music;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p:Z

    goto :goto_0
.end method

.method private n()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->f(Lcn/kuwo/base/bean/Music;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v2, "local.all"

    invoke-interface {v0, v2, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private o()Ljava/util/Comparator;
    .locals 3

    const-string v0, "local"

    const-string v1, "local_sort_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/kuwo/base/bean/Music;->z:Ljava/util/Comparator;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcn/kuwo/base/bean/Music;->z:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/kuwo/base/bean/Music;->A:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/kuwo/base/bean/Music;->B:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private p()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public IDownloadObserver_OnListChanged(I)V
    .locals 0

    return-void
.end method

.method public final IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public final IDownloadObserver_OnStateChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 3

    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    iget-object v2, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/MusicList;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    sget-object v1, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Lcn/kuwo/base/bean/Music;)V

    sget-object v1, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Lcn/kuwo/base/bean/Music;)V

    sget-object v1, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Lcn/kuwo/base/bean/Music;)V

    sget-object v1, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Lcn/kuwo/base/bean/Music;)V

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/base/bean/Music;)V

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e(Lcn/kuwo/base/bean/Music;)V

    invoke-direct {p0, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/base/bean/Music;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$6;->a:[I

    invoke-virtual {p2}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->i()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->s:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->i:Z

    return-void
.end method

.method public a(IIILjava/lang/String;)V
    .locals 8

    const-string v0, "LocalMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ScanListener_onScanProgress] total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanedCnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->l:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v6

    sget-object v7, Lcn/kuwo/core/messagemgr/MessageID;->q:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/localmgr/LocalMgrImpl$2;-><init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;IIILjava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->k:J

    :cond_1
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v2, "local.all"

    invoke-interface {v0, v2, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->n:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->q:Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v2, "local.all"

    invoke-interface {v0, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v2, "local.all"

    invoke-interface {v0, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->e(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->r:Lcn/kuwo/base/bean/Music;

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    sget-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    iput-object v0, p1, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-interface {v0, v1, p1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/Comparator;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->n:Z

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->q:Z

    return-void
.end method

.method public final a(Lcn/kuwo/base/bean/MusicList;I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/bean/MusicList;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Ljava/util/List;ZLcn/kuwo/base/bean/MusicList;)V

    return-void
.end method

.method public final a(Ljava/util/List;ZLcn/kuwo/base/bean/MusicList;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->j:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-direct {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->j:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->i:Z

    if-nez v0, :cond_1

    iput-object p3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->m:Lcn/kuwo/base/bean/MusicList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->i:Z

    if-eqz p3, :cond_2

    const-string v0, "local.all"

    invoke-virtual {p3}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->j:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-direct {p0, p3}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/base/bean/MusicList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p0, v1}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Ljava/util/List;ZLcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;Ljava/util/List;)V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->j:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p0, v1}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Ljava/util/List;ZLcn/kuwo/mod/localmgr/DirectoryScanner$DirectoryScanListener;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ZIILjava/util/ArrayList;)V
    .locals 8

    const-string v0, "LocalMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u626b\u63cf\u7ed3\u675f\uff0c\u4e00\u5171"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9996\uff0c\u8fd4\u56de"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9996"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->i:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;

    invoke-direct {v1, p0, p4}, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;-><init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v6

    sget-object v7, Lcn/kuwo/core/messagemgr/MessageID;->q:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/localmgr/LocalMgrImpl$4;-><init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;ZIILjava/util/ArrayList;)V

    invoke-virtual {v6, v7, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u626b\u63cf\u5b8c\u6210\uff0c\u6dfb\u52a0\u6b4c\u66f2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9996"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u53d6\u6d88\u626b\u63cf"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Z)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcn/kuwo/base/bean/MusicListMem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/kuwo/base/bean/MusicListMem;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/bean/MusicListMem;->a(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/list/ListHelp;->b(Lcn/kuwo/base/bean/ListType;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcn/kuwo/mod/list/ListHelp;->a(Ljava/util/List;)Z

    :goto_0
    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p:Z

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o:Z

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->n:Z

    iput-boolean v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->q:Z

    return v2

    :cond_1
    invoke-static {p2}, Lcn/kuwo/mod/list/ListHelp;->b(Ljava/util/List;)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p2}, Lcn/kuwo/mod/list/ListHelp;->a(Ljava/util/List;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "download.finish"

    invoke-interface {v0, v1, p2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->s:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->i:Z

    return v0
.end method

.method public e()V
    .locals 4

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->getScanRootFiles()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final f()Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->l()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->m()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->k()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->h:Ljava/util/ArrayList;

    return-object v0
.end method
