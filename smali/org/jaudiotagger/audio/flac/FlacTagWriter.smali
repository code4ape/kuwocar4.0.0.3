.class public Lorg/jaudiotagger/audio/flac/FlacTagWriter;
.super Ljava/lang/Object;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private metadataBlockApplication:Ljava/util/List;

.field private metadataBlockCueSheet:Ljava/util/List;

.field private metadataBlockPadding:Ljava/util/List;

.field private metadataBlockSeekTable:Ljava/util/List;

.field private reader:Lorg/jaudiotagger/audio/flac/FlacTagReader;

.field private streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

.field private tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacTagReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/flac/FlacTagReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->reader:Lorg/jaudiotagger/audio/flac/FlacTagReader;

    return-void
.end method

.method private computeAvailableRoom()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_3
    return v1
.end method

.method private computeNeededRoom()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    return v1
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Lorg/jaudiotagger/tag/flac/FlacTag;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 18

    sget-object v2, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing tag"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v8, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    :try_start_0
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacTagWriter$1;->$SwitchMap$org$jaudiotagger$audio$flac$metadatablock$BlockType:[I

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_1
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    new-instance v4, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    move-object/from16 v0, p2

    invoke-direct {v4, v2, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    invoke-direct {v3, v2, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockPadding:Ljava/util/List;

    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v5, v2, v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;

    move-object/from16 v0, p2

    invoke-direct {v3, v2, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v5, v2, v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;

    move-object/from16 v0, p2

    invoke-direct {v3, v2, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataSeekTable;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v5, v2, v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v3, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;

    move-object/from16 v0, p2

    invoke-direct {v3, v2, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataCueSheet;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    new-instance v5, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-direct {v5, v2, v3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->computeAvailableRoom()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->computeNeededRoom()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    int-to-long v4, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v2, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing tag available bytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":needed bytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eq v9, v3, :cond_1

    add-int/lit8 v2, v3, 0x4

    if-le v9, v2, :cond_6

    :cond_1
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    int-to-long v4, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->streamInfoBlock:Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    sub-int v3, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    if-lez v2, :cond_7

    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_7
    const-string v2, "fLaC"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v2, 0x1

    int-to-long v2, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    int-to-long v2, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    int-to-long v4, v4

    const-wide/16 v6, 0x25

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->getStartOfFlacInFile()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0x22

    int-to-long v4, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockApplication:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getHeader()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBytesWithoutIsLastBlockFlag()[B

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlock;->getData()Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;

    move-result-object v2

    invoke-interface {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jaudiotagger/audio/flac/FlacTagWriter;->tc:Lorg/jaudiotagger/audio/flac/FlacTagCreator;

    const/16 v4, 0xfa0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lorg/jaudiotagger/audio/flac/FlacTagCreator;->convert(Lorg/jaudiotagger/tag/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int v2, v3, v9

    int-to-long v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v12, v2, v4

    const-wide/16 v4, 0x0

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide v6

    div-long v14, v12, v6

    rem-long v16, v12, v6

    const/4 v2, 0x0

    move v8, v2

    move-wide v10, v4

    :goto_8
    int-to-long v2, v8

    cmp-long v2, v2, v14

    if-gez v2, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long v4, v10, v2

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v10

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-wide v10, v4

    goto :goto_8

    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long/2addr v2, v10

    cmp-long v4, v2, v12

    if-eqz v4, :cond_5

    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Was meant to write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes but only written "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
