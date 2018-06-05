.class public final Lcn/kuwo/mod/list/RecentPlayListMgr;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IListObserver;


# static fields
.field private static a:I

.field private static b:Lcn/kuwo/mod/list/RecentPlayListMgr;


# instance fields
.field private c:Z

.field private d:Lcn/kuwo/core/observers/ext/PlayControlObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcn/kuwo/mod/list/RecentPlayListMgr;->a:I

    new-instance v0, Lcn/kuwo/mod/list/RecentPlayListMgr;

    invoke-direct {v0}, Lcn/kuwo/mod/list/RecentPlayListMgr;-><init>()V

    sput-object v0, Lcn/kuwo/mod/list/RecentPlayListMgr;->b:Lcn/kuwo/mod/list/RecentPlayListMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr;->c:Z

    new-instance v0, Lcn/kuwo/mod/list/RecentPlayListMgr$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/list/RecentPlayListMgr$1;-><init>(Lcn/kuwo/mod/list/RecentPlayListMgr;)V

    iput-object v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr;->d:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/list/RecentPlayListMgr;->d:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public static a()Lcn/kuwo/mod/list/RecentPlayListMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/list/RecentPlayListMgr;->b:Lcn/kuwo/mod/list/RecentPlayListMgr;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/RecentPlayListMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr;->c:Z

    return v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/RecentPlayListMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/list/RecentPlayListMgr;->c:Z

    return p1
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcn/kuwo/mod/list/RecentPlayListMgr;->a:I

    return v0
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

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IListObserver_loadComplete]"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr;->c:Z

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
