.class Lcom/umeng/analytics/f/e$d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/c/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/e$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/f/e$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/f/e$c;
    .locals 2

    new-instance v0, Lcom/umeng/analytics/f/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/f/e$c;-><init>(Lcom/umeng/analytics/f/e$1;)V

    return-object v0
.end method

.method public synthetic b()La/a/a/c/a;
    .locals 1

    invoke-virtual {p0}, Lcom/umeng/analytics/f/e$d;->a()Lcom/umeng/analytics/f/e$c;

    move-result-object v0

    return-object v0
.end method
