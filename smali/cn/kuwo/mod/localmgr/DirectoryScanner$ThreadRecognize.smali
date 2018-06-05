.class Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/localmgr/DirectoryScanner;


# direct methods
.method private constructor <init>(Lcn/kuwo/mod/localmgr/DirectoryScanner;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/mod/localmgr/DirectoryScanner;Lcn/kuwo/mod/localmgr/DirectoryScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;-><init>(Lcn/kuwo/mod/localmgr/DirectoryScanner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->c(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->i(Lcn/kuwo/mod/localmgr/DirectoryScanner;)V

    return-void

    :cond_1
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->b(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->d(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DirectoryScanner"

    const-string v2, "[recognizeMusic] file is in ignore set"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->h(Lcn/kuwo/mod/localmgr/DirectoryScanner;)I

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->a(Lcn/kuwo/mod/localmgr/DirectoryScanner;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ScanMusicTag;->scanMusicTag(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "DirectoryScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[recognizeMusic] scanMusicTag failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e(Lcn/kuwo/mod/localmgr/DirectoryScanner;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->f(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Lcn/kuwo/mod/localmgr/DirectoryScanFilter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/kuwo/mod/localmgr/DirectoryScanFilter;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v3, "DirectoryScanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[recognizeMusic] checkDuration failed."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  name = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "null"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", filepath = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "null"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", filesize = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcn/kuwo/base/bean/Music;->t:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", dureation = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Lcn/kuwo/base/bean/Music;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->e(Lcn/kuwo/mod/localmgr/DirectoryScanner;)I

    goto/16 :goto_1

    :cond_5
    iget-object v0, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/DirectoryScanner$ThreadRecognize;->a:Lcn/kuwo/mod/localmgr/DirectoryScanner;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/DirectoryScanner;->g(Lcn/kuwo/mod/localmgr/DirectoryScanner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
