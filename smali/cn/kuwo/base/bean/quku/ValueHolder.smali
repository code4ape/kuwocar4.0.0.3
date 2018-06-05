.class public Lcn/kuwo/base/bean/quku/ValueHolder;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# instance fields
.field private H:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "qukuType"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->a:Ljava/lang/String;

    const-string v0, "title"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->b:Ljava/lang/String;

    const-string v0, "imageUrl"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->c:Ljava/lang/String;

    const-string v0, "imagePath"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->d:Ljava/lang/String;

    const-string v0, "description"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->e:Ljava/lang/String;

    const-string v0, "publish"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->f:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->g:Ljava/lang/String;

    const-string v0, "digest"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->h:Ljava/lang/String;

    const-string v0, "musicTabId"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->i:Ljava/lang/String;

    const-string v0, "musicTabDigest"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->j:Ljava/lang/String;

    const-string v0, "artist"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->k:Ljava/lang/String;

    const-string v0, "artistCate"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->l:Ljava/lang/String;

    const-string v0, "album"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->m:Ljava/lang/String;

    const-string v0, "artistType"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->n:Ljava/lang/String;

    const-string v0, "artistMusicCount"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->o:Ljava/lang/String;

    const-string v0, "artistMvCount"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->p:Ljava/lang/String;

    const-string v0, "artistAlbumCount"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->q:Ljava/lang/String;

    const-string v0, "categoryType"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->r:Ljava/lang/String;

    const-string v0, "categoryMusicCount"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->s:Ljava/lang/String;

    const-string v0, "categorySonglistCount"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->t:Ljava/lang/String;

    const-string v0, "qukuLevel"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->u:Ljava/lang/String;

    const-string v0, "isTab"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->v:Ljava/lang/String;

    const-string v0, "isTabNeedSaveHistory"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->w:Ljava/lang/String;

    const-string v0, "url"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->x:Ljava/lang/String;

    const-string v0, "isLoadFailed"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->y:Ljava/lang/String;

    const-string v0, "isRefresh"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->z:Ljava/lang/String;

    const-string v0, "isForcedLoadCache"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->A:Ljava/lang/String;

    const-string v0, "isLoadingMore"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->B:Ljava/lang/String;

    const-string v0, "isPush"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->C:Ljava/lang/String;

    const-string v0, "pageDepth"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->D:Ljava/lang/String;

    const-string v0, "pagePsrc"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->E:Ljava/lang/String;

    const-string v0, "isRing"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->F:Ljava/lang/String;

    const-string v0, "sectionIndex"

    sput-object v0, Lcn/kuwo/base/bean/quku/ValueHolder;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/bean/quku/ValueHolder;->H:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/bean/quku/ValueHolder;
    .locals 4

    new-instance v1, Lcn/kuwo/base/bean/quku/ValueHolder;

    invoke-direct {v1}, Lcn/kuwo/base/bean/quku/ValueHolder;-><init>()V

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/ValueHolder;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/base/bean/quku/ValueHolder;->H:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcn/kuwo/base/bean/quku/ValueHolder;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/ValueHolder;->H:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/bean/quku/ValueHolder;->a()Lcn/kuwo/base/bean/quku/ValueHolder;

    move-result-object v0

    return-object v0
.end method
