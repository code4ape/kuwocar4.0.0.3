.class public abstract enum Lcn/kuwo/base/bean/ListType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic A:[Lcn/kuwo/base/bean/ListType;

.field public static final enum a:Lcn/kuwo/base/bean/ListType;

.field public static final enum b:Lcn/kuwo/base/bean/ListType;

.field public static final enum c:Lcn/kuwo/base/bean/ListType;

.field public static final enum d:Lcn/kuwo/base/bean/ListType;

.field public static final enum e:Lcn/kuwo/base/bean/ListType;

.field public static final enum f:Lcn/kuwo/base/bean/ListType;

.field public static final enum g:Lcn/kuwo/base/bean/ListType;

.field public static final enum h:Lcn/kuwo/base/bean/ListType;

.field public static final enum i:Lcn/kuwo/base/bean/ListType;

.field public static final enum j:Lcn/kuwo/base/bean/ListType;

.field public static final enum k:Lcn/kuwo/base/bean/ListType;

.field public static final enum l:Lcn/kuwo/base/bean/ListType;

.field public static final enum m:Lcn/kuwo/base/bean/ListType;

.field public static final enum n:Lcn/kuwo/base/bean/ListType;

.field public static final enum o:Lcn/kuwo/base/bean/ListType;

.field public static final enum p:Lcn/kuwo/base/bean/ListType;

.field public static final enum q:Lcn/kuwo/base/bean/ListType;

.field public static final enum r:Lcn/kuwo/base/bean/ListType;

.field public static final enum s:Lcn/kuwo/base/bean/ListType;

.field static t:I

.field public static final u:Ljava/util/ArrayList;

.field public static final v:Ljava/util/ArrayList;

.field public static final w:Ljava/util/ArrayList;

.field public static final x:Ljava/util/ArrayList;

.field public static final y:Ljava/util/ArrayList;

.field public static final z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcn/kuwo/base/bean/ListType$1;

    const-string v1, "LIST_ERROR_TYPE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/base/bean/ListType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->a:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$2;

    const-string v1, "LIST_LOCAL_ALL"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/base/bean/ListType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$3;

    const-string v1, "LIST_LOCAL_ARTIST"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/base/bean/ListType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$4;

    const-string v1, "LIST_LOCAL_DISK"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/base/bean/ListType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$5;

    const-string v1, "LIST_LOCAL_PATH"

    invoke-direct {v0, v1, v8}, Lcn/kuwo/base/bean/ListType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$6;

    const-string v1, "LIST_DOWNLOAD_UNFINISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$7;

    const-string v1, "LIST_DOWNLOAD_FINISHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$8;

    const-string v1, "LIST_MY_FAVORITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$9;

    const-string v1, "LIST_DEFAULT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$10;

    const-string v1, "LIST_PC_DEFAULT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$11;

    const-string v1, "LIST_RECENTLY_PLAY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$12;

    const-string v1, "LIST_USER_CREATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$13;

    const-string v1, "LIST_TEMPORARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$14;

    const-string v1, "LIST_RADIO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$15;

    const-string v1, "LIST_ORDER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->o:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$16;

    const-string v1, "LIST_DELETE_CACHE1"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$17;

    const-string v1, "LIST_DELETE_CACHE2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$18;

    const-string v1, "LIST_TEMP"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->r:Lcn/kuwo/base/bean/ListType;

    new-instance v0, Lcn/kuwo/base/bean/ListType$19;

    const-string v1, "LIST_DOWNLOAD_MV"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/bean/ListType$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    const/16 v0, 0x13

    new-array v0, v0, [Lcn/kuwo/base/bean/ListType;

    sget-object v1, Lcn/kuwo/base/bean/ListType;->a:Lcn/kuwo/base/bean/ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    aput-object v1, v0, v7

    sget-object v1, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcn/kuwo/base/bean/ListType;->o:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcn/kuwo/base/bean/ListType;->r:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/base/bean/ListType;->A:[Lcn/kuwo/base/bean/ListType;

    const/16 v0, 0x4e20

    sput v0, Lcn/kuwo/base/bean/ListType;->t:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    new-array v1, v1, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    sget-object v2, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v7

    sget-object v2, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    sget-object v2, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v7

    sget-object v2, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    new-array v1, v1, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    sget-object v2, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v7

    sget-object v2, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->w:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    new-array v1, v1, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    sget-object v2, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v7

    sget-object v2, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    sget-object v2, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->f:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v7

    sget-object v2, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Lcn/kuwo/base/bean/ListType;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v4

    sget-object v2, Lcn/kuwo/base/bean/ListType;->m:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v5

    sget-object v2, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v6

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcn/kuwo/base/bean/ListType;->z:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/kuwo/base/bean/ListType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/bean/ListType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/ListType;
    .locals 1

    const-class v0, Lcn/kuwo/base/bean/ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/base/bean/ListType;
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->A:[Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0}, [Lcn/kuwo/base/bean/ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/base/bean/ListType;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method
