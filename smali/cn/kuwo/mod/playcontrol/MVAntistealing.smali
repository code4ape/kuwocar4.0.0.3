.class public Lcn/kuwo/mod/playcontrol/MVAntistealing;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcn/kuwo/mod/playcontrol/MVAntistealing;


# instance fields
.field private a:Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/playcontrol/MVAntistealing;

    invoke-direct {v0}, Lcn/kuwo/mod/playcontrol/MVAntistealing;-><init>()V

    sput-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/playcontrol/MVAntistealing;)Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;

    return-object v0
.end method

.method public static a()Lcn/kuwo/mod/playcontrol/MVAntistealing;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/MVAntistealing;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/playcontrol/MVAntistealing;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;-><init>(Lcn/kuwo/mod/playcontrol/MVAntistealing;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;J)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;

    invoke-direct {v1, p0, p3, p4, p2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$1;-><init>(Lcn/kuwo/mod/playcontrol/MVAntistealing;JLcn/kuwo/mod/playcontrol/MVAntistealing$Quality;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
