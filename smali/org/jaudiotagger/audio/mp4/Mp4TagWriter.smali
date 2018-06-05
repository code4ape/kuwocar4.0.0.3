.class public Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;
.super Ljava/lang/Object;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    return-void
.end method

.method private adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    const-wide/16 v4, 0x8

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p5, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;)V
    .locals 8

    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Checking file has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v1, v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    throw v0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_1

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStco()Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    move-result-object v0

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stco:Original First Offset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stco:Original Diff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stco:Original Mdat Pos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stco:New First Offset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stco:New Diff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stco:New Mdat Pos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    sub-long v0, v4, v0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p3}, Ljava/nio/channels/FileChannel;->close()V

    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "File has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method

.method private convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 2

    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private createMetadataAtoms(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    return-void
.end method

.method private getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v4, v0, v4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_0
.end method

.method private writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/channels/FileChannel;->position()J

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

    :goto_0
    int-to-long v2, v8

    cmp-long v2, v2, v14

    if-gez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long v4, v10, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-wide v10, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v2

    add-long/2addr v2, v10

    cmp-long v4, v2, v12

    if-eqz v4, :cond_1

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

    :cond_1
    return-void
.end method

.method private writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    int-to-long v4, p4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    int-to-long v0, p4

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, p5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v0, p4, p3

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private writeMetadataSameSize(Ljava/nio/ByteBuffer;JJLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p6, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v0, p7

    move-object v1, p6

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p7, p4, p5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p7, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-long v0, p4, p2

    invoke-virtual {p6, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p6, p7, p8}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    return-void
.end method

.method private writeNeroData(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-direct {p0, p2, p3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v4, v0, v4

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 2

    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotWriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 36

    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Started writing tag data"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    const/16 v16, 0x0

    :try_start_0
    new-instance v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/io/RandomAccessFile;Z)V
    :try_end_0
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v27

    if-nez v27, :cond_0

    new-instance v4, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v5, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v4

    new-instance v5, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;->convert(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    const-wide/16 v12, 0x8

    add-long v28, v8, v12

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    int-to-long v12, v4

    add-long v30, v8, v12

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStco()Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    move-result-object v32

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v15

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v33

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v8

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v12

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v6, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovBuffer()Ljava/nio/ByteBuffer;

    move-result-object v34

    if-eqz v15, :cond_5

    if-eqz v33, :cond_4

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v16

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    add-long v20, v20, v22

    sub-long v8, v8, v20

    long-to-int v4, v8

    move v7, v4

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I

    move-result v35

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v4}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v6

    check-cast v6, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v6}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v4, v0

    move/from16 v26, v6

    move v6, v4

    :goto_1
    if-lez v26, :cond_8

    int-to-long v0, v6

    move-wide/from16 v20, v0

    invoke-virtual/range {v27 .. v27}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    cmp-long v4, v20, v22

    if-lez v4, :cond_7

    const/4 v4, 0x0

    move/from16 v24, v4

    move/from16 v25, v6

    :goto_2
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v6, "Read header successfully ready for writing"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v6, "Writing:Option 1:Same Size"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move/from16 v0, v16

    int-to-long v6, v0

    move/from16 v0, v17

    int-to-long v8, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeMetadataSameSize(Ljava/nio/ByteBuffer;JJLjava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    :goto_3
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->close()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v11, v3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->checkFileWrittenCorrectly(Ljava/io/RandomAccessFile;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;)V

    return-void

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v4, v0

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    add-int v17, v4, v7

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    add-long v20, v20, v22

    sub-long v8, v8, v20

    long-to-int v4, v8

    move v7, v4

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v33 .. v33}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    long-to-int v4, v8

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v17, v4, 0x4

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    add-long v20, v20, v22

    sub-long v8, v8, v20

    long-to-int v4, v8

    move v7, v4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v8, v8, v20

    long-to-int v0, v8

    move/from16 v17, v0

    move v7, v4

    goto/16 :goto_0

    :cond_5
    if-eqz v33, :cond_6

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int v17, v7, v4

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    const-wide/16 v22, 0x8

    add-long v20, v20, v22

    sub-long v8, v8, v20

    long-to-int v4, v8

    move v7, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v8, v8, v20

    long-to-int v0, v8

    move/from16 v17, v0

    move v7, v4

    goto/16 :goto_0

    :cond_7
    int-to-long v0, v6

    move-wide/from16 v20, v0

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    cmp-long v4, v20, v22

    if-gez v4, :cond_1b

    const/4 v4, 0x0

    move/from16 v24, v4

    move/from16 v25, v6

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {v27 .. v27}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v4, v0

    move/from16 v24, v8

    move/from16 v25, v4

    goto/16 :goto_2

    :cond_9
    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    if-lez v35, :cond_a

    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing:Option 2:Smaller Size have free atom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object/from16 v13, p0

    move-object v14, v10

    move-object v15, v11

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V

    sub-int v4, v16, v19

    add-int v4, v4, v35

    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v4, v4, -0x8

    invoke-direct {v5, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move/from16 v0, v35

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_3

    :cond_a
    sub-int v4, v16, v19

    add-int/lit8 v4, v4, -0x8

    if-lez v4, :cond_b

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v7, "Writing:Option 3:Smaller Size can create free atom"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object/from16 v13, p0

    move-object v14, v10

    move-object v15, v11

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V

    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-direct {v5, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_3

    :cond_b
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v6, "Writing:Option 4:Smaller Size <=8 cannot create free atoms"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    sub-int v4, v16, v19

    const-wide/16 v8, 0x0

    invoke-virtual {v10, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v20, 0x0

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual/range {v27 .. v27}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v18

    cmp-long v6, v8, v18

    if-lez v6, :cond_c

    neg-int v6, v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    :cond_c
    neg-int v0, v4

    move/from16 v21, v0

    move-object/from16 v18, p0

    move-object/from16 v19, v14

    move-object/from16 v20, v34

    move-object/from16 v22, v15

    move-object/from16 v23, v33

    invoke-direct/range {v18 .. v23}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v11, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v4, v17, v16

    int-to-long v4, v4

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_3

    :cond_d
    sub-int v4, v19, v16

    add-int/lit8 v6, v35, -0x8

    if-gt v4, v6, :cond_e

    sub-int v4, v35, v4

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing:Option 5;Larger Size can use meta free atom need extra:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object/from16 v13, p0

    move-object v14, v10

    move-object v15, v11

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataUptoIncludingIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;IILjava/nio/ByteBuffer;)V

    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v4, v4, -0x8

    invoke-direct {v5, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move/from16 v0, v35

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataAfterIlst(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    goto/16 :goto_3

    :cond_e
    sub-int v4, v4, v35

    const-wide/16 v8, 0x0

    invoke-virtual {v10, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-wide/16 v20, 0x0

    const-wide/16 v8, 0x8

    sub-long v22, v28, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    const-wide/16 v8, 0x8

    sub-long v8, v28, v8

    invoke-virtual {v11, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-nez v15, :cond_11

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v8, "Writing:Option 5.1;No udta atom"

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v8

    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v13, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v13

    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v13

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v9, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v13

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    sub-int/2addr v13, v15

    add-int/2addr v4, v13

    if-eqz v24, :cond_f

    add-int/lit8 v13, v26, -0x8

    if-ge v13, v4, :cond_10

    move/from16 v0, v26

    if-eq v0, v4, :cond_10

    :cond_f
    invoke-virtual/range {v27 .. v27}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v18

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    cmp-long v13, v18, v20

    if-lez v13, :cond_10

    sget-object v13, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v15, "Adjusting Offsets"

    invoke-virtual {v13, v15}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    :cond_10
    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v14, v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move/from16 v18, v4

    :goto_4
    invoke-virtual {v11, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    add-int v4, v17, v16

    int-to-long v4, v4

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move/from16 v0, v35

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long v8, v4, v6

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    move-object v4, v11

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v11, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/FileChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v15, v30, v4

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v13

    move-object v12, v10

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    :goto_5
    if-eqz v24, :cond_1a

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_1a

    add-int/lit8 v4, v26, -0x8

    move/from16 v0, v18

    if-lt v4, v0, :cond_18

    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Writing:Option 6;Larger Size can use top free atom"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v5, v26, -0x8

    sub-int v5, v5, v18

    invoke-direct {v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move/from16 v0, v26

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_3

    :cond_11
    if-nez v33, :cond_14

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v8, "Writing:Option 5.2;No meta atom"

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v9

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    add-int/2addr v9, v13

    invoke-static {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v9

    new-instance v13, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v15, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v15}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v15

    invoke-virtual {v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v15

    add-int/lit8 v15, v15, 0x8

    invoke-virtual {v13, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v15

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v18

    sub-int v15, v15, v18

    add-int/2addr v4, v15

    if-eqz v24, :cond_12

    add-int/lit8 v15, v26, -0x8

    if-ge v15, v4, :cond_13

    move/from16 v0, v26

    if-eq v0, v4, :cond_13

    :cond_12
    invoke-virtual/range {v27 .. v27}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v18

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-lez v15, :cond_13

    sget-object v15, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v18, "Adjusting Offsets"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    :cond_13
    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v15

    sub-int/2addr v15, v6

    add-int/2addr v15, v4

    invoke-virtual {v14, v15}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sub-int v6, v7, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v13}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move/from16 v18, v4

    goto/16 :goto_4

    :cond_14
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v8, "Writing:Option 5.3;udta atom exists"

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eqz v24, :cond_15

    add-int/lit8 v6, v26, -0x8

    if-ge v6, v4, :cond_16

    move/from16 v0, v26

    if-eq v0, v4, :cond_16

    :cond_15
    invoke-virtual/range {v27 .. v27}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v18

    cmp-long v6, v8, v18

    if-lez v6, :cond_16

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    :cond_16
    move-object/from16 v18, p0

    move-object/from16 v19, v14

    move-object/from16 v20, v34

    move/from16 v21, v4

    move-object/from16 v22, v15

    move-object/from16 v23, v33

    invoke-direct/range {v18 .. v23}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    invoke-virtual {v14}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move/from16 v18, v4

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    sub-long v15, v30, v4

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v13

    move-object v12, v10

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    add-long/2addr v4, v15

    invoke-virtual {v11, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto/16 :goto_5

    :cond_18
    move/from16 v0, v26

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Writing:Option 7;Larger Size uses top free atom including header"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    move/from16 v0, v26

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_3

    :cond_19
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Writing:Option 8;Larger Size cannot use top free atom"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v13

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long v15, v4, v6

    move-object v12, v10

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_3

    :cond_1a
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v5, "Writing:Option 9;Top Level Free comes after Mdat or before Metadata so cant use it"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeDataInChunks(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;)V

    goto/16 :goto_3

    :cond_1b
    move/from16 v24, v8

    move/from16 v25, v6

    goto/16 :goto_2

    :cond_1c
    move/from16 v26, v9

    move v6, v13

    goto/16 :goto_1
.end method
