.class public final Lcn/kuwo/base/crypt/KuwoDES;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:I

.field private static final c:[J

.field private static final d:[I

.field private static final e:[I

.field private static final f:[[C

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[J

.field private static m:J

.field private static n:J

.field private static o:J

.field private static p:[I

.field private static q:[B

.field private static r:I

.field private static s:I

.field private static t:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x40

    const-string v0, "ylzsxkwm"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->a:[B

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->a:[B

    array-length v0, v0

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->b:I

    new-array v0, v3, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->c:[J

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->d:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->e:[I

    new-array v0, v6, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    new-array v1, v3, [C

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [C

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [C

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->f:[[C

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->g:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->h:[I

    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->i:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->j:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->k:[I

    new-array v0, v5, [J

    fill-array-data v0, :array_10

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->l:[J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    new-array v0, v4, [I

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    new-array v0, v6, [B

    sput-object v0, Lcn/kuwo/base/crypt/KuwoDES;->q:[B

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
        0x40000000000L
        0x80000000000L
        0x100000000000L
        0x200000000000L
        0x400000000000L
        0x800000000000L
        0x1000000000000L
        0x2000000000000L
        0x4000000000000L
        0x8000000000000L
        0x10000000000000L
        0x20000000000000L
        0x40000000000000L
        0x80000000000000L
        0x100000000000000L
        0x200000000000000L
        0x400000000000000L
        0x800000000000000L
        0x1000000000000000L
        0x2000000000000000L
        0x4000000000000000L    # 2.0
        -0x8000000000000000L
    .end array-data

    :array_1
    .array-data 4
        0x39
        0x31
        0x29
        0x21
        0x19
        0x11
        0x9
        0x1
        0x3b
        0x33
        0x2b
        0x23
        0x1b
        0x13
        0xb
        0x3
        0x3d
        0x35
        0x2d
        0x25
        0x1d
        0x15
        0xd
        0x5
        0x3f
        0x37
        0x2f
        0x27
        0x1f
        0x17
        0xf
        0x7
        0x38
        0x30
        0x28
        0x20
        0x18
        0x10
        0x8
        0x0
        0x3a
        0x32
        0x2a
        0x22
        0x1a
        0x12
        0xa
        0x2
        0x3c
        0x34
        0x2c
        0x24
        0x1c
        0x14
        0xc
        0x4
        0x3e
        0x36
        0x2e
        0x26
        0x1e
        0x16
        0xe
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0x0
        0x1
        0x2
        0x3
        0x4
        -0x1
        -0x1
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        -0x1
        -0x1
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        -0x1
        -0x1
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        -0x1
        -0x1
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        -0x1
        -0x1
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        -0x1
        -0x1
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        -0x1
        -0x1
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x1e
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 2
        0xes
        0x4s
        0x3s
        0xfs
        0x2s
        0xds
        0x5s
        0x3s
        0xds
        0xes
        0x6s
        0x9s
        0xbs
        0x2s
        0x0s
        0x5s
        0x4s
        0x1s
        0xas
        0xcs
        0xfs
        0x6s
        0x9s
        0xas
        0x1s
        0x8s
        0xcs
        0x7s
        0x8s
        0xbs
        0x7s
        0x0s
        0x0s
        0xfs
        0xas
        0x5s
        0xes
        0x4s
        0x9s
        0xas
        0x7s
        0x8s
        0xcs
        0x3s
        0xds
        0x1s
        0x3s
        0x6s
        0xfs
        0xcs
        0x6s
        0xbs
        0x2s
        0x9s
        0x5s
        0x0s
        0x4s
        0x2s
        0xbs
        0xes
        0x1s
        0x7s
        0x8s
        0xds
    .end array-data

    :array_4
    .array-data 2
        0xfs
        0x0s
        0x9s
        0x5s
        0x6s
        0xas
        0xcs
        0x9s
        0x8s
        0x7s
        0x2s
        0xcs
        0x3s
        0xds
        0x5s
        0x2s
        0x1s
        0xes
        0x7s
        0x8s
        0xbs
        0x4s
        0x0s
        0x3s
        0xes
        0xbs
        0xds
        0x6s
        0x4s
        0x1s
        0xas
        0xfs
        0x3s
        0xds
        0xcs
        0xbs
        0xfs
        0x3s
        0x6s
        0x0s
        0x4s
        0xas
        0x1s
        0x7s
        0x8s
        0x4s
        0xbs
        0xes
        0xds
        0x8s
        0x0s
        0x6s
        0x2s
        0xfs
        0x9s
        0x5s
        0x7s
        0x1s
        0xas
        0xcs
        0xes
        0x2s
        0x5s
        0x9s
    .end array-data

    :array_5
    .array-data 2
        0xas
        0xds
        0x1s
        0xbs
        0x6s
        0x8s
        0xbs
        0x5s
        0x9s
        0x4s
        0xcs
        0x2s
        0xfs
        0x3s
        0x2s
        0xes
        0x0s
        0x6s
        0xds
        0x1s
        0x3s
        0xfs
        0x4s
        0xas
        0xes
        0x9s
        0x7s
        0xcs
        0x5s
        0x0s
        0x8s
        0x7s
        0xds
        0x1s
        0x2s
        0x4s
        0x3s
        0x6s
        0xcs
        0xbs
        0x0s
        0xds
        0x5s
        0xes
        0x6s
        0x8s
        0xfs
        0x2s
        0x7s
        0xas
        0x8s
        0xfs
        0x4s
        0x9s
        0xbs
        0x5s
        0x9s
        0x0s
        0xes
        0x3s
        0xas
        0x7s
        0x1s
        0xcs
    .end array-data

    :array_6
    .array-data 2
        0x7s
        0xas
        0x1s
        0xfs
        0x0s
        0xcs
        0xbs
        0x5s
        0xes
        0x9s
        0x8s
        0x3s
        0x9s
        0x7s
        0x4s
        0x8s
        0xds
        0x6s
        0x2s
        0x1s
        0x6s
        0xbs
        0xcs
        0x2s
        0x3s
        0x0s
        0x5s
        0xes
        0xas
        0xds
        0xfs
        0x4s
        0xds
        0x3s
        0x4s
        0x9s
        0x6s
        0xas
        0x1s
        0xcs
        0xbs
        0x0s
        0x2s
        0x5s
        0x0s
        0xds
        0xes
        0x2s
        0x8s
        0xfs
        0x7s
        0x4s
        0xfs
        0x1s
        0xas
        0x7s
        0x5s
        0x6s
        0xcs
        0xbs
        0x3s
        0x8s
        0x9s
        0xes
    .end array-data

    :array_7
    .array-data 2
        0x2s
        0x4s
        0x8s
        0xfs
        0x7s
        0xas
        0xds
        0x6s
        0x4s
        0x1s
        0x3s
        0xcs
        0xbs
        0x7s
        0xes
        0x0s
        0xcs
        0x2s
        0x5s
        0x9s
        0xas
        0xds
        0x0s
        0x3s
        0x1s
        0xbs
        0xfs
        0x5s
        0x6s
        0x8s
        0x9s
        0xes
        0xes
        0xbs
        0x5s
        0x6s
        0x4s
        0x1s
        0x3s
        0xas
        0x2s
        0xcs
        0xfs
        0x0s
        0xds
        0x2s
        0x8s
        0x5s
        0xbs
        0x8s
        0x0s
        0xfs
        0x7s
        0xes
        0x9s
        0x4s
        0xcs
        0x7s
        0xas
        0x9s
        0x1s
        0xds
        0x6s
        0x3s
    .end array-data

    :array_8
    .array-data 2
        0xcs
        0x9s
        0x0s
        0x7s
        0x9s
        0x2s
        0xes
        0x1s
        0xas
        0xfs
        0x3s
        0x4s
        0x6s
        0xcs
        0x5s
        0xbs
        0x1s
        0xes
        0xds
        0x0s
        0x2s
        0x8s
        0x7s
        0xds
        0xfs
        0x5s
        0x4s
        0xas
        0x8s
        0x3s
        0xbs
        0x6s
        0xas
        0x4s
        0x6s
        0xbs
        0x7s
        0x9s
        0x0s
        0x6s
        0x4s
        0x2s
        0xds
        0x1s
        0x9s
        0xfs
        0x3s
        0x8s
        0xfs
        0x3s
        0x1s
        0xes
        0xcs
        0x5s
        0xbs
        0x0s
        0x2s
        0xcs
        0xes
        0x7s
        0x5s
        0xas
        0x8s
        0xds
    .end array-data

    :array_9
    .array-data 2
        0x4s
        0x1s
        0x3s
        0xas
        0xfs
        0xcs
        0x5s
        0x0s
        0x2s
        0xbs
        0x9s
        0x6s
        0x8s
        0x7s
        0x6s
        0x9s
        0xbs
        0x4s
        0xcs
        0xfs
        0x0s
        0x3s
        0xas
        0x5s
        0xes
        0xds
        0x7s
        0x8s
        0xds
        0xes
        0x1s
        0x2s
        0xds
        0x6s
        0xes
        0x9s
        0x4s
        0x1s
        0x2s
        0xes
        0xbs
        0xds
        0x5s
        0x0s
        0x1s
        0xas
        0x8s
        0x3s
        0x0s
        0xbs
        0x3s
        0x5s
        0x9s
        0x4s
        0xfs
        0x2s
        0x7s
        0x8s
        0xcs
        0xfs
        0xas
        0x7s
        0x6s
        0xcs
    .end array-data

    :array_a
    .array-data 2
        0xds
        0x7s
        0xas
        0x0s
        0x6s
        0x9s
        0x5s
        0xfs
        0x8s
        0x4s
        0x3s
        0xas
        0xbs
        0xes
        0xcs
        0x5s
        0x2s
        0xbs
        0x9s
        0x6s
        0xfs
        0xcs
        0x0s
        0x3s
        0x4s
        0x1s
        0xes
        0xds
        0x1s
        0x2s
        0x7s
        0x8s
        0x1s
        0x2s
        0xcs
        0xfs
        0xas
        0x4s
        0x0s
        0x3s
        0xds
        0xes
        0x6s
        0x9s
        0x7s
        0x8s
        0x9s
        0x6s
        0xfs
        0x1s
        0x5s
        0xcs
        0x3s
        0xas
        0xes
        0x5s
        0x8s
        0x7s
        0xbs
        0x0s
        0x4s
        0xds
        0x2s
        0xbs
    .end array-data

    :array_b
    .array-data 4
        0xf
        0x6
        0x13
        0x14
        0x1c
        0xb
        0x1b
        0x10
        0x0
        0xe
        0x16
        0x19
        0x4
        0x11
        0x1e
        0x9
        0x1
        0x7
        0x17
        0xd
        0x1f
        0x1a
        0x2
        0x8
        0x12
        0xc
        0x1d
        0x5
        0x15
        0xa
        0x3
        0x18
    .end array-data

    :array_c
    .array-data 4
        0x27
        0x7
        0x2f
        0xf
        0x37
        0x17
        0x3f
        0x1f
        0x26
        0x6
        0x2e
        0xe
        0x36
        0x16
        0x3e
        0x1e
        0x25
        0x5
        0x2d
        0xd
        0x35
        0x15
        0x3d
        0x1d
        0x24
        0x4
        0x2c
        0xc
        0x34
        0x14
        0x3c
        0x1c
        0x23
        0x3
        0x2b
        0xb
        0x33
        0x13
        0x3b
        0x1b
        0x22
        0x2
        0x2a
        0xa
        0x32
        0x12
        0x3a
        0x1a
        0x21
        0x1
        0x29
        0x9
        0x31
        0x11
        0x39
        0x19
        0x20
        0x0
        0x28
        0x8
        0x30
        0x10
        0x38
        0x18
    .end array-data

    :array_d
    .array-data 4
        0x38
        0x30
        0x28
        0x20
        0x18
        0x10
        0x8
        0x0
        0x39
        0x31
        0x29
        0x21
        0x19
        0x11
        0x9
        0x1
        0x3a
        0x32
        0x2a
        0x22
        0x1a
        0x12
        0xa
        0x2
        0x3b
        0x33
        0x2b
        0x23
        0x3e
        0x36
        0x2e
        0x26
        0x1e
        0x16
        0xe
        0x6
        0x3d
        0x35
        0x2d
        0x25
        0x1d
        0x15
        0xd
        0x5
        0x3c
        0x34
        0x2c
        0x24
        0x1c
        0x14
        0xc
        0x4
        0x1b
        0x13
        0xb
        0x3
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x10
        0xa
        0x17
        0x0
        0x4
        -0x1
        -0x1
        0x2
        0x1b
        0xe
        0x5
        0x14
        0x9
        -0x1
        -0x1
        0x16
        0x12
        0xb
        0x3
        0x19
        0x7
        -0x1
        -0x1
        0xf
        0x6
        0x1a
        0x13
        0xc
        0x1
        -0x1
        -0x1
        0x28
        0x33
        0x1e
        0x24
        0x2e
        0x36
        -0x1
        -0x1
        0x1d
        0x27
        0x32
        0x2c
        0x20
        0x2f
        -0x1
        -0x1
        0x2b
        0x30
        0x26
        0x37
        0x21
        0x34
        -0x1
        -0x1
        0x2d
        0x29
        0x31
        0x23
        0x1c
        0x1f
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_10
    .array-data 8
        0x0
        0x100001
        0x300003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([IIJ)J
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    :goto_0
    if-ge v4, p1, :cond_1

    aget v5, p0, v4

    if-ltz v5, :cond_0

    sget-object v5, Lcn/kuwo/base/crypt/KuwoDES;->c:[J

    aget v6, p0, v4

    aget-wide v6, v5, v6

    and-long/2addr v6, p2

    cmp-long v5, v6, v2

    if-eqz v5, :cond_0

    sget-object v5, Lcn/kuwo/base/crypt/KuwoDES;->c:[J

    aget-wide v6, v5, v4

    or-long/2addr v0, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static a([JJ)J
    .locals 9

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->d:[I

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Lcn/kuwo/base/crypt/KuwoDES;->a([IIJ)J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v1, 0x0

    sget-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v0, v1

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v1, 0x1

    sget-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v0, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x10

    if-ge v1, v0, :cond_2

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->e:[I

    const/16 v2, 0x40

    sget-wide v4, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    invoke-static {v0, v2, v4, v5}, Lcn/kuwo/base/crypt/KuwoDES;->a([IIJ)J

    move-result-wide v2

    sput-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    sget-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    sput-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    sget-object v2, Lcn/kuwo/base/crypt/KuwoDES;->q:[B

    const-wide/16 v4, 0xff

    sget-wide v6, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    mul-int/lit8 v3, v0, 0x8

    shr-long/2addr v6, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->r:I

    const/4 v0, 0x7

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->t:I

    :goto_2
    sget v0, Lcn/kuwo/base/crypt/KuwoDES;->t:I

    if-ltz v0, :cond_1

    sget v0, Lcn/kuwo/base/crypt/KuwoDES;->r:I

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->r:I

    sget v0, Lcn/kuwo/base/crypt/KuwoDES;->r:I

    sget-object v2, Lcn/kuwo/base/crypt/KuwoDES;->f:[[C

    sget v3, Lcn/kuwo/base/crypt/KuwoDES;->t:I

    aget-object v2, v2, v3

    sget-object v3, Lcn/kuwo/base/crypt/KuwoDES;->q:[B

    sget v4, Lcn/kuwo/base/crypt/KuwoDES;->t:I

    aget-byte v3, v3, v4

    aget-char v2, v2, v3

    or-int/2addr v0, v2

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->r:I

    sget v0, Lcn/kuwo/base/crypt/KuwoDES;->t:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->t:I

    goto :goto_2

    :cond_1
    sget v0, Lcn/kuwo/base/crypt/KuwoDES;->r:I

    int-to-long v2, v0

    sput-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->g:[I

    const/16 v2, 0x20

    sget-wide v4, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    invoke-static {v0, v2, v4, v5}, Lcn/kuwo/base/crypt/KuwoDES;->a([IIJ)J

    move-result-wide v2

    sput-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->n:J

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v2, 0x0

    sget-object v3, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v0, v2

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v2, 0x1

    sget-wide v4, Lcn/kuwo/base/crypt/KuwoDES;->n:J

    sget-wide v6, Lcn/kuwo/base/crypt/KuwoDES;->o:J

    xor-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, v0, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcn/kuwo/base/crypt/KuwoDES;->s:I

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v1, 0x0

    sget-object v2, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v1, 0x1

    sget v2, Lcn/kuwo/base/crypt/KuwoDES;->s:I

    aput v2, v0, v1

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    sget-object v4, Lcn/kuwo/base/crypt/KuwoDES;->p:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sput-wide v0, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    sget-object v0, Lcn/kuwo/base/crypt/KuwoDES;->h:[I

    const/16 v1, 0x40

    sget-wide v2, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/crypt/KuwoDES;->a([IIJ)J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    sget-wide v0, Lcn/kuwo/base/crypt/KuwoDES;->m:J

    return-wide v0
.end method

.method private static a(J[JI)V
    .locals 10

    const/4 v0, 0x0

    sget-object v1, Lcn/kuwo/base/crypt/KuwoDES;->i:[I

    const/16 v2, 0x38

    invoke-static {v1, v2, p0, p1}, Lcn/kuwo/base/crypt/KuwoDES;->a([IIJ)J

    move-result-wide v2

    move v1, v0

    :goto_0
    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    sget-object v4, Lcn/kuwo/base/crypt/KuwoDES;->l:[J

    sget-object v5, Lcn/kuwo/base/crypt/KuwoDES;->k:[I

    aget v5, v5, v1

    aget-wide v4, v4, v5

    and-long/2addr v4, v2

    sget-object v6, Lcn/kuwo/base/crypt/KuwoDES;->k:[I

    aget v6, v6, v1

    rsub-int/lit8 v6, v6, 0x1c

    shl-long/2addr v4, v6

    sget-object v6, Lcn/kuwo/base/crypt/KuwoDES;->l:[J

    sget-object v7, Lcn/kuwo/base/crypt/KuwoDES;->k:[I

    aget v7, v7, v1

    aget-wide v6, v6, v7

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v2, v6

    sget-object v6, Lcn/kuwo/base/crypt/KuwoDES;->k:[I

    aget v6, v6, v1

    shr-long/2addr v2, v6

    or-long/2addr v2, v4

    sget-object v4, Lcn/kuwo/base/crypt/KuwoDES;->j:[I

    const/16 v5, 0x40

    invoke-static {v4, v5, v2, v3}, Lcn/kuwo/base/crypt/KuwoDES;->a([IIJ)J

    move-result-wide v4

    aput-wide v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    aget-wide v2, p2, v0

    rsub-int/lit8 v1, v0, 0xf

    aget-wide v4, p2, v1

    aput-wide v4, p2, v0

    rsub-int/lit8 v1, v0, 0xf

    aput-wide v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static declared-synchronized a([BI[BI)[B
    .locals 13

    const-class v4, Lcn/kuwo/base/crypt/KuwoDES;

    monitor-enter v4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :try_start_0
    aget-byte v1, p2, v0

    int-to-long v6, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-int/lit8 v5, p1, 0x8

    const/16 v0, 0x10

    new-array v6, v0, [J

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v7, v5, [J

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_3

    const/4 v0, 0x0

    :goto_3
    const/16 v8, 0x8

    if-ge v0, v8, :cond_2

    aget-wide v8, v7, v1

    mul-int/lit8 v10, v1, 0x8

    add-int/2addr v10, v0

    aget-byte v10, p0, v10

    int-to-long v10, v10

    mul-int/lit8 v12, v0, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    aput-wide v8, v7, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v5, 0x1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [J

    const/4 v0, 0x0

    invoke-static {v2, v3, v6, v0}, Lcn/kuwo/base/crypt/KuwoDES;->a(J[JI)V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_4

    aget-wide v2, v7, v0

    invoke-static {v6, v2, v3}, Lcn/kuwo/base/crypt/KuwoDES;->a([JJ)J

    move-result-wide v2

    aput-wide v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    rem-int/lit8 v1, p1, 0x8

    mul-int/lit8 v0, v5, 0x8

    sub-int v0, p1, v0

    new-array v7, v0, [B

    mul-int/lit8 v0, v5, 0x8

    const/4 v2, 0x0

    mul-int/lit8 v3, v5, 0x8

    sub-int v3, p1, v3

    invoke-static {p0, v0, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_5

    aget-byte v9, v7, v0

    int-to-long v10, v9

    mul-int/lit8 v9, v0, 0x8

    shl-long/2addr v10, v9

    or-long/2addr v2, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v6, v2, v3}, Lcn/kuwo/base/crypt/KuwoDES;->a([JJ)J

    move-result-wide v0

    aput-wide v0, v8, v5

    array-length v0, v8

    mul-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    array-length v0, v8

    if-ge v2, v0, :cond_7

    const/4 v0, 0x0

    :goto_7
    const/16 v5, 0x8

    if-ge v0, v5, :cond_6

    const-wide/16 v6, 0xff

    aget-wide v10, v8, v2

    mul-int/lit8 v5, v0, 0x8

    shr-long/2addr v10, v5

    and-long/2addr v6, v10

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_7
    monitor-exit v4

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
