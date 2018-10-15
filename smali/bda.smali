.class Lbda;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbcx;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lbcy;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lbcx;Landroid/graphics/Bitmap;Lbcy;Landroid/os/Handler;)V
    .locals 0
    .param p1, "engine"    # Lbcx;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageLoadingInfo"    # Lbcy;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lbda;->a:Lbcx;

    .line 43
    iput-object p2, p0, Lbda;->b:Landroid/graphics/Bitmap;

    .line 44
    iput-object p3, p0, Lbda;->c:Lbcy;

    .line 45
    iput-object p4, p0, Lbda;->d:Landroid/os/Handler;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 50
    iget-object v2, p0, Lbda;->a:Lbcx;

    iget-object v2, v2, Lbcx;->a:Lbcw;

    iget-boolean v2, v2, Lbcw;->t:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PostProcess image before displaying [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbda;->c:Lbcy;

    iget-object v5, v5, Lbcy;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lbdw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_0
    iget-object v2, p0, Lbda;->c:Lbcy;

    iget-object v2, v2, Lbcy;->e:Lbcu;

    invoke-virtual {v2}, Lbcu;->r()Lbdt;

    move-result-object v1

    .line 52
    .local v1, "processor":Lbdt;
    iget-object v2, p0, Lbda;->b:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lbdt;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, "processedBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lbda;->b:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_1

    .line 54
    iget-object v2, p0, Lbda;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :cond_1
    iget-object v2, p0, Lbda;->d:Landroid/os/Handler;

    new-instance v3, Lbct;

    iget-object v4, p0, Lbda;->c:Lbcy;

    iget-object v5, p0, Lbda;->a:Lbcx;

    invoke-direct {v3, v0, v4, v5}, Lbct;-><init>(Landroid/graphics/Bitmap;Lbcy;Lbcx;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method
