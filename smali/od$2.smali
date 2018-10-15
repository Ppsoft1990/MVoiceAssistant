.class Lod$2;
.super Ljava/lang/Object;
.source "IflyRingToneManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lod;


# direct methods
.method constructor <init>(Lod;)V
    .locals 0
    .param p1, "this$0"    # Lod;

    .prologue
    .line 714
    iput-object p1, p0, Lod$2;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 716
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "ring tone player | onCompletion"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, p0, Lod$2;->a:Lod;

    invoke-static {v2}, Lod;->a(Lod;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 718
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "ring tone player | onCompletion, mMediaPlayer is null-->return"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v2, p0, Lod$2;->a:Lod;

    invoke-static {v2}, Lod;->a(Lod;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "ring tone player | onCompletion, mMediaPlayer.isLooping== true-->return"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 727
    :cond_2
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 728
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "playFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 730
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->h()V

    .line 734
    .end local v1    # "playFlag":Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v2, p0, Lod$2;->a:Lod;

    invoke-static {v2}, Lod;->a(Lod;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_1
    iget-object v2, p0, Lod$2;->a:Lod;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lod;->a(Lod;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 739
    iget-object v2, p0, Lod$2;->a:Lod;

    invoke-static {v2}, Lod;->b(Lod;)Lod$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lod$2;->a:Lod;

    invoke-static {v2}, Lod;->b(Lod;)Lod$a;

    move-result-object v2

    invoke-interface {v2}, Lod$a;->a()V

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RingToneManager"

    const-string/jumbo v3, "mMediaPlayer.release() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
