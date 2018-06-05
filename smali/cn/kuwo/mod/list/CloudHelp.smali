.class public Lcn/kuwo/mod/list/CloudHelp;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CloudHelp"

    sput-object v0, Lcn/kuwo/mod/list/CloudHelp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/base/bean/ListType;
    .locals 3

    const-string v0, "MOBI_DEFAULT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->i:Lcn/kuwo/base/bean/ListType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PC_DEFAULT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/base/bean/ListType;->j:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :cond_1
    const-string v0, "GENERAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :cond_2
    const-string v0, "RADIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :cond_3
    const-string v0, "MYFAVORITE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :cond_4
    const-string v0, "ORDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/kuwo/base/bean/ListType;->o:Lcn/kuwo/base/bean/ListType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcn/kuwo/mod/list/CloudHelp;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/bean/ListType;->a:Lcn/kuwo/base/bean/ListType;

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;
    .locals 5

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->g()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/base/bean/ListType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/kuwo/mod/list/CloudHelp$1;->a:[I

    invoke-virtual {p0}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/kuwo/mod/list/CloudHelp;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "MOBI_DEFAULT"

    goto :goto_0

    :pswitch_1
    const-string v0, "PC_DEFAULT"

    goto :goto_0

    :pswitch_2
    const-string v0, "GENERAL"

    goto :goto_0

    :pswitch_3
    const-string v0, "RADIO"

    goto :goto_0

    :pswitch_4
    const-string v0, "MYFAVORITE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 8

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-wide v4, v0, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static b(Lcn/kuwo/base/bean/ListType;J)Lcn/kuwo/mod/list/MusicListInner;
    .locals 5

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->g()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v2, :cond_0

    const-string v0, "name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";ver="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";op=ADD"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";tmpid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";data="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcn/kuwo/mod/list/CloudHelp;->a(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";ver="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";op=UPDATE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";tmpid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";data="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcn/kuwo/mod/list/CloudHelp;->a(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_fordelete"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";ver="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";op=DEL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";tmpid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";data=\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/StringBuilder;Lcn/kuwo/mod/list/MusicListInner;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/ListMgrImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";ver="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudHelp;->a(Lcn/kuwo/base/bean/ListType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";op=CHECK"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";tmpid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";data="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";sig="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/mod/list/MusicListInner;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0
.end method
