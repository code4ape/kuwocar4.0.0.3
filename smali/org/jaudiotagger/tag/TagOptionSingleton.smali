.class public Lorg/jaudiotagger/tag/TagOptionSingleton;
.super Ljava/lang/Object;


# static fields
.field private static DEFAULT:Ljava/lang/String;

.field private static defaultOptions:Ljava/lang/String;

.field private static tagOptionTable:Ljava/util/HashMap;


# instance fields
.field private filenameTagSave:Z

.field private id3v1Save:Z

.field private id3v1SaveAlbum:Z

.field private id3v1SaveArtist:Z

.field private id3v1SaveComment:Z

.field private id3v1SaveGenre:Z

.field private id3v1SaveTitle:Z

.field private id3v1SaveTrack:Z

.field private id3v1SaveYear:Z

.field private id3v23DefaultTextEncoding:B

.field private id3v24DefaultTextEncoding:B

.field private id3v24UnicodeTextEncoding:B

.field private id3v2PaddingCopyTag:Z

.field private id3v2PaddingWillShorten:Z

.field private id3v2Save:Z

.field private isAndroid:Z

.field private isEncodeUTF16BomAsLittleEndian:Z

.field private isWriteMp4GenresAsText:Z

.field private keywordMap:Ljava/util/HashMap;

.field private language:Ljava/lang/String;

.field private lyrics3KeepEmptyFieldIfRead:Z

.field private lyrics3Save:Z

.field private lyrics3SaveEmptyField:Z

.field private lyrics3SaveFieldMap:Ljava/util/HashMap;

.field private numberMP3SyncFrame:I

.field private originalSavedAfterAdjustingID3v2Padding:Z

.field private padNumbers:Z

.field private parenthesisMap:Ljava/util/HashMap;

.field private playerCompatability:I

.field private removeTrailingTerminatorOnWrite:Z

.field private replaceWordMap:Ljava/util/HashMap;

.field private resetTextEncodingForExistingFrames:Z

.field private timeStampFormat:B

.field private truncateTextWithoutErrors:Z

.field private unsyncTags:Z

.field private writeChunkSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    const-string v0, "default"

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->DEFAULT:Ljava/lang/String;

    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->DEFAULT:Ljava/lang/String;

    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    const-string v0, "eng"

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    const/4 v0, 0x3

    iput v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    iput-byte v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->setToDefault()V

    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;
    .locals 1

    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;
    .locals 2

    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;-><init>()V

    sget-object v1, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getInstanceKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/TagException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class type. Must be AbstractId3v2FrameBody "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    goto :goto_0
.end method

