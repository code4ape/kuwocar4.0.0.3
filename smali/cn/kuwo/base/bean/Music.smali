.class public Lcn/kuwo/base/bean/Music;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static A:Ljava/util/Comparator;

.field public static B:Ljava/util/Comparator;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field public static z:Ljava/util/Comparator;


# instance fields
.field private C:J

.field private D:Z

.field private E:Z

.field private F:Ljava/util/Collection;

.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lcn/kuwo/base/util/KwDate;

.field public q:Lcn/kuwo/base/bean/Music$LocalFileState;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:J

.field public u:J

.field public v:Lcn/kuwo/service/DownloadProxy$Quality;

.field public w:Z

.field public x:Z

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/bean/Music$1;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music$1;-><init>()V

    sput-object v0, Lcn/kuwo/base/bean/Music;->z:Ljava/util/Comparator;

    new-instance v0, Lcn/kuwo/base/bean/Music$2;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music$2;-><init>()V

    sput-object v0, Lcn/kuwo/base/bean/Music;->A:Ljava/util/Comparator;

    new-instance v0, Lcn/kuwo/base/bean/Music$3;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music$3;-><init>()V

    sput-object v0, Lcn/kuwo/base/bean/Music;->B:Ljava/util/Comparator;

    const-string v0, "@"

    sput-object v0, Lcn/kuwo/base/bean/Music;->G:Ljava/lang/String;

    const-string v0, "KW2014COOLSTAR1204"

    sput-object v0, Lcn/kuwo/base/bean/Music;->H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->o:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    sget-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->a:Lcn/kuwo/base/bean/Music$LocalFileState;

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/bean/Music;->x:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;
    .locals 6

    const/4 v0, 0x0

    const/16 v4, 0x14

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "MusicStr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-encrypt:->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcn/kuwo/base/bean/Music;->H:Ljava/lang/String;

    invoke-static {p0, v1}, Lcn/kuwo/base/crypt/SecurityCoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/Music;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    if-le v1, v4, :cond_0

    new-instance v1, Lcn/kuwo/base/bean/Music;

    invoke-direct {v1}, Lcn/kuwo/base/bean/Music;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/kuwo/base/bean/Music;->a(J)V

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcn/kuwo/base/bean/Music;->a:J

    const/4 v3, 0x2

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcn/kuwo/base/bean/Music;->f:I

    const/4 v3, 0x6

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcn/kuwo/base/bean/Music;->k:I

    const-string v3, "true"

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcn/kuwo/base/bean/Music;->h:Z

    const/16 v3, 0x9

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcn/kuwo/base/bean/Music;->l:I

    const-string v3, "true"

    const/16 v4, 0xb

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcn/kuwo/base/bean/Music;->D:Z

    const-string v3, "true"

    const/16 v4, 0xc

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcn/kuwo/base/bean/Music;->E:Z

    const/16 v3, 0xd

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->o:Ljava/lang/String;

    new-instance v3, Lcn/kuwo/base/util/KwDate;

    const/16 v4, 0xf

    aget-object v4, v2, v4

    invoke-direct {v3, v4}, Lcn/kuwo/base/util/KwDate;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    const/16 v3, 0x12

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v3, v2, v3

    iput-object v3, v1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/base/bean/Music;->t:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x3b

    invoke-static {p1, v0}, Lcn/kuwo/base/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    const/16 v6, 0x2e

    invoke-static {v2, v6}, Lcn/kuwo/base/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    aget-object v6, v2, v1

    invoke-static {v6}, Lcn/kuwo/base/bean/MusicQuality;->a(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-static {v7}, Lcn/kuwo/base/bean/MusicFormat;->a(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicFormat;

    move-result-object v7

    const/4 v8, 0x1

    :try_start_0
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v2, v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v9, Lcn/kuwo/base/bean/NetResource;

    invoke-direct {v9, v6, v8, v7, v2}, Lcn/kuwo/base/bean/NetResource;-><init>(Lcn/kuwo/base/bean/MusicQuality;ILcn/kuwo/base/bean/MusicFormat;I)V

    invoke-virtual {p0, v9}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/NetResource;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/base/bean/NetResource;->a:Lcn/kuwo/base/bean/MusicQuality;

    if-ne v3, p1, :cond_3

    if-eqz v1, :cond_2

    iget v3, v1, Lcn/kuwo/base/bean/NetResource;->b:I

    iget v4, v0, Lcn/kuwo/base/bean/NetResource;->b:I

    if-ge v3, v4, :cond_3

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcn/kuwo/base/bean/Music;->C:J

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->b:Lcn/kuwo/base/bean/Music$LocalFileState;

    :goto_0
    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->q:Lcn/kuwo/base/bean/Music$LocalFileState;

    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/base/bean/Music$LocalFileState;->c:Lcn/kuwo/base/bean/Music$LocalFileState;

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/base/bean/Music;->a(J)V

    const-string v2, "rid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    const-string v2, "artistid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/base/bean/Music;->d:J

    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcn/kuwo/base/bean/Music;->f:I

    const-string v2, "hasmv"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcn/kuwo/base/bean/Music;->h:Z

    const-string v2, "mvquality"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const-string v2, "haskalaok"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcn/kuwo/base/bean/Music;->k:I

    const-string v2, "downsize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcn/kuwo/base/bean/Music;->u:J

    const-string v2, "downquality"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/service/DownloadProxy$Quality;->valueOf(Ljava/lang/String;)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    const-string v2, "filepath"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    const-string v2, "filesize"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/base/bean/Music;->t:J

    const-string v2, "fileformat"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    const-string v2, "resource"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v2, "resource"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/kuwo/base/bean/Music;->a(Ljava/lang/String;)I

    :cond_0
    const-string v2, "createtime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "createtime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v2}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto/16 :goto_0

    :cond_2
    new-instance v3, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v3, v2}, Lcn/kuwo/base/util/KwDate;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v2, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v2}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v2, p0, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcn/kuwo/base/bean/Music;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    iget-wide v4, p0, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/NetResource;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/NetResource;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/NetResource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcn/kuwo/base/bean/NetResource;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcn/kuwo/base/bean/Music;->D:Z

    :cond_4
    invoke-virtual {p1}, Lcn/kuwo/base/bean/NetResource;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcn/kuwo/base/bean/Music;->E:Z

    :cond_5
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 12

    const/high16 v11, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v0, 0x3b

    invoke-static {p1, v0}, Lcn/kuwo/base/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    move v3, v1

    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    const/16 v2, 0x2c

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v7, 0x4

    if-ne v2, v7, :cond_5

    aget-object v2, v0, v1

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getValueFromSetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Lcn/kuwo/base/util/StringUtils;->getValueFromSetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v8}, Lcn/kuwo/base/util/StringUtils;->getValueFromSetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v0, v0, v9

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->getValueFromSetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lcn/kuwo/base/bean/MusicQuality;->b(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v10

    invoke-static {v7}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-static {v8}, Lcn/kuwo/base/bean/MusicFormat;->b(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicFormat;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "KB"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "(?i)kb"

    const-string v8, ""

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    :goto_3
    new-instance v8, Lcn/kuwo/base/bean/NetResource;

    invoke-direct {v8, v10, v0, v7, v2}, Lcn/kuwo/base/bean/NetResource;-><init>(Lcn/kuwo/base/bean/MusicQuality;ILcn/kuwo/base/bean/MusicFormat;I)V

    invoke-virtual {p0, v8}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/NetResource;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MB"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "(?i)mb"

    const-string v8, ""

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    mul-float/2addr v2, v11

    mul-float/2addr v2, v11

    float-to-int v2, v2

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "B"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "(?i)b"

    const-string v8, ""

    invoke-virtual {v9, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    float-to-int v2, v2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v1, v3

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public b(J)Landroid/content/ContentValues;
    .locals 5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "rid"

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "listid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "name"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artistid"

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "album"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    iget v2, p0, Lcn/kuwo/base/bean/Music;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "hot"

    iget v2, p0, Lcn/kuwo/base/bean/Music;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "source"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->o:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resource"

    invoke-virtual {p0}, Lcn/kuwo/base/bean/Music;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hasmv"

    iget-boolean v0, p0, Lcn/kuwo/base/bean/Music;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mvquality"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "haskalaok"

    iget v2, p0, Lcn/kuwo/base/bean/Music;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "downsize"

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->u:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "downquality"

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filepath"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fileformat"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filesize"

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->t:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "createtime"

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {v2}, Lcn/kuwo/base/util/KwDate;->toDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v0}, Lcn/kuwo/service/DownloadProxy$Quality;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/base/bean/NetResource;->a:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicQuality;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicQuality;->ordinal()I

    move-result v4

    if-gt v3, v4, :cond_3

    if-eqz v1, :cond_2

    iget v3, v1, Lcn/kuwo/base/bean/NetResource;->b:I

    iget v4, v0, Lcn/kuwo/base/bean/NetResource;->b:I

    if-ge v3, v4, :cond_3

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public b()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/base/bean/Music;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcn/kuwo/base/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const-string v5, "MP4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b(Lcn/kuwo/base/bean/Music;)Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/base/bean/Music;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-static {v1, v2}, Lcn/kuwo/base/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const-string v5, "MP4L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/Music;->f()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcn/kuwo/base/bean/NetResource;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/NetResource;

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    iget v3, v1, Lcn/kuwo/base/bean/NetResource;->b:I

    iget v4, v0, Lcn/kuwo/base/bean/NetResource;->b:I

    if-lt v3, v4, :cond_2

    move-object v0, v1

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/base/bean/NetResource;->a:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicQuality;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/kuwo/base/bean/NetResource;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcn/kuwo/base/bean/NetResource;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_0

    check-cast p1, Lcn/kuwo/base/bean/Music;

    invoke-virtual {p0, p1}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcn/kuwo/base/bean/Music;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/base/bean/NetResource;

    iget-object v3, v0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/NetResource;->a()Lcn/kuwo/base/bean/NetResource;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public g()I
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->C:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/Music;->g()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 4

    iget-wide v0, p0, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->F:Ljava/util/Collection;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Artist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Rid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
