.class public Lcn/kuwo/mod/list/ListSet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ListSet"

    sput-object v0, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Lcn/kuwo/base/bean/ListType;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->w:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcn/kuwo/mod/list/MusicListInner;-><init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/ListType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/MusicListInner;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcn/kuwo/mod/list/ListSet;->add(Lcn/kuwo/mod/list/MusicListInner;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcn/kuwo/base/bean/ListType;->x:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(JZ)Z
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->c()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v1, "loadMv:db open error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v2, "ajh.listSet"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    const-string v2, "ListSet.loadMv"

    invoke-virtual {v1, v2}, Lcn/kuwo/base/db/DataBaseManager;->a(Ljava/lang/String;)V

    :try_start_1
    const-string v1, "kwhd_list"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_2
    :goto_2
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_2
    const-string v1, "name"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    const-string v1, "type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/bean/ListType;->valueOf(Ljava/lang/String;)Lcn/kuwo/base/bean/ListType;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    :try_start_4
    const-string v4, "uid"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    if-eqz p3, :cond_3

    sget-object v6, Lcn/kuwo/base/bean/ListType;->u:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    sget-object v4, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    sget-object v4, Lcn/kuwo/base/bean/ListType;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v1}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v2, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMv: \u8be5\u5217\u8868\u7c7b\u578b\u5df2\u7ecf\u6709\u52a0\u8f7d\u4e86\u7684\u3002\u4e0d\u80fd\u52a0\u8f7d\u591a\u4e2a\u3002 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMv: query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    move v0, v9

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    new-instance v4, Lcn/kuwo/mod/list/MusicListInner;

    invoke-direct {v4, v1, v2}, Lcn/kuwo/mod/list/MusicListInner;-><init>(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)V

    sget-object v5, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v5, :cond_9

    invoke-virtual {p0}, Lcn/kuwo/mod/list/ListSet;->a()Ljava/util/Collection;

    move-result-object v5

    move-object v1, v2

    :goto_3
    invoke-interface {v5, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_load"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v4, v1}, Lcn/kuwo/mod/list/MusicListInner;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcn/kuwo/mod/list/MusicListInner;->c(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v2, "loadMv name error."

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    :goto_4
    const-string v2, "id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Lcn/kuwo/mod/list/MusicListInner;->b(J)V

    const-string v2, "showname"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->c(Ljava/lang/String;)V

    const-string v2, "picture"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->a(Ljava/lang/String;)V

    const-string v2, "listpath"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->b(Ljava/lang/String;)V

    const-string v2, "cloudid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    const-string v2, "version"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    const-string v2, "syncflag"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->c(I)V

    const-string v2, "radioid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcn/kuwo/mod/list/MusicListInner;->a(I)V

    const-string v2, "listsource"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/kuwo/mod/list/MusicListInner;->i:Ljava/lang/String;

    new-instance v2, Lcn/kuwo/base/util/KwDate;

    const-string v5, "createtime"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/kuwo/base/util/StringUtils;->getNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcn/kuwo/base/util/KwDate;-><init>(Ljava/lang/String;)V

    iput-object v2, v4, Lcn/kuwo/mod/list/MusicListInner;->j:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {p0, v0, v4}, Lcn/kuwo/mod/list/ListSet;->a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/mod/list/MusicListInner;)Z

    invoke-virtual {v4, v1}, Lcn/kuwo/mod/list/MusicListInner;->a(Z)V

    invoke-virtual {p0, v4}, Lcn/kuwo/mod/list/ListSet;->add(Lcn/kuwo/mod/list/MusicListInner;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :cond_7
    if-eqz v3, :cond_8

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    move v0, v8

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/base/db/DataBaseManager;->a()Lcn/kuwo/base/db/DataBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/db/DataBaseManager;->b()V

    throw v0

    :cond_9
    move v1, v9

    goto/16 :goto_4
.end method

.method a(Landroid/database/sqlite/SQLiteDatabase;Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v2, "loadMusic: check error"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v3, "listid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcn/kuwo/mod/list/MusicListInner;->i()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "kwhd_music"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcn/kuwo/base/bean/Music;

    invoke-direct {v0}, Lcn/kuwo/base/bean/Music;-><init>()V

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/Music;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/list/MusicListInner;->f(Lcn/kuwo/base/bean/Music;)Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    sget-object v2, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMusic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    move v0, v8

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public add(Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v2, "add:check error"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/mod/list/ListSet;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v2, "add: \u91cd\u540d"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v1, "remove:name null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/kuwo/mod/list/ListSet;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcn/kuwo/mod/list/MusicListInner;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lcn/kuwo/mod/list/ListSet;->a:Ljava/lang/String;

    const-string v2, "getList:name null"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public c(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public e(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public get(I)Lcn/kuwo/mod/list/MusicListInner;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/list/ListSet;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
