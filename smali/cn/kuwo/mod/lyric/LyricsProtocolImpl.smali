.class public Lcn/kuwo/mod/lyric/LyricsProtocolImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/lyric/ILyricsProtocol;


# instance fields
.field public a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

.field public b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

.field public c:[B

.field public d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->g()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcn/kuwo/base/util/IOUtils;->readLeftBytes(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->c:[B

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a([BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const-string v1, "(?:NAME|SONGNAME)=(.*)\\r\\nARTIST=(.*)\\r\\nPATH=(.*)\\r\\n\\r\\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->f:Ljava/util/List;

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListItem;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListItem;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListItem;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    iget-object v3, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->e:Z

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->c:[B

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->d:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a([BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Lcn/kuwo/base/util/ZipUtils;->unzip([BII)[B
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "utf-8"

    invoke-static {v1, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {p2, v1}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "utf-8"

    const-string v2, "yeelion"

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/crypt/Base64Coder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->g()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lcn/kuwo/base/util/IOUtils;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "TP=list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    goto :goto_0

    :cond_2
    const-string v4, "TP=content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    iput-object v3, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    invoke-static {v2}, Lcn/kuwo/base/util/IOUtils;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    sget-object v5, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    if-ne v4, v5, :cond_5

    const-string v1, "lrcx="

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    :goto_1
    invoke-static {v2}, Lcn/kuwo/base/util/IOUtils;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a(Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string v2, "TP=none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([B)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->g()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TP=none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "TP=list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    invoke-direct {p0, v1}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->c:[B

    return-object v0
.end method

.method public e()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;-><init>()V

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->f:Ljava/util/List;

    return-object v0
.end method
