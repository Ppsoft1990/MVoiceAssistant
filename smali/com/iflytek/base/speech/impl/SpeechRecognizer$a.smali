.class final Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2329
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 2330
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->b:Z

    .line 2331
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 2333
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->b:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 2338
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2372
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCallbackHandler error msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    :goto_0
    return-void

    .line 2340
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->J(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    .line 2341
    iput-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->b:Z

    goto :goto_0

    .line 2344
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    goto :goto_0

    .line 2347
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    goto :goto_0

    .line 2350
    :pswitch_3
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[BZ)V

    goto :goto_0

    .line 2353
    :pswitch_4
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[BZ)V

    goto :goto_0

    .line 2356
    :pswitch_5
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/lang/String;)V

    goto :goto_0

    .line 2359
    :pswitch_6
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "MSG_CALLBACK_WAIT_NET_FINISH Ok."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    goto :goto_0

    .line 2363
    :pswitch_7
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->K(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    goto :goto_0

    .line 2366
    :pswitch_8
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->L(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    goto :goto_0

    .line 2369
    :pswitch_9
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->M(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    goto :goto_0

    .line 2338
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
