.class public Lcn/kuwo/mod/quku/OnlineParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a()Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 1

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 3

    const-string v0, "OnlineParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v4, v0

    move-object v2, v1

    move-object v3, v1

    move-object v0, v1

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :pswitch_1
    const-string v4, "root"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcn/kuwo/mod/quku/OnlineParser;->a()Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v4, "section"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v4, "ad"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ad_ar"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Songlist"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->j(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/SongListInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto :goto_1

    :cond_3
    const-string v4, "radio"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/RadioInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto :goto_1

    :cond_4
    const-string v4, "album"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/AlbumInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto :goto_1

    :cond_5
    const-string v4, "mv"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->h(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/MvInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_6
    const-string v4, "mvpl"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/MvPlInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_7
    const-string v4, "list"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->e(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/BaseQukuItemList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "music"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->f(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/MusicInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_9
    const-string v4, "app"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "pancontent"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "game"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Billboard"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->l(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/BillboardInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_a
    const-string v4, "tab"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/TabInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/BillboardInfo;->a(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "ring"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ringpl"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "unicombag"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "artist"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->k(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/ArtistInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_c
    const-string v4, "qz_list"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->m(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/TemplateAreaInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_d
    const-string v4, "autotag"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcn/kuwo/mod/quku/OnlineParser;->n(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/AutoTagInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :pswitch_2
    const-string v4, "section"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v2}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V

    goto/16 :goto_1

    :cond_e
    const-string v4, "Billboard"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/BillboardInfo;->a(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    goto/16 :goto_1

    :cond_f
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/TabInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/TabInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/TabInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->b(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->d(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->setType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/TabInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intro"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TabInfo;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/online/BaseOnlineSection;
    .locals 4

    const/4 v2, 0x0

    const-string v0, "type"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineBanner;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineBanner;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->setType(Ljava/lang/String;)V

    const-string v1, "start"

    invoke-static {p0, v1, v2}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a(I)V

    const-string v1, "count"

    invoke-static {p0, v1, v2}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->setCount(I)V

    const-string v1, "total"

    invoke-static {p0, v1, v2}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->b(I)V

    const-string v1, "label"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->b(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->setName(Ljava/lang/String;)V

    const-string v1, "mid"

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a(J)V

    const-string v1, "mdigest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->c(Ljava/lang/String;)V

    const-string v1, "app_desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->d(Ljava/lang/String;)V

    const-string v1, "app_url"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->e(Ljava/lang/String;)V

    const-string v1, "ad_text"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->f(Ljava/lang/String;)V

    const-string v1, "android_url"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->g(Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->h(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->i(Ljava/lang/String;)V

    const-string v1, "ar_url"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->j(Ljava/lang/String;)V

    const-string v1, "ad_type"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->k(Ljava/lang/String;)V

    const-string v1, "issub"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->l(Ljava/lang/String;)V

    const-string v1, "mtype"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "mv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineMv;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineMv;-><init>()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineMusic;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineMusic;-><init>()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "square"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineSquare;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineSquare;-><init>()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "mvsquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineMvSquare;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineMvSquare;-><init>()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "panBanner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcn/kuwo/base/bean/online/OnlinePanBanner;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlinePanBanner;-><init>()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "panSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcn/kuwo/base/bean/online/OnlinePanSquare;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlinePanSquare;-><init>()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "panTagSquare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcn/kuwo/base/bean/online/OnlinePanTagSquare;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlinePanTagSquare;-><init>()V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    goto/16 :goto_0
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/AlbumInfo;
    .locals 4

    new-instance v0, Lcn/kuwo/base/bean/quku/AlbumInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/AlbumInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setName(Ljava/lang/String;)V

    const-string v1, "artist"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setArtist(Ljava/lang/String;)V

    const-string v1, "company"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->b(Ljava/lang/String;)V

    const-string v1, "publish"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->c(Ljava/lang/String;)V

    const-string v1, "hot"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->a(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->h(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->d(Ljava/lang/String;)V

    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->k(Ljava/lang/String;)V

    const-string v1, "update_time"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->g(Ljava/lang/String;)V

    const-string v1, "artist_id"

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/quku/AlbumInfo;->a(J)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->j(Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/BaseQukuItemList;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->h(Ljava/lang/String;)V

    const-string v1, "info"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->b(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d(Ljava/lang/String;)V

    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->k(Ljava/lang/String;)V

    const-string v1, "issub"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->e(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->j(Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/MusicInfo;
    .locals 4

    new-instance v1, Lcn/kuwo/base/bean/quku/MusicInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/quku/MusicInfo;-><init>()V

    const-string v0, "rid"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/quku/MusicInfo;->a(J)V

    :cond_0
    const-string v0, "name"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setName(Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setArtist(Ljava/lang/String;)V

    const-string v0, "album"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setAlbum(Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setDuration(I)V

    :cond_1
    const-string v0, "format"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->d(Ljava/lang/String;)V

    const-string v0, "hot"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->e(Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->f(Ljava/lang/String;)V

    const-string v0, "img"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v0, "small_img"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->h(Ljava/lang/String;)V

    const-string v0, "mvflag"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->l(Ljava/lang/String;)V

    const-string v0, "mvquality"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->m(Ljava/lang/String;)V

    const-string v0, "minfo"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->n(Ljava/lang/String;)V

    const-string v0, "kmark"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->b(Ljava/lang/String;)V

    const-string v0, "trend"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->o(Ljava/lang/String;)V

    const-string v0, "extend"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->i(Ljava/lang/String;)V

    const-string v0, "isnew"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->k(Ljava/lang/String;)V

    const-string v0, "audio_id"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "-1"

    :cond_2
    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->r(Ljava/lang/String;)V

    const-string v0, "float_adid"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->s(Ljava/lang/String;)V

    const-string v0, "pic_label"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/MvPlInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/MvPlInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/MvPlInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->h(Ljava/lang/String;)V

    const-string v1, "info"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->b(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/MvPlInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intro"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvPlInfo;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method private static h(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/MvInfo;
    .locals 4

    new-instance v0, Lcn/kuwo/base/bean/quku/MvInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/MvInfo;-><init>()V

    const-string v1, "rid"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/quku/MvInfo;->a(J)V

    :cond_0
    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setName(Ljava/lang/String;)V

    const-string v1, "artist"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setArtist(Ljava/lang/String;)V

    const-string v1, "album"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setAlbum(Ljava/lang/String;)V

    const-string v1, "duration"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setDuration(I)V

    :cond_1
    const-string v1, "format"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->d(Ljava/lang/String;)V

    const-string v1, "hot"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->e(Ljava/lang/String;)V

    const-string v1, "res"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->f(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->h(Ljava/lang/String;)V

    const-string v1, "mvquality"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->m(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->l(Ljava/lang/String;)V

    const-string v1, "trend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->o(Ljava/lang/String;)V

    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->k(Ljava/lang/String;)V

    const-string v1, "uploader"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->p(Ljava/lang/String;)V

    const-string v1, "uptime"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->q(Ljava/lang/String;)V

    return-object v0
.end method

.method private static i(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/RadioInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/RadioInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/RadioInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->setId(Ljava/lang/String;)V

    const-string v1, "radio_id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->setCid(I)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->setName(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->j(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->h(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->a(Ljava/lang/String;)V

    const-string v1, "listencnt"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/RadioInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intro"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->j(Ljava/lang/String;)V

    :cond_0
    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/RadioInfo;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method private static j(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/SongListInfo;
    .locals 4

    new-instance v1, Lcn/kuwo/base/bean/quku/SongListInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/quku/SongListInfo;-><init>()V

    const-string v0, "id"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->setId(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->setName(Ljava/lang/String;)V

    const-string v0, "img"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_100."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_100."

    const-string v3, "b."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v0, "small_img"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->h(Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->b(Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->a(Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "intro"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "extend"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->i(Ljava/lang/String;)V

    const-string v0, "isnew"

    invoke-static {p0, v0}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/SongListInfo;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v2, "_120."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "_120."

    const-string v3, "b."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "_150."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_150."

    const-string v3, "b."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static k(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/ArtistInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/ArtistInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/ArtistInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->h(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->a(Ljava/lang/String;)V

    const-string v1, "albumcnt"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->b(Ljava/lang/String;)V

    const-string v1, "mvcnt"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->d(Ljava/lang/String;)V

    const-string v1, "musiccnt"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->e(Ljava/lang/String;)V

    const-string v1, "radio_id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->f(Ljava/lang/String;)V

    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method private static l(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/BillboardInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/BillboardInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/BillboardInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->h(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->b(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->d(Ljava/lang/String;)V

    const-string v1, "radio_id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->a(Ljava/lang/String;)V

    const-string v1, "publish"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/BillboardInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intro"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BillboardInfo;->k(Ljava/lang/String;)V

    return-object v0
.end method

.method private static m(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/TemplateAreaInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->h(Ljava/lang/String;)V

    const-string v1, "info"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->b(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->d(Ljava/lang/String;)V

    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->k(Ljava/lang/String;)V

    const-string v1, "issub"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->e(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->j(Ljava/lang/String;)V

    return-object v0
.end method

.method private static n(Lorg/xmlpull/v1/XmlPullParser;)Lcn/kuwo/base/bean/quku/AutoTagInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/AutoTagInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/AutoTagInfo;-><init>()V

    const-string v1, "id"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->setName(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "small_img"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->h(Ljava/lang/String;)V

    const-string v1, "info"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->b(Ljava/lang/String;)V

    const-string v1, "digest"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->d(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->a(Ljava/lang/String;)V

    const-string v1, "extend"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->i(Ljava/lang/String;)V

    const-string v1, "isnew"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->k(Ljava/lang/String;)V

    const-string v1, "issub"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->e(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {p0, v1}, Lcn/kuwo/mod/quku/OnlineParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AutoTagInfo;->j(Ljava/lang/String;)V

    return-object v0
.end method
