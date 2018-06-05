.class Lcn/kuwo/mod/list/MusicListInner$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/list/MusicListInner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/MusicListInner;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    iput-wide p2, p0, Lcn/kuwo/mod/list/MusicListInner$1;->a:J

    iput-object p4, p0, Lcn/kuwo/mod/list/MusicListInner$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    iget-wide v2, p0, Lcn/kuwo/mod/list/MusicListInner$1;->a:J

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(JLjava/lang/String;)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    const-string v2, "MusicInnerList.save"

    invoke-virtual {v0, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;Landroid/database/sqlite/SQLiteDatabase;)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;Landroid/database/sqlite/SQLiteDatabase;)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;Landroid/database/sqlite/SQLiteDatabase;)Z

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    :try_start_5
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcn/kuwo/mod/list/MusicListInner;->o()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save(error):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    :try_start_8
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_9
    invoke-static {}, Lcn/kuwo/mod/list/MusicListInner;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save2(error):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v0}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_4
    :try_start_b
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1, v5}, Lcn/kuwo/mod/list/MusicListInner;->b(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1, v5}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;Z)Z

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1}, Lcn/kuwo/mod/list/MusicListInner;->c(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1}, Lcn/kuwo/mod/list/MusicListInner;->d(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcn/kuwo/mod/list/MusicListInner$1;->c:Lcn/kuwo/mod/list/MusicListInner;

    invoke-static {v1}, Lcn/kuwo/mod/list/MusicListInner;->a(Lcn/kuwo/mod/list/MusicListInner;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_3

    :catch_4
    move-exception v1

    goto :goto_4
.end method
