.class Lcom/umeng/a/l$1;
.super Lcom/umeng/analytics/a/b/a;


# instance fields
.field final synthetic a:Lcom/umeng/a/l;


# direct methods
.method constructor <init>(Lcom/umeng/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/a/l$1;->a:Lcom/umeng/a/l;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
