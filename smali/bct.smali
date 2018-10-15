.class final Lbct;
.super Ljava/lang/Object;
.source "DisplayBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/widget/ImageView;

.field private final d:Ljava/lang/String;

.field private final e:Lbdm;

.field private final f:Lbdd;

.field private final g:Lbcx;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lbcy;Lbcx;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageLoadingInfo"    # Lbcy;
    .param p3, "engine"    # Lbcx;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lbct;->a:Landroid/graphics/Bitmap;

    .line 50
    iget-object v0, p2, Lbcy;->a:Ljava/lang/String;

    iput-object v0, p0, Lbct;->b:Ljava/lang/String;

    .line 51
    iget-object v0, p2, Lbcy;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lbct;->c:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p2, Lbcy;->b:Ljava/lang/String;

    iput-object v0, p0, Lbct;->d:Ljava/lang/String;

    .line 53
    iget-object v0, p2, Lbcy;->e:Lbcu;

    invoke-virtual {v0}, Lbcu;->s()Lbdm;

    move-result-object v0

    iput-object v0, p0, Lbct;->e:Lbdm;

    .line 54
    iget-object v0, p2, Lbcy;->f:Lbdd;

    iput-object v0, p0, Lbct;->f:Lbdd;

    .line 55
    iput-object p3, p0, Lbct;->g:Lbcx;

    .line 56
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lbct;->g:Lbcx;

    iget-object v2, p0, Lbct;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lbcx;->a(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lbct;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Z)V
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lbct;->h:Z

    .line 78
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-direct {p0}, Lbct;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-boolean v1, p0, Lbct;->h:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ImageView is reused for another image. Task is cancelled. [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbct;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lbct;->f:Lbdd;

    iget-object v2, p0, Lbct;->b:Ljava/lang/String;

    iget-object v3, p0, Lbct;->c:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v3}, Lbdd;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-boolean v1, p0, Lbct;->h:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Display image in ImageView [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbct;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_2
    iget-object v1, p0, Lbct;->e:Lbdm;

    iget-object v2, p0, Lbct;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lbct;->c:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v3}, Lbdm;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "displayedBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lbct;->f:Lbdd;

    iget-object v2, p0, Lbct;->b:Ljava/lang/String;

    iget-object v3, p0, Lbct;->c:Landroid/widget/ImageView;

    invoke-interface {v1, v2, v3, v0}, Lbdd;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v1, p0, Lbct;->g:Lbcx;

    iget-object v2, p0, Lbct;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lbcx;->b(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
