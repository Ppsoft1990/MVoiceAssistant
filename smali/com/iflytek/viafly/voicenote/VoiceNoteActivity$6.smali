.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Lbaq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 786
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 789
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e(Lju;)I

    .line 791
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    .line 792
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 797
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMicUp()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    .line 780
    return-void
.end method
