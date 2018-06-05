.class public Lcn/kuwo/base/bean/UserInfo;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:I

.field public static r:I

.field public static s:I


# instance fields
.field private A:I

.field private B:[B

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Lcn/kuwo/base/bean/VipInfo;

.field private F:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput v1, Lcn/kuwo/base/bean/UserInfo;->a:I

    sput v3, Lcn/kuwo/base/bean/UserInfo;->b:I

    const/4 v0, 0x3

    sput v0, Lcn/kuwo/base/bean/UserInfo;->c:I

    const/4 v0, 0x4

    sput v0, Lcn/kuwo/base/bean/UserInfo;->d:I

    sput v2, Lcn/kuwo/base/bean/UserInfo;->e:I

    sput v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    sput v3, Lcn/kuwo/base/bean/UserInfo;->g:I

    const-string v0, "0"

    sput-object v0, Lcn/kuwo/base/bean/UserInfo;->h:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcn/kuwo/base/bean/UserInfo;->i:Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcn/kuwo/base/bean/UserInfo;->j:Ljava/lang/String;

    sput v2, Lcn/kuwo/base/bean/UserInfo;->k:I

    sput v1, Lcn/kuwo/base/bean/UserInfo;->l:I

    sput v2, Lcn/kuwo/base/bean/UserInfo;->m:I

    sput v1, Lcn/kuwo/base/bean/UserInfo;->n:I

    const-string v0, "0"

    sput-object v0, Lcn/kuwo/base/bean/UserInfo;->o:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcn/kuwo/base/bean/UserInfo;->p:Ljava/lang/String;

    sput v1, Lcn/kuwo/base/bean/UserInfo;->q:I

    sput v3, Lcn/kuwo/base/bean/UserInfo;->r:I

    sput v2, Lcn/kuwo/base/bean/UserInfo;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->y:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/bean/UserInfo;->z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/UserInfo;->t:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/UserInfo;->t:I

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/VipInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->E:Lcn/kuwo/base/bean/VipInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/UserInfo;->u:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->y:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/UserInfo;->w:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->z:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->C:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->z:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcn/kuwo/base/bean/VipInfo;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->E:Lcn/kuwo/base/bean/VipInfo;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/UserInfo;->A:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getPortrait()[B
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->B:[B

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/UserInfo;->F:Ljava/lang/String;

    return-object v0
.end method

.method public setLevel(I)V
    .locals 3

    const-string v0, ""

    const-string v1, "login_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    iput p1, p0, Lcn/kuwo/base/bean/UserInfo;->A:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->D:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/UserInfo;->x:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/UserInfo;->w:I

    return-void
.end method
