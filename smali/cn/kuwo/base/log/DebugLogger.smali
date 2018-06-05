.class public Lcn/kuwo/base/log/DebugLogger;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/Map;


# instance fields
.field protected a:Z

.field private c:I

.field private final d:Ljava/lang/Object;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/log/DebugLogger;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcn/kuwo/base/log/DebugLogger;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/log/DebugLogger;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/log/DebugLogger;->e:Ljava/lang/String;

    iput-object p1, p0, Lcn/kuwo/base/log/DebugLogger;->e:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/base/log/DebugLogger;->c:I

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcn/kuwo/base/log/DebugLogger;->c:I

    if-ge p1, v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "V"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "I"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "W"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "A"

    aput-object v2, v0, v1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "[MM-dd hh:mm:ss.SSS]"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v4, p0, Lcn/kuwo/base/log/DebugLogger;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/kuwo/base/log/DebugLogger;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/base/log/DebugLogger;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/String;I)Lcn/kuwo/base/log/DebugLogger;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;I)Lcn/kuwo/base/log/DebugLogger;
    .locals 3

    const-class v1, Lcn/kuwo/base/log/DebugLogger;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid parameter fileName or level"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sget-object v2, Lcn/kuwo/base/log/DebugLogger;->b:Ljava/util/Map;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcn/kuwo/base/log/DebugLogger;->b:Ljava/util/Map;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcn/kuwo/base/log/DebugLogger;

    invoke-direct {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;-><init>(Ljava/lang/String;I)V

    sget-object v2, Lcn/kuwo/base/log/DebugLogger;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_2
    sget-object v0, Lcn/kuwo/base/log/DebugLogger;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/log/DebugLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcn/kuwo/base/log/DebugLogger;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/base/log/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcn/kuwo/base/log/DebugLogger;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcn/kuwo/base/log/DebugLogger;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcn/kuwo/base/log/DebugLogger;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/log/DebugLogger;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcn/kuwo/base/log/DebugLogger;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/log/DebugLogger;->c:I

    return-void
.end method
