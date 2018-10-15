.class Laxa$2;
.super Ljava/lang/Object;
.source "ScheduleToneSetHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxa;->a(Landroid/net/Uri;IILandroid/media/MediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic b:Laxa;


# direct methods
.method constructor <init>(Laxa;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "this$0"    # Laxa;

    .prologue
    .line 171
    iput-object p1, p0, Laxa$2;->b:Laxa;

    iput-object p2, p0, Laxa$2;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 174
    iget-object v0, p0, Laxa$2;->b:Laxa;

    invoke-static {v0}, Laxa;->c(Laxa;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Laxa$2;->b:Laxa;

    invoke-static {v0}, Laxa;->d(Laxa;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 176
    iget-object v0, p0, Laxa$2;->b:Laxa;

    invoke-static {v0}, Laxa;->e(Laxa;)I

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Laxa$2;->b:Laxa;

    invoke-static {v0}, Laxa;->d(Laxa;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 180
    iget-object v0, p0, Laxa$2;->b:Laxa;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Laxa;->a(Laxa;I)I

    .line 181
    iget-object v0, p0, Laxa$2;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Laxa$2;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Laxa$2;->b:Laxa;

    invoke-static {v1}, Laxa;->d(Laxa;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
