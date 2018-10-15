.class Lie$4;
.super Ljava/lang/Object;
.source "IflyMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lie;


# direct methods
.method constructor <init>(Lie;)V
    .locals 0
    .param p1, "this$0"    # Lie;

    .prologue
    .line 333
    iput-object p1, p0, Lie$4;->a:Lie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lie$4;->a:Lie;

    invoke-static {v0}, Lie;->a(Lie;)Lic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "IflyMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaPlayer | onError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lie$4;->a:Lie;

    invoke-static {v0}, Lie;->a(Lie;)Lic;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lic;->onError(Landroid/media/MediaPlayer;II)V

    .line 340
    :cond_0
    iget-object v0, p0, Lie$4;->a:Lie;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lie;->a(Lie;Z)Z

    .line 341
    const/4 v0, 0x1

    return v0
.end method
