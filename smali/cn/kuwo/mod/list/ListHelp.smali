.class public Lcn/kuwo/mod/list/ListHelp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/ListType;)Z
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "download.finish"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.artist"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.path"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.disk"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcn/kuwo/base/bean/ListType;)Z
    .locals 1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->c:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->e:Lcn/kuwo/base/bean/ListType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const-string v1, "ListHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All\u5220\u9664\u4e86\u51e0\u9996\u6b4c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.artist"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const-string v1, "ListHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Artist\u5220\u9664\u4e86\u51e0\u9996\u6b4c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.path"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const-string v1, "ListHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path\u5220\u9664\u4e86\u51e0\u9996\u6b4c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.disk"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const-string v1, "ListHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path\u5220\u9664\u4e86\u51e0\u9996\u6b4c\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method
