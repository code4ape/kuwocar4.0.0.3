.class public Lcn/kuwo/base/util/ScanMusicTag;
.super Ljava/lang/Object;


# static fields
.field public static final SPEC_CHAR:Ljava/lang/String; = "~$\\/:,;*?|\uff5e&"

.field private static final TAG:Ljava/lang/String; = "ScanMusicTag"

.field public static final UNKNOWN_ALBUM:Ljava/lang/String; = "\u672a\u77e5\u4e13\u8f91"

.field public static final UNKNOWN_ARTIST:Ljava/lang/String; = "\u672a\u77e5\u6b4c\u624b"

.field public static final UNKNOWN_SONG:Ljava/lang/String; = "\u672a\u77e5\u6b4c\u66f2"

.field public static final URL_PATTERN:Ljava/lang/String; = "^(http(s{0,1})://)*[a-zA-Z0-9_/\\-\\.]+\\.([A-Za-z/]{2,5})[a-zA-Z0-9_/\\&\\?\\=\\-\\.\\~\\%]*"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "GBK"

    invoke-static {p0, v0}, Lcn/kuwo/base/util/StringCodec;->isEncodable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/util/ScanMusicTag;->isGarbled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcn/kuwo/base/util/ScanMusicTag;->isMessyCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "GBK"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcn/kuwo/base/util/ScanMusicTag;->isMessyCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSimpleMusic(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioFile;)Lcn/kuwo/base/bean/Music;
    .locals 6

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcn/kuwo/base/bean/Music;

    invoke-direct {v2}, Lcn/kuwo/base/bean/Music;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const-string v0, ""

    :try_start_0
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v1, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    :goto_2
    const-string v0, "\u672a\u77e5\u4e13\u8f91"

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    iput-object p0, v2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v2, Lcn/kuwo/base/bean/Music;->t:J

    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/AudioFile;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v0

    invoke-interface {v0}, Lorg/jaudiotagger/audio/AudioHeader;->getTrackLength()I

    move-result v0

    iput v0, v2, Lcn/kuwo/base/bean/Music;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const-string v0, "\u672a\u77e5\u6b4c\u624b"

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    const-string v0, "\u672a\u77e5\u6b4c\u624b"

    iput-object v0, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static isChinese(C)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGarbled(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "~$\\/:,;*?|\uff5e&"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isMessyCode(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/kuwo/base/util/ScanMusicTag;->stringFilter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    aget-char v5, v4, v0

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Lcn/kuwo/base/util/ScanMusicTag;->isChinese(C)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_0

    int-to-float v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static isValidSongName(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "^(http(s{0,1})://)*[a-zA-Z0-9_/\\-\\.]+\\.([A-Za-z/]{2,5})[a-zA-Z0-9_/\\&\\?\\=\\-\\.\\~\\%]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_4

    :cond_3
    const-string v5, "~$\\/:,;*?|\uff5e&"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static scanMusicTag(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ScanMusicTag"

    const-string v2, "[scanMusicTag] path is empty"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "ScanMusicTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scanMusicTag] get extension failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/jaudiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lorg/jaudiotagger/audio/AudioFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ScanMusicTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scanMusicTag] tag is null: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcn/kuwo/base/util/ScanMusicTag;->getSimpleMusic(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioFile;)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "ScanMusicTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scanMusicTag] read audio file failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/kuwo/base/util/ScanMusicTag;->getSimpleMusic(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioFile;)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v3, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {v0, v3}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {v0, v4}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-interface {v0, v5}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ScanMusicTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scanMusicTag] tag is empty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcn/kuwo/base/util/ScanMusicTag;->getSimpleMusic(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioFile;)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    iput-object p0, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v1, v6

    int-to-long v6, v1

    iput-wide v6, v0, Lcn/kuwo/base/bean/Music;->t:J

    :cond_4
    const-string v1, "\u672a\u77e5\u4e13\u8f91"

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v3}, Lcn/kuwo/base/util/ScanMusicTag;->changeEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/ScanMusicTag;->isGarbled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    :cond_5
    const-string v1, "\u672a\u77e5\u6b4c\u624b"

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v4}, Lcn/kuwo/base/util/ScanMusicTag;->changeEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/ScanMusicTag;->isGarbled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    :cond_6
    invoke-static {p0}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v5}, Lcn/kuwo/base/util/ScanMusicTag;->changeEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v3, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {v3}, Lcn/kuwo/base/util/ScanMusicTag;->isValidSongName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    :cond_7
    :goto_1
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/AudioFile;->getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;

    move-result-object v1

    invoke-interface {v1}, Lorg/jaudiotagger/audio/AudioHeader;->getTrackLength()I

    move-result v1

    iput v1, v0, Lcn/kuwo/base/bean/Music;->f:I

    const-string v1, "ScanMusicTag"

    const-string v2, "[scanMusicTag] path: %s, album: %s, artist: %s, name: %s, duration: %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v0, Lcn/kuwo/base/bean/Music;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\s*|\t*|\r*|\n*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{P}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
