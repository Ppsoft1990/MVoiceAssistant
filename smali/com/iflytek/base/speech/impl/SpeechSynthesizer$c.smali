.class Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;
.super Lcom/iflytek/yd/base/BaseThread;
.source "SpeechSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lju;

.field final synthetic c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0}, Lcom/iflytek/yd/base/BaseThread;-><init>()V

    .line 611
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->b:Lju;

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
    .param p2, "x1"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$1;

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V

    return-void
.end method

.method private a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;)V
    .locals 4
    .param p1, "message"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;

    .prologue
    .line 661
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    if-nez v1, :cond_2

    .line 663
    :cond_0
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "handleMessage message null "

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1
    :goto_0
    return-void

    .line 666
    :cond_2
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$2;->a:[I

    iget-object v2, p1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 668
    :pswitch_0
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "handleMessage | AISOUND_INIT"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Z

    goto :goto_0

    .line 672
    :pswitch_1
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "handleMessage | TTS_ADD"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscTtsEngine;

    move-result-object v1

    if-nez v1, :cond_3

    .line 674
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V

    .line 676
    :cond_3
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 677
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Z

    .line 679
    :cond_4
    iget-object v0, p1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 680
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 681
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->d:I

    .line 683
    :cond_5
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v1

    invoke-virtual {v1}, Ljh;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cloud"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 684
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v2

    invoke-virtual {v2}, Ljh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 685
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_100094"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 687
    :cond_6
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->b:Lju;

    invoke-static {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Ljava/lang/String;Lju;)I

    .line 705
    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljb;->a(Lir;)V

    goto/16 :goto_0

    .line 690
    :cond_7
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->f(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 691
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v1

    invoke-virtual {v1}, Ljh;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 693
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v1

    invoke-virtual {v1}, Ljh;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xuduo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .line 694
    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v1

    invoke-virtual {v1}, Ljh;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "maming"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 695
    :cond_8
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v1

    const-string/jumbo v2, "vixf"

    invoke-virtual {v1, v2}, Ljh;->a(Ljava/lang/String;)V

    .line 698
    :cond_9
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->b:Lju;

    invoke-static {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Ljava/lang/String;Lju;)I

    goto :goto_1

    .line 701
    :cond_a
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->h(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v1

    invoke-virtual {v1}, Lwr;->a()V

    .line 702
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->b:Lju;

    invoke-static {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Ljava/lang/String;Lju;)I

    goto :goto_1

    .line 708
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "handleMessage | UNINIT"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v1

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->UNINIT:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v1, v2, :cond_1

    .line 710
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->i(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)I

    goto/16 :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 633
    :goto_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;Lju;)V
    .locals 2
    .param p1, "message"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    .param p2, "ttsListener"    # Lju;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .line 621
    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v0, v1, :cond_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lju;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lju;)I

    .line 623
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->c:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v0, p2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lju;)Lju;

    .line 625
    :cond_1
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->b:Lju;

    .line 626
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->d:I

    return v0
.end method

.method protected threadProc()V
    .locals 5

    .prologue
    .line 640
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "threadProc running = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->running:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->running:Z

    if-eqz v2, :cond_1

    .line 642
    const/4 v1, 0x0

    .line 644
    .local v1, "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    check-cast v1, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .restart local v1    # "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "threadProc message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-eqz v1, :cond_0

    .line 651
    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$c;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;)V

    goto :goto_0

    .line 645
    .end local v1    # "message":Lcom/iflytek/base/speech/impl/SpeechSynthesizer$b;
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 654
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
