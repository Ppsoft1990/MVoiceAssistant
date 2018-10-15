.class Lvg$1$1;
.super Ljava/lang/Object;
.source "BannerImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvg$1;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lvg$1;


# direct methods
.method constructor <init>(Lvg$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lvg$1;

    .prologue
    .line 129
    iput-object p1, p0, Lvg$1$1;->b:Lvg$1;

    iput-object p2, p0, Lvg$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lvg$1$1;->b:Lvg$1;

    iget-object v0, v0, Lvg$1;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lvg$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    return-void
.end method
