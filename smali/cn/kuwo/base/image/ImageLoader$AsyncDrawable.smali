.class public final Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcn/kuwo/base/image/ImageTask;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/image/ImageTask;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/image/ImageTask;

    return-object v0
.end method
