.class Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;
.super Ljava/lang/Object;
.source "OfflineVoiceView.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->c()V

    .line 355
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 357
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    const-string/jumbo v1, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->c()V

    .line 364
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$1;->a:Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;->a(Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView;)Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/view/OfflineVoiceView$a;->sendEmptyMessage(I)Z

    .line 366
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 348
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->a()V

    .line 349
    return-void
.end method
