.class public Lcn/kuwo/mod/push/PushHeaderData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:S

.field private b:S

.field private c:S

.field private d:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lcn/kuwo/mod/push/PushHeaderData;->a:S

    return-void
.end method

.method public static a([B)Lcn/kuwo/mod/push/PushHeaderData;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Lcn/kuwo/mod/push/PushHeaderData;

    invoke-direct {v0}, Lcn/kuwo/mod/push/PushHeaderData;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcn/kuwo/mod/push/PushHeaderData;->c()S

    move-result v2

    invoke-direct {v1, p0, v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-array v2, v5, [B

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v2}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v3

    iput-short v3, v0, Lcn/kuwo/mod/push/PushHeaderData;->a:S

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v2}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v3

    iput-short v3, v0, Lcn/kuwo/mod/push/PushHeaderData;->b:S

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v2}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v3

    iput-short v3, v0, Lcn/kuwo/mod/push/PushHeaderData;->c:S

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-static {v2}, Lcn/kuwo/mod/push/ByteUtil;->a([B)S

    move-result v2

    iput-short v2, v0, Lcn/kuwo/mod/push/PushHeaderData;->d:S

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v0
.end method

.method public static c()S
    .locals 1

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lcn/kuwo/mod/push/PushHeaderData;->c:S

    return v0
.end method

.method public a(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeaderData;->a:S

    return-void
.end method

.method public b()S
    .locals 1

    iget-short v0, p0, Lcn/kuwo/mod/push/PushHeaderData;->d:S

    return v0
.end method

.method public b(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeaderData;->b:S

    return-void
.end method

.method public c(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeaderData;->c:S

    return-void
.end method

.method public d(S)V
    .locals 0

    iput-short p1, p0, Lcn/kuwo/mod/push/PushHeaderData;->d:S

    return-void
.end method

.method public d()[B
    .locals 5

    iget-short v0, p0, Lcn/kuwo/mod/push/PushHeaderData;->a:S

    invoke-static {v0}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v0

    iget-short v1, p0, Lcn/kuwo/mod/push/PushHeaderData;->b:S

    invoke-static {v1}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v1

    iget-short v2, p0, Lcn/kuwo/mod/push/PushHeaderData;->c:S

    invoke-static {v2}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v2

    iget-short v3, p0, Lcn/kuwo/mod/push/PushHeaderData;->d:S

    invoke-static {v3}, Lcn/kuwo/mod/push/ByteUtil;->a(S)[B

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
