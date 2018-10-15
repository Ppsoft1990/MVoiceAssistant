.class Lawr$1;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneAudioManager.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawr;


# direct methods
.method constructor <init>(Lawr;)V
    .locals 0
    .param p1, "this$0"    # Lawr;

    .prologue
    .line 93
    iput-object p1, p0, Lawr$1;->a:Lawr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 112
    iget-object v0, p0, Lawr$1;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawr$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lawr$1;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawr$a;

    move-result-object v0

    iget-object v1, p0, Lawr$1;->a:Lawr;

    invoke-static {v1}, Lawr;->b(Lawr;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lawr$a;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lawr$1;->a:Lawr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lawr;->a(Lawr;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 116
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lawr$1;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawr$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lawr$1;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawr$a;

    move-result-object v0

    iget-object v1, p0, Lawr$1;->a:Lawr;

    invoke-static {v1}, Lawr;->b(Lawr;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lawr$a;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lawr$1;->a:Lawr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lawr;->a(Lawr;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 108
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 97
    iget-object v0, p0, Lawr$1;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawr$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lawr$1;->a:Lawr;

    invoke-static {v0}, Lawr;->a(Lawr;)Lawr$a;

    move-result-object v0

    iget-object v1, p0, Lawr$1;->a:Lawr;

    invoke-static {v1}, Lawr;->b(Lawr;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lawr$a;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)V

    .line 100
    :cond_0
    return-void
.end method
