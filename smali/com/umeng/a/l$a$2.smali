.class Lcom/umeng/a/l$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/umeng/a/l$a;


# direct methods
.method constructor <init>(Lcom/umeng/a/l$a;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/a/l$a$2;->a:Lcom/umeng/a/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "um"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
