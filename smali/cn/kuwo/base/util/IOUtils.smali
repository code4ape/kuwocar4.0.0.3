.class public Lcn/kuwo/base/util/IOUtils;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_BUFFER_BYTES:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesFromFile(Ljava/io/File;)[B
    .locals 2

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bytesFromFile(Ljava/lang/String;)[B
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/util/IOUtils;->bytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static convertStreamToBytes(Ljava/io/InputStream;)[B
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x400

    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_1
    return-object v0

    :catch_1
    move-exception v1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_2

    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static createZeroBytes(I)[B
    .locals 2

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be gt 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-array v0, p0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static exhaust(Ljava/io/InputStream;)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v5, -0x1

    if-eqz p0, :cond_1

    const/16 v2, 0x400

    :try_start_0
    new-array v4, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v5, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    :goto_0
    if-eq v2, v5, :cond_1

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v6, v0

    move-wide v0, v2

    move v2, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v2

    :cond_1
    return-wide v0
.end method

.method public static getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static indexOf([BI[B)I
    .locals 7

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source or target array is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v3, p0

    array-length v4, p2

    if-ge p1, v3, :cond_2

    sub-int v0, v3, p1

    if-ge v0, v4, :cond_7

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :goto_1
    sub-int v2, v3, v4

    if-gt v0, v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    add-int v5, v0, v2

    aget-byte v5, p0, v5

    aget-byte v6, p2, v2

    if-eq v5, v6, :cond_5

    :cond_4
    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, p1

    goto :goto_1
.end method

.method public static parseInteger([BZ)I
    .locals 2

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lcn/kuwo/base/util/IOUtils;->parseNumber([BIZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static parseNumber([BIZ)J
    .locals 9

    const/16 v7, 0x8

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array is null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v6, :cond_3

    shl-long/2addr v0, v7

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    or-long/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v6, -0x1

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_1
    if-ltz v2, :cond_3

    shl-long/2addr v0, v7

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    or-long/2addr v4, v0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_3
    return-wide v0
.end method

.method public static parseShort([BZ)I
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcn/kuwo/base/util/IOUtils;->parseNumber([BIZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static readBytes(Ljava/io/InputStream;I)[B
    .locals 4

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v1, p1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-ge v2, p1, :cond_1

    sub-int v3, p1, v2

    :try_start_1
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-lez v3, :cond_1

    add-int/2addr v2, v3

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static readInt(Ljava/io/InputStream;)J
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v0, -0x1

    const/4 v4, 0x4

    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    invoke-virtual {p0, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    aget-byte v0, v2, v5

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x8

    const v3, 0xff00

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static readLeft(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/16 v2, 0x400

    :try_start_0
    new-array v3, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_2
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v4, 0xa

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_2
    move-object v1, v0

    :goto_3
    return-object v1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static readLeft(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/16 v2, 0x400

    :try_start_0
    new-array v3, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    :try_start_2
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v4, 0xa

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_2
    move-object v1, v0

    :goto_3
    return-object v1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static readLeftBytes(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/16 v2, 0x800

    :try_start_0
    new-array v3, v2, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x800

    :try_start_2
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v4, 0xa

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_2
    move-object v1, v0

    :goto_3
    return-object v1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    int-to-char v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public static readShort(Ljava/io/InputStream;)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x8

    const v2, 0xff00

    and-int/2addr v0, v2

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static readString(Ljava/io/InputStream;I)Ljava/lang/CharSequence;
    .locals 6

    const/16 v1, 0x800

    const/4 v0, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_0
    new-array v3, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-lez p1, :cond_0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr p1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static readString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const/16 v1, 0x800

    const/4 v0, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_0
    new-array v3, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v2, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-lez p1, :cond_0

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr p1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static stringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static stringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/util/IOUtils;->stringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeInt(Ljava/io/OutputStream;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static writeShort(Ljava/io/OutputStream;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    if-gt p2, v1, :cond_0

    invoke-virtual {p0, v0, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :try_start_0
    array-length v0, v0

    sub-int v0, p2, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public static writeString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    if-gt p3, v1, :cond_0

    invoke-virtual {p0, v0, v2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    :try_start_0
    array-length v0, v0

    sub-int v0, p3, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