.method public addParenthesis(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getId3v23DefaultTextEncoding()B
    .locals 1

    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    return v0
.end method

.method public getId3v24DefaultTextEncoding()B
    .locals 1

    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    return v0
.end method

.method public getId3v24UnicodeTextEncoding()B
    .locals 1

    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    return v0
.end method

.method public getKeywordIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics3SaveField(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLyrics3SaveFieldMap()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNewReplaceWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberMP3SyncFrame()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    return v0
.end method

.method public getOldReplaceWordIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getOpenParenthesisIterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerCompatability()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    return v0
.end method

.method public getTimeStampFormat()B
    .locals 1

    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    return v0
.end method

.method public getWriteChunkSize()J
    .locals 2

    iget-wide v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    return-wide v0
.end method

.method public isAndroid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    return v0
.end method

.method public isEncodeUTF16BomAsLittleEndian()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    return v0
.end method

.method public isFilenameTagSave()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    return v0
.end method

.method public isId3v1Save()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    return v0
.end method

.method public isId3v1SaveAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    return v0
.end method

.method public isId3v1SaveArtist()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    return v0
.end method

.method public isId3v1SaveComment()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    return v0
.end method

.method public isId3v1SaveGenre()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    return v0
.end method

.method public isId3v1SaveTitle()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    return v0
.end method

.method public isId3v1SaveTrack()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    return v0
.end method

.method public isId3v1SaveYear()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    return v0
.end method

.method public isId3v2PaddingCopyTag()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return v0
.end method

.method public isId3v2PaddingWillShorten()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return v0
.end method

.method public isId3v2Save()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    return v0
.end method

.method public isLyrics3KeepEmptyFieldIfRead()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return v0
.end method

.method public isLyrics3Save()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    return v0
.end method

.method public isLyrics3SaveEmptyField()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return v0
.end method

.method public isOpenParenthesis(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOriginalSavedAfterAdjustingID3v2Padding()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return v0
.end method

.method public isPadNumbers()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    return v0
.end method

.method public isRemoveTrailingTerminatorOnWrite()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    return v0
.end method

.method public isResetTextEncodingForExistingFrames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    return v0
.end method

.method public isTruncateTextWithoutErrors()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    return v0
.end method

.method public isUnsyncTags()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    return v0
.end method

.method public isWriteMp4GenresAsText()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    return v0
.end method

.method public setAndroid(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    return-void
.end method

.method public setEncodeUTF16BomAsLittleEndian(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    return-void
.end method

.method public setFilenameTagSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    return-void
.end method

.method public setId3v1Save(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    return-void
.end method

.method public setId3v1SaveAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    return-void
.end method

.method public setId3v1SaveArtist(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    return-void
.end method

.method public setId3v1SaveComment(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    return-void
.end method

.method public setId3v1SaveGenre(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    return-void
.end method

.method public setId3v1SaveTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    return-void
.end method

.method public setId3v1SaveTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    return-void
.end method

.method public setId3v1SaveYear(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    return-void
.end method

.method public setId3v23DefaultTextEncoding(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v24DefaultTextEncoding(B)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v24UnicodeTextEncoding(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    :cond_1
    return-void
.end method

.method public setId3v2PaddingCopyTag(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    return-void
.end method

.method public setId3v2PaddingWillShorten(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    return-void
.end method

.method public setId3v2Save(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    return-void
.end method

.method public setInstanceKey(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/reference/Languages;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLyrics3KeepEmptyFieldIfRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    return-void
.end method

.method public setLyrics3Save(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    return-void
.end method

.method public setLyrics3SaveEmptyField(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    return-void
.end method

.method public setLyrics3SaveField(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNumberMP3SyncFrame(I)V
    .locals 0

    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    return-void
.end method

.method public setOriginalSavedAfterAdjustingID3v2Padding(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    return-void
.end method

.method public setPadNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    return-void
.end method

.method public setPlayerCompatability(I)V
    .locals 0

    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->playerCompatability:I

    return-void
.end method

.method public setRemoveTrailingTerminatorOnWrite(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    return-void
.end method

.method public setResetTextEncodingForExistingFrames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    return-void
.end method

.method public setTimeStampFormat(B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    :cond_1
    return-void
.end method

.method public setToDefault()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    const-string v0, "eng"

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    iput v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    iput-byte v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    iput-boolean v4, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isEncodeUTF16BomAsLittleEndian:Z

    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    iput-boolean v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    invoke-static {}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "ultimix"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "dance"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "mix"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "remix"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "rmx"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "live"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "cover"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "soundtrack"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "version"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "acoustic"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "original"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "cd"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "extended"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "vocal"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "unplugged"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "acapella"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "edit"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "radio"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "original"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "album"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "studio"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "instrumental"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "unedited"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "karoke"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "quality"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "uncensored"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "clean"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v1, "dirty"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "f."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "feat"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "featuring"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "ftng"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "ftng."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "ft."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    const-string v1, "ft"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getValueToIdMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-string v0, "v."

    const-string v1, "vs."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vs."

    const-string v1, "vs."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "versus"

    const-string v1, "vs."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "f."

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feat"

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "featuring"

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ftng."

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ftng"

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ft."

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ft"

    const-string v1, "feat."

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;

    const-string v0, "("

    const-string v1, ")"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "["

    const-string v1, "]"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{"

    const-string v1, "}"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTruncateTextWithoutErrors(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    return-void
.end method

.method public setUnsyncTags(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    return-void
.end method

.method public setWriteChunkSize(J)V
    .locals 1

    iput-wide p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->writeChunkSize:J

    return-void
.end method

.method public setWriteMp4GenresAsText(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp4GenresAsText:Z

    return-void
.end method
