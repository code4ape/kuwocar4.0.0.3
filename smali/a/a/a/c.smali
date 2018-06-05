.class public La/a/a/c;
.super La/a/a/j;


# static fields
.field private static final b:La/a/a/b/m;

.field private static final c:La/a/a/b/c;

.field private static final d:La/a/a/b/c;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, La/a/a/b/m;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, La/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/c;->b:La/a/a/b/m;

    new-instance v0, La/a/a/b/c;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/a/c;->c:La/a/a/b/c;

    new-instance v0, La/a/a/b/c;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/a/c;->d:La/a/a/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/c;->a:I

    return-void
.end method
