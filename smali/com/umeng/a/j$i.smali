.class public Lcom/umeng/a/j$i;
.super Lcom/umeng/a/j$h;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/umeng/a/j$h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/j$i;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/umeng/a/j$i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/umeng/a/j$i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/e;->i(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
