.class public Lcn/kuwo/mod/list/CloudTest;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/ICloudObserver;


# static fields
.field static a:Ljava/lang/String;

.field static b:Lcn/kuwo/mod/list/CloudTest;


# instance fields
.field private c:Lcn/kuwo/mod/list/CloudTest$TestCase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CloudT"

    sput-object v0, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/mod/list/CloudTest;

    invoke-direct {v0}, Lcn/kuwo/mod/list/CloudTest;-><init>()V

    sput-object v0, Lcn/kuwo/mod/list/CloudTest;->b:Lcn/kuwo/mod/list/CloudTest;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/list/CloudTest;->c:Lcn/kuwo/mod/list/CloudTest$TestCase;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->p:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudTest;)Lcn/kuwo/mod/list/CloudTest$TestCase;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest;->c:Lcn/kuwo/mod/list/CloudTest$TestCase;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/list/CloudTest;Lcn/kuwo/mod/list/CloudTest$TestCase;)Lcn/kuwo/mod/list/CloudTest$TestCase;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudTest;->c:Lcn/kuwo/mod/list/CloudTest$TestCase;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest;->c:Lcn/kuwo/mod/list/CloudTest$TestCase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudTest;->c:Lcn/kuwo/mod/list/CloudTest$TestCase;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/CloudTest$TestCase;->c()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/list/CloudTest$1;

    invoke-direct {v1, p0}, Lcn/kuwo/mod/list/CloudTest$1;-><init>(Lcn/kuwo/mod/list/CloudTest;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method
