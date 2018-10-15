.class public Lqb;
.super Ljava/lang/Object;
.source "SpeechWakeHelper.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmccstop_wake"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    if-eqz p0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Context;)Lcom/iflytek/common/speech/wake/SpeechWake;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;IIJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wakeScene"    # I
    .param p2, "wakeFrom"    # I
    .param p3, "delayTime"    # J

    .prologue
    .line 33
    invoke-static {p0}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string/jumbo v1, "SpeechWakeHelper"

    const-string/jumbo v2, "startWake | blue tooth connect, not open speech wake"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lqb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    const-string/jumbo v1, "SpeechWakeHelper"

    const-string/jumbo v2, "startWake | wake is close --->return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmccstart_wake"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "extra_from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "extra_scene"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "extra_delay_time"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Context;)Lcom/iflytek/common/speech/wake/SpeechWake;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayTime"    # J

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcclock_screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "extra_delay_time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Context;)Lcom/iflytek/common/speech/wake/SpeechWake;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Intent;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOpen"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lqb;->a(Landroid/content/Context;IIJ)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {p0}, Lqb;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP"

    invoke-virtual {v0, v1}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.wake_enter_home"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/high16 v2, 0x10400000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SpeechWakeHelper"

    const-string/jumbo v3, "onWakeHandleHome | can not open Home activity."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delayTime"    # J

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmccunlock_screen"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "extra_delay_time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    if-eqz p0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Context;)Lcom/iflytek/common/speech/wake/SpeechWake;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Landroid/content/Intent;)V

    .line 117
    :cond_0
    return-void
.end method
