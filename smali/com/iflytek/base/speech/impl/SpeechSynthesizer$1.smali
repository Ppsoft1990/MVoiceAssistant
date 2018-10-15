.class Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;
.super Ljava/lang/Object;
.source "SpeechSynthesizer.java"

# interfaces
.implements Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Ljava/lang/String;Lju;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

.field final synthetic b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;


# direct methods
.method constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioGet([BI)Z
    .locals 2
    .param p1, "audioData"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v0, v1, :cond_1

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v0

    invoke-virtual {v0}, Ljh;->n()Ljj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v0

    invoke-virtual {v0}, Ljh;->n()Ljj;

    move-result-object v0

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Ljj;->a([BI)V

    .line 866
    :cond_1
    :goto_0
    invoke-static {p2}, Ljl;->a(I)V

    .line 867
    const/4 v0, 0x1

    return v0

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a([BI)V

    goto :goto_0
.end method

.method public onLastTrafficFlow(II)V
    .locals 1
    .param p1, "up"    # I
    .param p2, "down"    # I

    .prologue
    .line 871
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->j(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljo;->a(II)V

    .line 874
    invoke-static {p1, p2}, Ljl;->a(II)V

    .line 876
    :cond_0
    return-void
.end method
