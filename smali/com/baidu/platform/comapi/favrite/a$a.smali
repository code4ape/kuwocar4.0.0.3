.class Lcom/baidu/platform/comapi/favrite/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/favrite/a;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/favrite/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/favrite/a$a;->a:Lcom/baidu/platform/comapi/favrite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/platform/comapi/favrite/a$a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
