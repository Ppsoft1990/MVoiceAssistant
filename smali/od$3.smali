.class Lod$3;
.super Ljava/lang/Object;
.source "IflyRingToneManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 750
    iput-object p1, p0, Lod$3;->a:Lod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 752
    const-string/jumbo v1, "RingToneManager"

    const-string/jumbo v2, "ring tone player | onError"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v1, p0, Lod$3;->a:Lod;

    invoke-static {v1}, Lod;->a(Lod;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 754
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "playFlag":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->h()V

    .line 760
    .end local v0    # "playFlag":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lod$3;->a:Lod;

    invoke-static {v1}, Lod;->a(Lod;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 761
    iget-object v1, p0, Lod$3;->a:Lod;

    invoke-static {v1, v3}, Lod;->a(Lod;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 762
    iget-object v1, p0, Lod$3;->a:Lod;

    invoke-static {v1}, Lod;->b(Lod;)Lod$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lod$3;->a:Lod;

    invoke-static {v1}, Lod;->b(Lod;)Lod$a;

    move-result-object v1

    invoke-interface {v1}, Lod$a;->b()V

    .line 764
    iget-object v1, p0, Lod$3;->a:Lod;

    invoke-static {v1, v3}, Lod;->a(Lod;Lod$a;)Lod$a;

    .line 767
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
