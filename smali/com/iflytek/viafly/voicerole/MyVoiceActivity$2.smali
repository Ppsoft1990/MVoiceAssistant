.class Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;
.super Ljava/lang/Object;
.source "MyVoiceActivity.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/MyVoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V

    .line 329
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 331
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    const-string/jumbo v1, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)V

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$2;->a:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;)Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$a;->sendEmptyMessage(I)Z

    .line 340
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 322
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->a()V

    .line 323
    return-void
.end method
