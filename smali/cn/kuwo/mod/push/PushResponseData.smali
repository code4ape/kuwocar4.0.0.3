.class public Lcn/kuwo/mod/push/PushResponseData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/push/PushResponseData;->i:[B

    return-void
.end method

.method public static a([B)Lcn/kuwo/mod/push/PushResponseData;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v0, Lcn/kuwo/mod/push/PushResponseData;

    invoke-direct {v0}, Lcn/kuwo/mod/push/PushResponseData;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lcn/kuwo/mod/push/PushHeaderData;->c()S

    move-result v2

    new-array v2, v2, [B

    new-array v3, v7, [B

    new-array v4, v8, [B

    invoke-static {}, Lcn/kuwo/mod/push/PushHeaderData;->c()S

    move-result v5

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v2}, Lcn/kuwo/mod/push/PushHeaderData;->a([B)Lcn/kuwo/mod/push/PushHeaderData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/push/PushResponseData;->a(Lcn/kuwo/mod/push/PushHeaderData;)V

    invoke-virtual {v1, v4, v6, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v4}, Lcn/kuwo/mod/push/ByteUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcn/kuwo/mod/push/PushResponseData;->b:I

    invoke-virtual {v1, v4, v6, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v4}, Lcn/kuwo/mod/push/ByteUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcn/kuwo/mod/push/PushResponseData;->c:I

    invoke-virtual {v1, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v3}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v2

    iput-short v2, v0, Lcn/kuwo/mod/push/PushResponseData;->d:S

    invoke-virtual {v1, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v3}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v2

    iput-short v2, v0, Lcn/kuwo/mod/push/PushResponseData;->e:S

    invoke-virtual {v1, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v3}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v2

    iput-short v2, v0, Lcn/kuwo/mod/push/PushResponseData;->f:S

    invoke-virtual {v1, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v3}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v2

    iput-short v2, v0, Lcn/kuwo/mod/push/PushResponseData;->g:S

    invoke-virtual {v1, v4, v6, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v4}, Lcn/kuwo/mod/push/ByteUtil;->b([B)I

    move-result v2

    iput v2, v0, Lcn/kuwo/mod/push/PushResponseData;->h:I

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    iput-object v2, v0, Lcn/kuwo/mod/push/PushResponseData;->i:[B

    iget-object v2, v0, Lcn/kuwo/mod/push/PushResponseData;->i:[B

    iget-object v3, v0, Lcn/kuwo/mod/push/PushResponseData;->i:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v6, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcn/kuwo/mod/push/PushResponseData;
    .locals 3

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/push/PushHeaderData;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/mod/push/PushResponseData;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushResponseData;->a(Lcn/kuwo/mod/push/PushHeaderData;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    return-object v1
.end method


# virtual methods
.method public a()Lcn/kuwo/mod/push/PushHeaderData;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushResponseData;->a:Lcn/kuwo/mod/push/PushHeaderData;

    return-object v0
.end method

.method public a(Lcn/kuwo/mod/push/PushHeaderData;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushResponseData;->a:Lcn/kuwo/mod/push/PushHeaderData;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcn/kuwo/mod/push/PushResponseData;->a:Lcn/kuwo/mod/push/PushHeaderData;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/push/PushResponseData;->c:I

    return v0
.end method

.method public c()S
    .locals 1

    iget-short v0, p0, Lcn/kuwo/mod/push/PushResponseData;->e:S

    return v0
.end method

.method public d()S
    .locals 1

    iget-short v0, p0, Lcn/kuwo/mod/push/PushResponseData;->f:S

    return v0
.end method

.method public e()S
    .locals 1

    iget-short v0, p0, Lcn/kuwo/mod/push/PushResponseData;->g:S

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/push/PushResponseData;->h:I

    return v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushResponseData;->i:[B

    return-object v0
.end method
