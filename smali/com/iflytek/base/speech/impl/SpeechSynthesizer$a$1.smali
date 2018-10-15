.class Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;
.super Ljava/util/TimerTask;
.source "SpeechSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

.field final synthetic b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;


# direct methods
.method constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "time up | stop msc tts"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;Z)Z

    .line 1204
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    const v2, 0xc3518

    iput v2, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->a:I

    .line 1205
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    iget-object v0, v0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;->stop()V

    .line 1206
    invoke-static {}, Ljl;->d()V

    .line 1210
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1212
    return-void

    .line 1208
    :cond_0
    :try_start_1
    const-string/jumbo v0, "SPEECH_SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "time up pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
