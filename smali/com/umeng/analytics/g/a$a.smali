.class Lcom/umeng/analytics/g/a$a;
.super La/a/a/c/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/g/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/g/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(La/a/a/b/h;La/a/a/d;)V
    .locals 0

    check-cast p2, Lcom/umeng/analytics/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/g/a$a;->b(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V
    .locals 5

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    invoke-virtual {p1}, La/a/a/b/h;->f()La/a/a/b/m;

    :goto_0
    invoke-virtual {p1}, La/a/a/b/h;->h()La/a/a/b/c;

    move-result-object v0

    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, La/a/a/b/h;->g()V

    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->n()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-short v1, v0, La/a/a/b/c;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    :goto_1
    invoke-virtual {p1}, La/a/a/b/h;->i()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, La/a/a/b/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, La/a/a/b/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, La/a/a/b/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, La/a/a/b/h;->s()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->d:I

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->d(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, La/a/a/b/h;->s()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->e:I

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->e(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, La/a/a/b/h;->s()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->f:I

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->f(Z)V

    goto :goto_1

    :cond_6
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, La/a/a/b/h;->w()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->g(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, La/a/a/b/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->h(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, La/a/a/b/h;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->i(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-ne v1, v4, :cond_a

    invoke-virtual {p1}, La/a/a/b/h;->s()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->j:I

    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->j(Z)V

    goto/16 :goto_1

    :cond_a
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->r()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->u()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->I()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public synthetic b(La/a/a/b/h;La/a/a/d;)V
    .locals 0

    check-cast p2, Lcom/umeng/analytics/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/g/a$a;->a(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V
    .locals 1

    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->I()V

    invoke-static {}, Lcom/umeng/analytics/g/a;->J()La/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/m;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/analytics/g/a;->K()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/umeng/analytics/g/a;->L()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/umeng/analytics/g/a;->M()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_2
    invoke-static {}, Lcom/umeng/analytics/g/a;->N()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget v0, p2, Lcom/umeng/analytics/g/a;->d:I

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(I)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    invoke-static {}, Lcom/umeng/analytics/g/a;->O()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget v0, p2, Lcom/umeng/analytics/g/a;->e:I

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(I)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    invoke-static {}, Lcom/umeng/analytics/g/a;->P()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget v0, p2, Lcom/umeng/analytics/g/a;->f:I

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(I)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/umeng/analytics/g/a;->Q()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_3
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/umeng/analytics/g/a;->R()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_4
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/umeng/analytics/g/a;->S()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget-object v0, p2, Lcom/umeng/analytics/g/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/umeng/analytics/g/a;->T()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    iget v0, p2, Lcom/umeng/analytics/g/a;->j:I

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(I)V

    invoke-virtual {p1}, La/a/a/b/h;->b()V

    :cond_6
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    invoke-virtual {p1}, La/a/a/b/h;->a()V

    return-void
.end method
