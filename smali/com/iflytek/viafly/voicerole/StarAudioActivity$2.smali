.class Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;
.super Ljava/lang/Object;
.source "StarAudioActivity.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicerole/StarAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c()V

    .line 1002
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 1004
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    const-string/jumbo v1, "\u64ad\u653e\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->a(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c()V

    .line 1011
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$2;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity$a;->sendEmptyMessage(I)Z

    .line 1013
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 995
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->a()V

    .line 996
    return-void
.end method
