.class public Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;
.super Laht;
.source "HomeWakeupHelper.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;
    }
.end annotation


# instance fields
.field private a:Z

.field private c:Z

.field private d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 36
    iput-boolean v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a:Z

    .line 38
    iput-boolean v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c:Z

    .line 48
    return-void
.end method

.method private b(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lahp;->d(Z)V

    .line 199
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "carmode is open ,HomeLongPressMode return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a:Z

    if-eqz v0, :cond_1

    .line 204
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "wake intent enter home not start wake engine"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean v2, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a:Z

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-eq v0, v1, :cond_2

    .line 211
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "interaction scene not normal, not start wake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->needStartWakeEngine()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "needStartWakeEngine false, not start wake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setNeedStartWakeEngine(Z)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->l()Lpp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0, v2, v2, p1, p2}, Lbbp;->a(IIJ)V

    .line 228
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "Ivw|enterSpeechWake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "enterSpeechWake | showHighlight"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_4
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->j()Z

    move-result v0

    if-nez v0, :cond_5

    .line 232
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "enterSpeechWake mic_normal"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    :cond_5
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "TelSmsBlackboard.isCancel():true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 284
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "sendFinishWakeMessage"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->x()V

    .line 286
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->q()Lahw;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c:Z

    if-eqz v0, :cond_2

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lbbp;->b(J)V

    .line 293
    iget-boolean v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c:Z

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c:Z

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->k()V

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 5
    .param p1, "delayTime"    # J

    .prologue
    .line 172
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "sendStartWakeMessage"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->q()Lahw;

    move-result-object v0

    const/4 v1, 0x1

    long-to-int v2, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 111
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    return-void

    .line 113
    :pswitch_1
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_WAIT_WAKE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_START_WAKE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    sget-object v4, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onPause:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    sget-object v4, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStop:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    sget-object v4, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onDestroy:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    if-ne v3, v4, :cond_1

    .line 122
    :cond_0
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_START_WAKE, current state is not right, return"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v3

    .line 127
    .local v0, "delayTime":J
    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->b(J)V

    goto :goto_0

    .line 130
    .end local v0    # "delayTime":J
    :pswitch_3
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_WAKE_ERROR"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 132
    const-wide/16 v4, 0x4b0

    invoke-direct {p0, v4, v5}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->b(J)V

    goto :goto_0

    .line 135
    :pswitch_4
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_OFF_WAKE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :pswitch_5
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_STOP_WAKE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->k()V

    goto :goto_0

    .line 142
    :pswitch_6
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_FINISH_WAKE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :pswitch_7
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_WAKE_PLAY_COMPLETE"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->k()V

    goto/16 :goto_0

    .line 151
    :pswitch_8
    const-string/jumbo v3, "HomeWakeupHelper"

    const-string/jumbo v4, "MSG_WAKE_SUCCESS"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100046"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v3

    invoke-virtual {v3}, Lahp;->l()Lpp;

    move-result-object v3

    .line 156
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->o()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c036c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 155
    invoke-virtual {v3, v4, v5, p0}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onPause:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    iput-object v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 77
    invoke-super {p0}, Laht;->a()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onCreate:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    iput-object v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 53
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 64
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onResume:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    iput-object v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 65
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStop:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    iput-object v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->releaseDelayWakeLock()V

    .line 103
    invoke-direct {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->w()V

    .line 104
    invoke-super {p0}, Laht;->b()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c(Landroid/content/Intent;)V

    .line 95
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public b_()Z
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onStart:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    iput-object v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 59
    invoke-super {p0}, Laht;->b_()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 261
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.wake_enter_home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iput-boolean v4, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->c:Z

    .line 266
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->bluetooth_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 267
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxb;->a(Ljava/lang/String;)V

    .line 274
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->u()Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->g()Z

    .line 275
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->u()Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->c()V

    .line 276
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->q()Lahw;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lahw;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    iput-boolean v4, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a:Z

    .line 281
    :cond_2
    return-void

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->speech_wake:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    .line 271
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxb;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;->onDestroy:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    iput-object v0, p0, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->d:Lcom/iflytek/viafly/homehelper/HomeWakeupHelper$HomeLifeState;

    .line 71
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public c(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    .line 83
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    const/4 v2, 0x2

    const-class v3, Lcom/iflytek/framework/plugin/interfaces/spokenevaluate/ISpokenEvaluateAbility;

    invoke-interface {v1, v2, v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/interfaces/spokenevaluate/ISpokenEvaluateAbility;

    .line 85
    .local v0, "spokenEvaluateAbility":Lcom/iflytek/framework/plugin/interfaces/spokenevaluate/ISpokenEvaluateAbility;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/spokenevaluate/ISpokenEvaluateAbility;->isGameRuning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->a(J)V

    .line 89
    :cond_1
    invoke-super {p0, p1}, Laht;->c(Z)Z

    move-result v1

    return v1
.end method

.method public h()V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "sendStopWakeMessage"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->q()Lahw;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 186
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "sendPlayCompleteMessage"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->q()Lahw;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "Ivw|enterStopWake"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0}, Lbbp;->d()V

    .line 245
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->c(Lju;)V

    .line 249
    return-void
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v0

    .line 253
    .local v0, "intentType":Lcom/iflytek/framework/business/speech/InteractionScene;
    const-string/jumbo v1, "HomeWakeupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get Intent Type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz v0, :cond_0

    sget-object v1, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-eq v1, v0, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 257
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 311
    const-string/jumbo v0, "HomeWakeupHelper"

    const-string/jumbo v1, "onPlayCompletedCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->j()V

    .line 313
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 303
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 329
    return-void
.end method
