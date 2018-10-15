.class public Lvk;
.super Ljava/lang/Object;
.source "BlcServiceUtil.java"


# static fields
.field public static a:Z

.field private static d:Lvk;


# instance fields
.field private b:Lcom/iflytek/blc/core/BlcService;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lnj;->b:Z

    sput-boolean v0, Lvk;->a:Z

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lvk;->d:Lvk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lvk;->c:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private a(Lcom/iflytek/blc/log/LogPriority;)Ljava/lang/String;
    .locals 1
    .param p1, "pri"    # Lcom/iflytek/blc/log/LogPriority;

    .prologue
    .line 519
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/blc/log/LogPriority;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lvk;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lvk;->d:Lvk;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lvk;

    invoke-direct {v0, p0}, Lvk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvk;->d:Lvk;

    .line 62
    :cond_0
    sget-object v0, Lvk;->d:Lvk;

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 338
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    const-string/jumbo v1, "mchannel"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getMIGUChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    .line 176
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v4, "com.iflytek.cmcc.BLC_LAOD_FAILED_FLAG"

    invoke-virtual {v0, v4}, Lil;->c(Ljava/lang/String;)Z

    move-result v6

    .line 178
    .local v6, "blcLoadFailed":Z
    if-eqz v6, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string/jumbo v1, "IC00006"

    .line 184
    .local v1, "opCode":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    .local v2, "startTime":J
    iget-object v0, p0, Lvk;->c:Landroid/content/Context;

    invoke-static {v0}, Lvr;->b(Landroid/content/Context;)Lvr;

    move-result-object v0

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 226
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/iflytek/blc/log/VoiceLogProxy;->startRecord()V

    .line 229
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2
    .param p1, "engine"    # I
    .param p2, "scene"    # Ljava/lang/String;

    .prologue
    .line 211
    sget-boolean v1, Lvk;->a:Z

    if-eqz v1, :cond_1

    .line 212
    sget-object v0, Lcom/iflytek/blc/log/VoiceSessionType;->Hybrid:Lcom/iflytek/blc/log/VoiceSessionType;

    .line 213
    .local v0, "type":Lcom/iflytek/blc/log/VoiceSessionType;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 214
    sget-object v0, Lcom/iflytek/blc/log/VoiceSessionType;->Local:Lcom/iflytek/blc/log/VoiceSessionType;

    .line 218
    :cond_0
    :goto_0
    invoke-static {v0, p2}, Lcom/iflytek/blc/log/VoiceLogProxy;->startSession(Lcom/iflytek/blc/log/VoiceSessionType;Ljava/lang/String;)V

    .line 220
    .end local v0    # "type":Lcom/iflytek/blc/log/VoiceSessionType;
    :cond_1
    return-void

    .line 215
    .restart local v0    # "type":Lcom/iflytek/blc/log/VoiceSessionType;
    :cond_2
    const/16 v1, 0x10

    if-ne v1, p1, :cond_0

    .line 216
    sget-object v0, Lcom/iflytek/blc/log/VoiceSessionType;->Online:Lcom/iflytek/blc/log/VoiceSessionType;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p4, "priority"    # Lcom/iflytek/blc/log/LogPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/iflytek/blc/log/LogPriority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_1

    .line 320
    if-eqz p3, :cond_2

    .line 322
    const-string/jumbo v0, "mchannel"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0, p3}, Lvk;->a(Ljava/util/Map;)V

    .line 330
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/iflytek/blc/log/VoiceLogProxy;->endSession(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V

    .line 331
    const-string/jumbo v0, "BlcServiceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndSession | code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    invoke-direct {p0, p4}, Lvk;->a(Lcom/iflytek/blc/log/LogPriority;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    return-void

    .line 326
    :cond_2
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 327
    .restart local p3    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Lvk;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/blc/feedback/FeedbackObserver;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/feedback/Attachment;)V
    .locals 1
    .param p1, "observer"    # Lcom/iflytek/blc/feedback/FeedbackObserver;
    .param p2, "problemType"    # Lcom/iflytek/blc/feedback/FeedbackType;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "contact"    # Ljava/lang/String;
    .param p5, "voicePart"    # [Lcom/iflytek/blc/feedback/Attachment;

    .prologue
    .line 437
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-static {p1, p2, p3, p4, p5}, Lcom/iflytek/blc/feedback/FeedbackProxy;->start(Lcom/iflytek/blc/feedback/FeedbackObserver;Lcom/iflytek/blc/feedback/FeedbackType;Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/feedback/Attachment;)I

    .line 440
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/blc/version/VersionObserver;Z)V
    .locals 2
    .param p1, "observer"    # Lcom/iflytek/blc/version/VersionObserver;
    .param p2, "isAuto"    # Z

    .prologue
    .line 412
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 413
    const-string/jumbo v0, "BlcServiceUtil"

    const-string/jumbo v1, "checkversion"

    invoke-static {v0, v1}, Lhj;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {p1, p2}, Lcom/iflytek/blc/version/VersionProxy;->start(Lcom/iflytek/blc/version/VersionObserver;Z)I

    .line 416
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string/jumbo v5, "BlcServiceUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "crash log = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-boolean v5, Lvk;->a:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 356
    iget-object v5, p0, Lvk;->c:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lvk;->c:Landroid/content/Context;

    invoke-static {v5}, Lhl;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "version":Ljava/lang/String;
    iget-object v5, p0, Lvk;->c:Landroid/content/Context;

    invoke-static {v5}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v5

    invoke-virtual {v5}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "downfrom":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/blc/log/LogPriority;->Low:Lcom/iflytek/blc/log/LogPriority;

    .line 360
    .local v3, "pri":Lcom/iflytek/blc/log/LogPriority;
    invoke-static {p1, v0, v4, v1, v3}, Lcom/iflytek/blc/log/CrashLogProxy;->addCrashMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;)V

    .line 361
    const-string/jumbo v5, "BlcServiceUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appendCrashLog | log = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", priority = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3}, Lvk;->a(Lcom/iflytek/blc/log/LogPriority;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v5, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-interface {v5}, Lcom/iflytek/blc/core/BlcService;->saveCachedLogs()V

    .line 366
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "downfrom":Ljava/lang/String;
    .end local v3    # "pri":Lcom/iflytek/blc/log/LogPriority;
    .end local v4    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 367
    .restart local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "downfrom":Ljava/lang/String;
    .restart local v3    # "pri":Lcom/iflytek/blc/log/LogPriority;
    .restart local v4    # "version":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 196
    sget-boolean v1, Lvk;->a:Z

    if-eqz v1, :cond_0

    .line 197
    sget-object v0, Lcom/iflytek/blc/log/LogPriority;->Middle:Lcom/iflytek/blc/log/LogPriority;

    .line 198
    .local v0, "pri":Lcom/iflytek/blc/log/LogPriority;
    invoke-static {p1, p2, v0}, Lcom/iflytek/blc/log/StatLogProxy;->increase(Ljava/lang/String;ILcom/iflytek/blc/log/LogPriority;)V

    .line 199
    const-string/jumbo v1, "BlcServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appendStatLog | code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lvk;->a(Lcom/iflytek/blc/log/LogPriority;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "BlcServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appendStatLog | code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lvk;->a(Lcom/iflytek/blc/log/LogPriority;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "pri":Lcom/iflytek/blc/log/LogPriority;
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;Ljava/util/Map;)V
    .locals 12
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "result"    # Ljava/lang/String;
    .param p7, "usedApp"    # Ljava/lang/String;
    .param p8, "priority"    # Lcom/iflytek/blc/log/LogPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iflytek/blc/log/LogPriority;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p9, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v2, Lvk;->a:Z

    if-eqz v2, :cond_0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    .line 510
    invoke-static/range {v3 .. v11}, Lcom/iflytek/blc/log/OpLogProxy;->addEventWithTime(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/iflytek/blc/log/LogPriority;)V

    .line 512
    const-string/jumbo v2, "BlcServiceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAppendOpLogWithTime | opCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", endTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", priority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 514
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lvk;->a(Lcom/iflytek/blc/log/LogPriority;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "blcDataFilePath"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "downfrom"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "serverUrl"    # Ljava/lang/String;
    .param p6, "logUrl"    # Ljava/lang/String;
    .param p7, "noticeUrl"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-boolean v1, Lvk;->a:Z

    if-eqz v1, :cond_1

    .line 81
    const-string/jumbo v1, "BlcServiceUtil"

    const-string/jumbo v2, "initBlcService | BLC_SDK_FLAG = true"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string/jumbo v1, "BlcServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "blcDataFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", aid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", downfrom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string/jumbo v1, "BlcServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serverUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string/jumbo v1, "BlcServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v1, "BlcServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "noticeUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/iflytek/blc/core/BlcServiceImpl;->getInstance()Lcom/iflytek/blc/core/BlcService;

    move-result-object v1

    iput-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    .line 88
    :try_start_0
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    iget-object v2, p0, Lvk;->c:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/iflytek/blc/core/BlcService;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setDebugable(Z)V

    .line 133
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    const-string/jumbo v2, "cn"

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setLanguage(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v2

    invoke-virtual {v2}, Lhy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setAndroidid(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v2

    invoke-virtual {v2}, Lhy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setCellid(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-static {}, Lazg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setCpu(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-static {}, Lhx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setMac(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    iget-object v2, p0, Lvk;->c:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iflytek/blc/core/BlcService;->setUuid(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    .line 147
    .local v11, "ifySetting":Lil;
    iget-object v1, p0, Lvk;->c:Landroid/content/Context;

    invoke-static {v1}, Lazy;->a(Landroid/content/Context;)Lazy;

    move-result-object v1

    invoke-virtual {v1}, Lazy;->a()Ljava/lang/String;

    move-result-object v12

    .line 148
    .local v12, "uid":Ljava/lang/String;
    invoke-static {v12}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-interface {v1, v12}, Lcom/iflytek/blc/core/BlcService;->setUid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v11    # "ifySetting":Lil;
    .end local v12    # "uid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v10

    .line 157
    .local v10, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "BlcServiceUtil"

    const-string/jumbo v2, "initBlcService"

    invoke-static {v1, v2, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const-string/jumbo v1, "BlcServiceUtil"

    const-string/jumbo v2, "initBlcService | error, reset blc flag"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    sput-boolean v1, Lvk;->a:Z

    .line 160
    const/4 v1, 0x0

    sput-boolean v1, Lnj;->b:Z

    .line 163
    invoke-direct {p0}, Lvk;->k()V

    .line 164
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.BLC_LAOD_FAILED_FLAG"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 169
    .end local v10    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    const-string/jumbo v1, "BlcServiceUtil"

    const-string/jumbo v2, "initBlcService | BLC_SDK_FLAG = false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/iflytek/blc/log/VoiceLogProxy;->endRecord()V

    .line 238
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 254
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/iflytek/blc/log/VoiceLogProxy;->firstOnlineResult()V

    .line 257
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/iflytek/blc/log/VoiceLogProxy;->lastOnlineResult()V

    .line 266
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/iflytek/blc/log/VoiceLogProxy;->firstLocalResult()V

    .line 293
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/iflytek/blc/log/VoiceLogProxy;->lastLocalResult()V

    .line 302
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 343
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-interface {v0}, Lcom/iflytek/blc/core/BlcService;->saveCachedLogs()V

    .line 346
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 446
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lcom/iflytek/blc/feedback/FeedbackProxy;->cancel()V

    .line 449
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 540
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-interface {v0}, Lcom/iflytek/blc/core/BlcService;->triggerLogUpload()V

    .line 543
    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 549
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lvk;->b:Lcom/iflytek/blc/core/BlcService;

    invoke-interface {v0}, Lcom/iflytek/blc/core/BlcService;->forceLogUpload()V

    .line 552
    :cond_0
    return-void
.end method
