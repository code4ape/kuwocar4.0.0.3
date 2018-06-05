.class public Lcn/kuwo/mod/push/PushHeartData;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcn/kuwo/mod/push/PushHeaderData;

.field private b:I

.field private c:I

.field private d:S

.field private e:S

.field private f:S

.field private g:S

.field private h:I

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->i:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->j:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->k:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->l:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->m:[B

    return-void
.end method

.method public static b()S
    .locals 1

    const/16 v0, 0x6c

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/push/PushHeartData;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/push/PushHeartData;->b:I

    return-void
.end method

.method public a(Lcn/kuwo/mod/push/PushHeaderData;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushHeartData;->a:Lcn/kuwo/mod/push/PushHeaderData;

    return-void
.end method

.method public a(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeartData;->d:S

    return-void
.end method

.method public a([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->i:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->i:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/push/PushHeartData;->c:I

    return-void
.end method

.method public b(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeartData;->e:S

    return-void
.end method

.method public b([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->j:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->j:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/push/PushHeartData;->h:I

    return-void
.end method

.method public c(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeartData;->f:S

    return-void
.end method

.method public c([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->k:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->k:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()[B
    .locals 9

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->a:Lcn/kuwo/mod/push/PushHeaderData;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushHeaderData;->d()[B

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/push/PushHeartData;->b:I

    invoke-static {v1}, Lcn/kuwo/mod/push/ByteUtil;->a(I)[B

    move-result-object v1

    iget v2, p0, Lcn/kuwo/mod/push/PushHeartData;->c:I

    invoke-static {v2}, Lcn/kuwo/mod/push/ByteUtil;->a(I)[B

    move-result-object v2

    iget-short v3, p0, Lcn/kuwo/mod/push/PushHeartData;->d:S

    invoke-static {v3}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v3

    iget-short v4, p0, Lcn/kuwo/mod/push/PushHeartData;->e:S

    invoke-static {v4}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v4

    iget-short v5, p0, Lcn/kuwo/mod/push/PushHeartData;->f:S

    invoke-static {v5}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v5

    iget-short v6, p0, Lcn/kuwo/mod/push/PushHeartData;->g:S

    invoke-static {v6}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v6

    iget v7, p0, Lcn/kuwo/mod/push/PushHeartData;->h:I

    invoke-static {v7}, Lcn/kuwo/mod/push/ByteUtil;->a(I)[B

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->i:[B

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->j:[B

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->k:[B

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->l:[B

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->m:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHeartData;->m:[B

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public d(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeartData;->g:S

    return-void
.end method

.method public d([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->l:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/push/PushHeartData;->l:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
