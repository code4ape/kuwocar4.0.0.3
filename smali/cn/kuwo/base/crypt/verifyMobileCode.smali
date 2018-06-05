.class public Lcn/kuwo/base/crypt/verifyMobileCode;
.super Ljava/lang/Object;


# static fields
.field static final a:[B


# instance fields
.field private b:[J

.field private c:[J

.field private d:[B

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/kuwo/base/crypt/verifyMobileCode;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->b:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->c:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->d:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->e:[B

    invoke-direct {p0}, Lcn/kuwo/base/crypt/verifyMobileCode;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->c:[J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->c:[J

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->b:[J

    const-wide/32 v2, 0x67452301

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->b:[J

    const-wide v2, 0xefcdab89L

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->b:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcn/kuwo/base/crypt/verifyMobileCode;->b:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method
