.class public La/a/a/b/i;
.super La/a/a/j;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/b/i;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, La/a/a/j;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/b/i;->a:I

    return-void
.end method
