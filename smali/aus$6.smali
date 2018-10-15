.class Laus$6;
.super Ljava/lang/Object;
.source "CommonMediaHandler.java"

# interfaces
.implements Lod$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laus;


# direct methods
.method constructor <init>(Laus;)V
    .locals 0
    .param p1, "this$0"    # Laus;

    .prologue
    .line 654
    iput-object p1, p0, Laus$6;->a:Laus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 663
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->c(Laus;)Lava;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->c(Laus;)Lava;

    move-result-object v2

    invoke-virtual {v2}, Lava;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->l(Laus;)I

    .line 665
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->m(Laus;)I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 666
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->n(Laus;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Laus$6;->a:Laus;

    iget-object v4, p0, Laus$6;->a:Laus;

    invoke-static {v4}, Laus;->k(Laus;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    invoke-static {v3, v4}, Laus;->a(Laus;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laus$6;->a:Laus;

    iget-object v4, v4, Laus;->d:Lod$a;

    invoke-static {v2, v5, v3, v4}, Lawd;->a(Landroid/content/Context;ZLjava/lang/String;Lod$a;)V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    const/4 v2, 0x2

    iget-object v3, p0, Laus$6;->a:Laus;

    invoke-static {v3}, Laus;->m(Laus;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 668
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Laus$6;->a:Laus;

    invoke-static {v3}, Laus;->o(Laus;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Laus$6;->a:Laus;

    iget-object v3, v3, Laus;->c:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 669
    :cond_2
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->m(Laus;)I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 672
    :try_start_0
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->p(Laus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "ringtone/notice.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 673
    .local v1, "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->q(Laus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    invoke-virtual {v2, v1}, Lod;->b(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v1    # "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 679
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->m(Laus;)I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 680
    iget-object v2, p0, Laus$6;->a:Laus;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Laus;->a(Laus;I)I

    .line 683
    :try_start_1
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->r(Laus;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "ringtone/notice.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 684
    .restart local v1    # "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    iget-object v2, p0, Laus$6;->a:Laus;

    invoke-static {v2}, Laus;->s(Laus;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    invoke-virtual {v2, v1}, Lod;->b(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 685
    .end local v1    # "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v0

    .line 686
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Laus$6;->a:Laus;

    invoke-static {v0}, Laus;->a(Laus;)V

    .line 659
    return-void
.end method
