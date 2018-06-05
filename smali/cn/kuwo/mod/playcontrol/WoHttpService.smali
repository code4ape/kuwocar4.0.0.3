.class public Lcn/kuwo/mod/playcontrol/WoHttpService;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static volatile c:Z

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:I

.field public static f:Lcn/kuwo/mod/playcontrol/WoHttpService$OnSetProxyListener;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Lorg/apache/http/client/HttpClient;

.field private static k:I

.field private static l:Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;

.field private static m:Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "WoHttpService"

    sput-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->a:Ljava/lang/String;

    sput-boolean v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->b:Z

    const-string v0, "http://localhost"

    sput-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->g:Ljava/lang/String;

    const/16 v0, 0x2f5b

    sput v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->h:I

    sput-object v2, Lcn/kuwo/mod/playcontrol/WoHttpService;->i:Ljava/lang/String;

    sput-boolean v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->c:Z

    const-string v0, ""

    sput-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->d:Ljava/lang/String;

    sput v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->e:I

    sput v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    sput-object v2, Lcn/kuwo/mod/playcontrol/WoHttpService;->l:Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;

    sput-object v2, Lcn/kuwo/mod/playcontrol/WoHttpService;->m:Lcn/kuwo/mod/playcontrol/WoHttpService$MonitorThread;

    sput-object v2, Lcn/kuwo/mod/playcontrol/WoHttpService;->f:Lcn/kuwo/mod/playcontrol/WoHttpService$OnSetProxyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 0

    sput-object p0, Lcn/kuwo/mod/playcontrol/WoHttpService;->j:Lorg/apache/http/client/HttpClient;

    return-object p0
.end method

.method static synthetic b()Lorg/apache/http/client/HttpClient;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->j:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic c()I
    .locals 2

    sget v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->k:I

    return v0
.end method

.method static synthetic f()Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->l:Lcn/kuwo/mod/playcontrol/WoHttpService$RequestListenerThread;

    return-object v0
.end method
