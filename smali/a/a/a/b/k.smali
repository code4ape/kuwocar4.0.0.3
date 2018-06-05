.class public La/a/a/b/k;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, La/a/a/b/k;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(La/a/a/b/h;B)V
    .locals 1

    sget v0, La/a/a/b/k;->a:I

    invoke-static {p0, p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;BI)V

    return-void
.end method

.method public static a(La/a/a/b/h;BI)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, La/a/a/j;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, La/a/a/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, La/a/a/b/h;->p()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, La/a/a/b/h;->q()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, La/a/a/b/h;->r()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, La/a/a/b/h;->s()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, La/a/a/b/h;->t()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, La/a/a/b/h;->u()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, La/a/a/b/h;->w()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, La/a/a/b/h;->f()La/a/a/b/m;

    :goto_1
    invoke-virtual {p0}, La/a/a/b/h;->h()La/a/a/b/c;

    move-result-object v0

    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p0}, La/a/a/b/h;->g()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, La/a/a/b/c;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, La/a/a/b/k;->a(La/a/a/b/h;BI)V

    invoke-virtual {p0}, La/a/a/b/h;->i()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, La/a/a/b/h;->j()La/a/a/b/e;

    move-result-object v1

    :goto_2
    iget v2, v1, La/a/a/b/e;->c:I

    if-ge v0, v2, :cond_2

    iget-byte v2, v1, La/a/a/b/e;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/a/b/k;->a(La/a/a/b/h;BI)V

    iget-byte v2, v1, La/a/a/b/e;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/a/b/k;->a(La/a/a/b/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, La/a/a/b/h;->k()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, La/a/a/b/h;->n()La/a/a/b/l;

    move-result-object v1

    :goto_3
    iget v2, v1, La/a/a/b/l;->b:I

    if-ge v0, v2, :cond_3

    iget-byte v2, v1, La/a/a/b/l;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/a/b/k;->a(La/a/a/b/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, La/a/a/b/h;->o()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, La/a/a/b/h;->l()La/a/a/b/d;

    move-result-object v1

    :goto_4
    iget v2, v1, La/a/a/b/d;->b:I

    if-ge v0, v2, :cond_4

    iget-byte v2, v1, La/a/a/b/d;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, La/a/a/b/k;->a(La/a/a/b/h;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, La/a/a/b/h;->m()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
