.class Lcom/iflytek/common/speech/wake/SpeechWake$a;
.super Landroid/os/Handler;
.source "SpeechWake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/speech/wake/SpeechWake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/speech/wake/SpeechWake;


# direct methods
.method public constructor <init>(Lcom/iflytek/common/speech/wake/SpeechWake;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/iflytek/common/speech/wake/SpeechWake$a;->a:Lcom/iflytek/common/speech/wake/SpeechWake;

    .line 174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 180
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 182
    :pswitch_0
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "MSG_START_WAKE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake$a;->a:Lcom/iflytek/common/speech/wake/SpeechWake;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake;II)V

    goto :goto_0

    .line 186
    :pswitch_1
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "MSG_STOP_WAKE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake$a;->a:Lcom/iflytek/common/speech/wake/SpeechWake;

    invoke-static {v1}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake;)V

    goto :goto_0

    .line 190
    :pswitch_2
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "MSG_LOCK_SCREEN"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake$a;->a:Lcom/iflytek/common/speech/wake/SpeechWake;

    invoke-static {v1}, Lcom/iflytek/common/speech/wake/SpeechWake;->b(Lcom/iflytek/common/speech/wake/SpeechWake;)V

    goto :goto_0

    .line 194
    :pswitch_3
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "MSG_UNLOCK_SCREEN"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake$a;->a:Lcom/iflytek/common/speech/wake/SpeechWake;

    invoke-static {v1}, Lcom/iflytek/common/speech/wake/SpeechWake;->c(Lcom/iflytek/common/speech/wake/SpeechWake;)V

    goto :goto_0

    .line 198
    :pswitch_4
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "MSG_WAKE_HOME"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake$a;->a:Lcom/iflytek/common/speech/wake/SpeechWake;

    invoke-static {v1}, Lcom/iflytek/common/speech/wake/SpeechWake;->d(Lcom/iflytek/common/speech/wake/SpeechWake;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqb;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 203
    .local v0, "wakeResult":I
    invoke-static {}, Lcom/iflytek/common/speech/wake/SpeechWake;->a()Lqa;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lqa;->a(II)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
