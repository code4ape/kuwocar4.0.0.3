.class public La/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/a/a/b/h;

.field private final b:La/a/a/d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, La/a/a/b/b$a;

    invoke-direct {v0}, La/a/a/b/b$a;-><init>()V

    invoke-direct {p0, v0}, La/a/a/g;-><init>(La/a/a/b/j;)V

    return-void
.end method

.method public constructor <init>(La/a/a/b/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/d/b;

    invoke-direct {v0}, La/a/a/d/b;-><init>()V

    iput-object v0, p0, La/a/a/g;->b:La/a/a/d/b;

    iget-object v0, p0, La/a/a/g;->b:La/a/a/d/b;

    invoke-interface {p1, v0}, La/a/a/b/j;->a(La/a/a/d/c;)La/a/a/b/h;

    move-result-object v0

    iput-object v0, p0, La/a/a/g;->a:La/a/a/b/h;

    return-void
.end method


# virtual methods
.method public a(La/a/a/d;[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, La/a/a/g;->b:La/a/a/d/b;

    invoke-virtual {v0, p2}, La/a/a/d/b;->a([B)V

    iget-object v0, p0, La/a/a/g;->a:La/a/a/b/h;

    invoke-interface {p1, v0}, La/a/a/d;->a(La/a/a/b/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, La/a/a/g;->b:La/a/a/d/b;

    invoke-virtual {v0}, La/a/a/d/b;->a()V

    iget-object v0, p0, La/a/a/g;->a:La/a/a/b/h;

    invoke-virtual {v0}, La/a/a/b/h;->x()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a/a/g;->b:La/a/a/d/b;

    invoke-virtual {v1}, La/a/a/d/b;->a()V

    iget-object v1, p0, La/a/a/g;->a:La/a/a/b/h;

    invoke-virtual {v1}, La/a/a/b/h;->x()V

    throw v0
.end method
