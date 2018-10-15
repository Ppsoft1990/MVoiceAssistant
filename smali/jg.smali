.class public Ljg;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Ljg;->c:I

    .line 44
    iput-boolean v0, p0, Ljg;->e:Z

    .line 45
    iput-boolean v0, p0, Ljg;->f:Z

    .line 50
    iput-object p1, p0, Ljg;->a:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljg;->a()V

    .line 52
    return-void
.end method

.method private a(Landroid/telephony/SignalStrength;)I
    .locals 4
    .param p1, "obj"    # Landroid/telephony/SignalStrength;

    .prologue
    const/16 v3, -0x71

    .line 300
    const/16 v0, 0x63

    .line 301
    .local v0, "value":I
    if-nez p1, :cond_0

    move v1, v0

    .line 312
    .end local v0    # "value":I
    .local v1, "value":I
    :goto_0
    return v1

    .line 305
    .end local v1    # "value":I
    .restart local v0    # "value":I
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    :cond_1
    :goto_1
    move v1, v0

    .line 312
    .end local v0    # "value":I
    .restart local v1    # "value":I
    goto :goto_0

    .line 307
    .end local v1    # "value":I
    .restart local v0    # "value":I
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    if-gez v2, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 308
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 310
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v0, v2, 0x2

    goto :goto_1
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljg$1;

    iget-object v1, p0, Ljg;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljg$1;-><init>(Ljg;Landroid/os/Looper;)V

    iput-object v0, p0, Ljg;->h:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method static synthetic a(Ljg;)V
    .locals 0
    .param p0, "x0"    # Ljg;

    .prologue
    .line 27
    invoke-direct {p0}, Ljg;->b()V

    return-void
.end method

