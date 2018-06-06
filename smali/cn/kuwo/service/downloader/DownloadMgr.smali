.class public final Lcn/kuwo/service/downloader/DownloadMgr;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;


# static fields
.field private static d:[Lcn/kuwo/service/downloader/DownloadMgr;

.field private static e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:Lcn/kuwo/service/downloader/DownloadCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcn/kuwo/service/DownloadProxy$DownGroup;->values()[Lcn/kuwo/service/DownloadProxy$DownGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcn/kuwo/service/downloader/DownloadMgr;

    sput-object v0, Lcn/kuwo/service/downloader/DownloadMgr;->d:[Lcn/kuwo/service/downloader/DownloadMgr;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadMgr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcn/kuwo/service/DownloadProxy$DownGroup;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DownloadMgr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->a:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore;

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {p1}, Lcn/kuwo/service/DownloadProxy$DownGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcn/kuwo/service/downloader/DownloadCore;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->c:Lcn/kuwo/service/downloader/DownloadCore;

    invoke-static {}, Lcn/kuwo/service/DownloadProxy$DownType;->values()[Lcn/kuwo/service/DownloadProxy$DownType;

    move-result-object v0

    array-length v1, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadMgr;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/DownloadProxy$DownGroup;Lcn/kuwo/service/downloader/DownloadMgr$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/downloader/DownloadMgr;-><init>(Lcn/kuwo/service/DownloadProxy$DownGroup;)V

    return-void
.end method

.method public static a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/service/DownloadProxy$DownGroup;->ordinal()I

    move-result v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->d:[Lcn/kuwo/service/downloader/DownloadMgr;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v2}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/kuwo/service/downloader/DownloadMgr$1;

    invoke-direct {v3, v0, p0}, Lcn/kuwo/service/downloader/DownloadMgr$1;-><init>(ILcn/kuwo/service/DownloadProxy$DownGroup;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->d:[Lcn/kuwo/service/downloader/DownloadMgr;

    aget-object v0, v1, v0

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcn/kuwo/service/DownloadProxy$DownType;)Ljava/util/LinkedList;
    .locals 3
	const-string v0,"downloadmgr private  a(DownType)"
	
	invoke-virtual {p1},Lcn/kuwo/service/DownloadProxy$DownType;->toString()Ljava/lang/String;
	
	move-result-object v1
	
	invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	

    invoke-virtual {p1}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadMgr;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/DownloadMgr;Lcn/kuwo/service/DownloadProxy$DownType;)Ljava/util/LinkedList;
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownType;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownloadMgr$3;

    invoke-direct {v2}, Lcn/kuwo/service/downloader/DownloadMgr$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public static a(I)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownloadMgr$2;

    invoke-direct {v2, p0}, Lcn/kuwo/service/downloader/DownloadMgr$2;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(J)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    return-void

    :cond_2
    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(JI)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 0

    sput-object p0, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-static {p0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    invoke-static {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/DownloadMgr;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/downloader/DownloadMgr;->b(I)V

    return-void
.end method

.method public static a(Ljava/util/List;IILcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-static {v0, v2}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/Music;->a(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/downloader/DownloadMgr$7;

    invoke-direct {v1, p3, p0, p1, p2}, Lcn/kuwo/service/downloader/DownloadMgr$7;-><init>(Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;Ljava/util/List;II)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v4, p0, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {p1, v0}, Lcn/kuwo/service/downloader/BitrateInfo;->b(Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadProxy$DownType;)I

    move-result v0

    :goto_1
    iget-wide v4, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5, v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(JI)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v0}, Lcn/kuwo/service/DownloadProxy$Quality;->a(I)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private add(Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownloadMgr$4;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/service/downloader/DownloadMgr$4;-><init>(Lcn/kuwo/service/downloader/DownloadMgr;Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-virtual {v0}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownType;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadMgr;->b(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->h:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-virtual {v0}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x1f4

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadMgr;->b(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/kuwo/service/downloader/DownloadMgr;)Lcn/kuwo/service/downloader/DownloadCore;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->c:Lcn/kuwo/service/downloader/DownloadCore;

    return-object v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->a:Ljava/lang/String;

    const-string v1, "schedule in"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownloadMgr$5;

    invoke-direct {v2, p0}, Lcn/kuwo/service/downloader/DownloadMgr$5;-><init>(Lcn/kuwo/service/downloader/DownloadMgr;)V

    invoke-virtual {v0, v1, p1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;ILcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public static b(Lcn/kuwo/base/bean/Music;)V
    .locals 4

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b()[Lcn/kuwo/service/downloader/DownloadMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/service/downloader/DownloadMgr;->d:[Lcn/kuwo/service/downloader/DownloadMgr;

    return-object v0
.end method

.method private c()I
    .locals 2

    sget-object v0, Lcn/kuwo/service/downloader/DownloadMgr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I
    .locals 4

    new-instance v0, Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/FinalDownloadTask;-><init>()V

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadMgr;->c()I

    move-result v1

	invoke-virtual {p3},Lcn/kuwo/service/DownloadProxy$Quality;->toString()Ljava/lang/String;
	
	move-result-object v2
	
	
	const-string v3, "=========="
	
	invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    iput v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    iput-object p2, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    iput-object p3, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object p4, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    iput-object p1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iput-object p5, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

	invoke-virtual {p3},Lcn/kuwo/service/DownloadProxy$Quality;->toString()Ljava/lang/String;
	
	move-result-object v3
	
	invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
	
    const-string v3, "addTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

	invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadMgr;->add(Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    iget v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I
    .locals 4

    new-instance v0, Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/FinalDownloadTask;-><init>()V

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadMgr;->c()I

    move-result v1

    iput v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownType;->e:Lcn/kuwo/service/DownloadProxy$DownType;

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    iput-object p4, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    iput-object p1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    iput-object p2, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    iput-object p5, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

	invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadMgr;->add(Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    iget v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    return v0
.end method

.method public onTaskFinished(Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->a:Ljava/lang/String;

    const-string v1, "onTaskFinished"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadMgr;->e:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/downloader/DownloadMgr$6;

    invoke-direct {v2, p0}, Lcn/kuwo/service/downloader/DownloadMgr$6;-><init>(Lcn/kuwo/service/downloader/DownloadMgr;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
