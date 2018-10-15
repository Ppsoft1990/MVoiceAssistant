.class Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;
.super Ljava/lang/Object;
.source "MusicPlayerActivity.java"

# interfaces
.implements Laqc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

.field final synthetic b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity$4;Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    iput-object p2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->a:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 594
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->a:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->a:Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/business/entry/MusicCacheSongItem;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbcv;->a()Lbcv;

    move-result-object v2

    invoke-virtual {v2}, Lbcv;->b()Lbce;

    move-result-object v2

    invoke-static {v1, v2}, Lbdb;->a(Ljava/lang/String;Lbce;)Ljava/io/File;

    move-result-object v0

    .line 597
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 598
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    iget-object v3, v3, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->o(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d()Lbcu;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    .line 600
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    iget-object v1, v1, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    iget-object v2, v2, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Laqc;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 607
    .end local v0    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    iget-object v1, v1, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->n(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v1

    const-string/jumbo v2, "drawable://2130837800"

    iget-object v3, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$4$1;->b:Lcom/iflytek/viafly/music/MusicPlayerActivity$4;

    iget-object v3, v3, Lcom/iflytek/viafly/music/MusicPlayerActivity$4;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->o(Lcom/iflytek/viafly/music/MusicPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->d()Lbcu;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;)V

    goto :goto_0
.end method
