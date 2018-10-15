.class Laqc$4$1;
.super Ljava/lang/Object;
.source "MusicCoverHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqc$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Laqc$4;


# direct methods
.method constructor <init>(Laqc$4;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Laqc$4;

    .prologue
    .line 148
    iput-object p1, p0, Laqc$4$1;->b:Laqc$4;

    iput-object p2, p0, Laqc$4$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Laqc$4$1;->b:Laqc$4;

    iget-object v0, v0, Laqc$4;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Laqc$4$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    return-void
.end method