.method private a(ZI)V
    .locals 5
    .param p1, "hasNet"    # Z
    .param p2, "src"    # I

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "value":I
    if-eqz p1, :cond_0

    .line 247
    const/16 v1, 0x32

    .line 249
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_MSC_NET_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.EXT_MSC_NET_QUALITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string/jumbo v2, "com.iflytek.cmcc.EXT_MSC_NET_EVENT_SRC"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Ljg;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    const-string/jumbo v2, "SPEECH_SystemEventUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastNetChange OK net status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " SRC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method static synthetic b(Ljg;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljg;

    .prologue
    .line 27
    iget-object v0, p0, Ljg;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3a98

    const/16 v10, 0x3e9

    const/4 v3, 0x0

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Ljg;->d:J

    sub-long v6, v0, v4

    .line 280
    .local v6, "interval":J
    const-string/jumbo v0, "SPEECH_SystemEventUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeHandler MSG_TIME_OUT, event interval= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-wide/16 v8, 0x3a98

    .line 282
    .local v8, "nextDelay":J
    cmp-long v0, v6, v12

    if-gez v0, :cond_1

    .line 283
    sub-long v8, v12, v6

    .line 288
    :goto_0
    iget-boolean v0, p0, Ljg;->f:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Ljg;->h:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Ljg;->h:Landroid/os/Handler;

    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Ljg;->g:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    const/16 v2, 0xd

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private c()J
    .locals 8

    .prologue
    .line 319
    const-wide/16 v2, 0x0

    .line 325
    .local v2, "time":J
    :try_start_0
    iget-object v1, p0, Ljg;->a:Landroid/content/Context;

    const-string/jumbo v4, "screen_off_timeout"

    const-wide/16 v6, 0x7530

    invoke-static {v1, v4, v6, v7}, Lip;->a(Landroid/content/Context;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 330
    :goto_0
    return-wide v2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SPEECH_SystemEventUtil"

    const-string/jumbo v4, ""

    invoke-static {v1, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic c(Ljg;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;
    .locals 1
    .param p0, "x0"    # Ljg;

    .prologue
    .line 27
    iget-object v0, p0, Ljg;->g:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Ljg;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    .line 340
    .local v0, "en":Lhl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 222
    return-void
.end method

.method public a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;)V
    .locals 6
    .param p1, "msc"    # Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 205
    iget-boolean v0, p0, Ljg;->e:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V

    .line 209
    :cond_0
    iget-boolean v0, p0, Ljg;->f:Z

    if-eqz v0, :cond_1

    .line 211
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V

    .line 212
    const/4 v2, 0x5

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V

    .line 214
    :cond_1
    return-void
.end method

.method public declared-synchronized a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V
    .locals 10
    .param p1, "msc"    # Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljg;->g:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    .line 66
    const-string/jumbo v1, "unkonw"

    .line 67
    .local v1, "eventName":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 68
    .local v2, "info":Ljava/lang/String;
    const/4 v4, -0x1

    .line 69
    .local v4, "signal":I
    packed-switch p2, :pswitch_data_0

    .line 140
    .end local p5    # "obj":Ljava/lang/Object;
    :goto_0
    iget-boolean v5, p0, Ljg;->f:Z

    if-nez v5, :cond_0

    .line 141
    const/4 v5, 0x4

    if-eq p2, v5, :cond_0

    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    const/4 v5, 0x1

    if-eq p2, v5, :cond_0

    const/4 v5, 0x7

    if-eq p2, v5, :cond_0

    const/16 v5, 0x8

    if-ne p2, v5, :cond_5

    .line 154
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Ljg;->d:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3a98

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    iget v5, p0, Ljg;->b:I

    if-ne v5, p2, :cond_1

    .line 157
    const/16 v5, 0xc

    if-ne p2, v5, :cond_5

    .line 159
    const/16 v5, 0x63

    if-ge v4, v5, :cond_5

    iget v5, p0, Ljg;->c:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_5

    .line 172
    :cond_1
    const/4 v5, 0x7

    if-ne p2, v5, :cond_2

    .line 173
    const/4 v5, 0x1

    invoke-direct {p0, v5, p3}, Ljg;->a(ZI)V

    .line 175
    :cond_2
    const/16 v5, 0x8

    if-ne p2, v5, :cond_3

    .line 176
    const/4 v5, 0x0

    invoke-direct {p0, v5, p3}, Ljg;->a(ZI)V

    .line 179
    :cond_3
    if-eqz p1, :cond_5

    .line 185
    if-ltz v4, :cond_4

    const/16 v5, 0x63

    if-ge v4, v5, :cond_4

    .line 186
    iput v4, p0, Ljg;->c:I

    .line 188
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ljg;->d:J

    .line 189
    iput p2, p0, Ljg;->b:I

    .line 191
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 198
    :cond_5
    monitor-exit p0

    return-void

    .line 71
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_0
    :try_start_1
    const-string/jumbo v1, "app_evt_create"

    .line 72
    move-object v2, v1

    .line 73
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljg;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    .end local v4    # "signal":I
    .end local p5    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 76
    .restart local v1    # "eventName":Ljava/lang/String;
    .restart local v2    # "info":Ljava/lang/String;
    .restart local v4    # "signal":I
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_1
    :try_start_2
    const-string/jumbo v1, "app_evt_destroy"

    .line 77
    move-object v2, v1

    .line 78
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljg;->e:Z

    goto :goto_0

    .line 81
    :pswitch_2
    const-string/jumbo v1, "app_evt_pause"

    .line 82
    move-object v2, v1

    .line 83
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljg;->f:Z

    goto :goto_0

    .line 86
    :pswitch_3
    const-string/jumbo v1, "app_evt_resume"

    .line 87
    move-object v2, v1

    .line 88
    iget-boolean v5, p0, Ljg;->f:Z

    if-nez v5, :cond_6

    .line 89
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljg;->f:Z

    .line 96
    :cond_6
    iget-object v5, p0, Ljg;->h:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 99
    :pswitch_4
    const-string/jumbo v1, "app_evt_net_conn"

    .line 100
    invoke-direct {p0}, Ljg;->d()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Ljg;->a:Landroid/content/Context;

    invoke-static {v5}, Lhl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "netType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wap_proxy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",net_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    goto/16 :goto_0

    .line 105
    .end local v0    # "apn":Ljava/lang/String;
    .end local v3    # "netType":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v1, "app_evt_net_disconn"

    .line 106
    move-object v2, v1

    .line 107
    goto/16 :goto_0

    .line 109
    :pswitch_6
    const-string/jumbo v1, "app_evt_idel"

    .line 110
    move-object v2, v1

    .line 111
    goto/16 :goto_0

    .line 113
    :pswitch_7
    const-string/jumbo v1, "app_evt_offhook"

    .line 114
    move-object v2, v1

    .line 115
    goto/16 :goto_0

    .line 117
    :pswitch_8
    const-string/jumbo v1, "app_evt_ringing"

    .line 118
    move-object v2, v1

    .line 119
    goto/16 :goto_0

    .line 121
    :pswitch_9
    const-string/jumbo v1, "app_evt_scr_off"

    .line 122
    move-object v2, v1

    .line 123
    goto/16 :goto_0

    .line 125
    :pswitch_a
    const-string/jumbo v1, "app_evt_scr_on"

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Ljg;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_b
    const-string/jumbo v1, "app_evt_sgl_stren"

    .line 130
    check-cast p5, Landroid/telephony/SignalStrength;

    .end local p5    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p5}, Ljg;->a(Landroid/telephony/SignalStrength;)I

    move-result v4

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    goto/16 :goto_0

    .line 134
    .restart local p5    # "obj":Ljava/lang/Object;
    :pswitch_c
    const-string/jumbo v1, "app_evt_proactive"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    move-object v2, v1

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
