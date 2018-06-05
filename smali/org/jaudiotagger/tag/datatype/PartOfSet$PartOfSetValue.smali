.class public Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;
.super Ljava/lang/Object;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final trackNoPattern:Ljava/util/regex/Pattern;

.field private static final trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;


# instance fields
.field private count:Ljava/lang/Integer;

.field private extra:Ljava/lang/String;

.field private total:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "([0-9]+)/([0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    const-string v0, "([0-9]+)(.*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPatternWithTotalCount:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->trackNoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->getTotal()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x30

    const/16 v3, 0xa

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isPadNumbers()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v3, :cond_7

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v3, :cond_9

    const-string v1, "/0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_9
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;->total:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method
