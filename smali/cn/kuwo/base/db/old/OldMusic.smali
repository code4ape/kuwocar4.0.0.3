.class public Lcn/kuwo/base/db/old/OldMusic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Lcn/kuwo/base/db/old/AudioResourceNode;

.field public q:I

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/base/db/old/OldMusic;->k:I

    const/4 v0, 0x1

    sput v0, Lcn/kuwo/base/db/old/OldMusic;->l:I

    const/4 v0, 0x2

    sput v0, Lcn/kuwo/base/db/old/OldMusic;->m:I

    const/4 v0, 0x3

    sput v0, Lcn/kuwo/base/db/old/OldMusic;->n:I

    const/4 v0, 0x4

    sput v0, Lcn/kuwo/base/db/old/OldMusic;->o:I

    const/4 v0, 0x5

    sput v0, Lcn/kuwo/base/db/old/OldMusic;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/kuwo/base/db/old/OldMusic;->a:I

    iput v0, p0, Lcn/kuwo/base/db/old/OldMusic;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusic;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusic;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusic;->e:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/base/db/old/OldMusic;->f:I

    iput v1, p0, Lcn/kuwo/base/db/old/OldMusic;->g:I

    iput-boolean v1, p0, Lcn/kuwo/base/db/old/OldMusic;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/db/old/OldMusic;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/db/old/OldMusic;->j:Lcn/kuwo/base/db/old/AudioResourceNode;

    sget v0, Lcn/kuwo/base/db/old/OldMusic;->k:I

    iput v0, p0, Lcn/kuwo/base/db/old/OldMusic;->q:I

    iput v1, p0, Lcn/kuwo/base/db/old/OldMusic;->r:I

    return-void
.end method
