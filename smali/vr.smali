.class public Lvr;
.super Lvn;
.source "BlcLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvr$a;
    }
.end annotation


# static fields
.field private static f:Landroid/content/Context;


# instance fields
.field private e:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lvn;-><init>()V

    .line 51
    sget-object v0, Lvr;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lvr;->a(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lvr$1;)V
    .locals 0
    .param p1, "x0"    # Lvr$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lvr;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 8
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 287
    if-nez p1, :cond_0

    .line 288
    const-string/jumbo p1, ""

    .line 291
    :cond_0
    const-string/jumbo v5, "LX_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    :cond_1
    :goto_0
    return v3

    .line 295
    :cond_2
    sget-object v0, Lwl;->b:[Ljava/lang/String;

    .line 296
    .local v0, "highCodes":[Ljava/lang/String;
    array-length v6, v0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 297
    .local v2, "tmpCode":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 303
    .end local v2    # "tmpCode":Ljava/lang/String;
    :cond_3
    sget-object v1, Lwl;->a:[Ljava/lang/String;

    .line 304
    .local v1, "lowCodes":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v2, v1, v3

    .line 305
    .restart local v2    # "tmpCode":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    const/4 v3, 0x1

    goto :goto_0

    .line 304
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 309
    .end local v2    # "tmpCode":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)Lwm;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "opCode"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "result"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v0, Lwm;

    invoke-direct {v0, p1}, Lwm;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "operationLog":Lwm;
    if-nez p2, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 278
    .end local v0    # "operationLog":Lwm;
    :goto_0
    return-object v0

    .line 271
    .restart local v0    # "operationLog":Lwm;
    :cond_0
    invoke-virtual {v0, p2}, Lwm;->a(Ljava/lang/String;)V

    .line 272
    if-eqz p7, :cond_1

    .line 273
    invoke-virtual {v0, p7}, Lwm;->b(Ljava/lang/String;)V

    .line 275
    :cond_1
    invoke-virtual {v0, p3, p4}, Lwm;->a(J)V

    .line 276
    invoke-virtual {v0, p5, p6}, Lwm;->b(J)V

    .line 277
    invoke-virtual {v0}, Lwm;->c()V

    goto :goto_0
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
    .line 121
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 122
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    const-string/jumbo v1, "mchannel"

    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getMIGUChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public static b(Landroid/content/Context;)Lvr;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lvr;->f:Landroid/content/Context;

    .line 47
    sget-object v0, Lvr$a;->a:Lvr;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lvr;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string/jumbo v0, "http://ydlog.voicecloud.cn/uplog"

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 193
    const-string/jumbo v0, "BlcLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "appendStatLog | code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lvr;->f:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvk;->a(Ljava/lang/String;I)V

    .line 199
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p5, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "com.iflytek.cmcc"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lvr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 18
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "result"    # Ljava/lang/String;
    .param p6, "callerApp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p5, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 65
    const-string/jumbo v2, "BlcLogAdapter"

    const-string/jumbo v3, "appendOpLog  | opCode is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    sget-object v4, Lvr;->f:Landroid/content/Context;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v10, p4

    .line 69
    invoke-direct/range {v3 .. v10}, Lvr;->a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)Lwm;

    move-result-object v15

    .line 71
    .local v15, "log":Lwm;
    if-eqz p5, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 74
    const-string/jumbo v2, "mchannel"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lvr;->a(Ljava/util/Map;)V

    .line 78
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 79
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 81
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 83
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 84
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 85
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lwm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_3
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    .line 89
    .restart local p5    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lvr;->a(Ljava/util/Map;)V

    .line 91
    :cond_4
    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Lwm;->c(Ljava/lang/String;)V

    .line 93
    invoke-direct/range {p0 .. p1}, Lvr;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Lwm;->b(I)V

    .line 94
    const-string/jumbo v2, "BlcLogAdapter"

    invoke-virtual {v15}, Lwm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-boolean v2, Lvk;->a:Z

    if-eqz v2, :cond_0

    .line 96
    sget-object v10, Lcom/iflytek/blc/log/LogPriority;->Middle:Lcom/iflytek/blc/log/LogPriority;

    .line 97
    .local v10, "logPriority":Lcom/iflytek/blc/log/LogPriority;
    invoke-direct/range {p0 .. p1}, Lvr;->a(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 107
    :goto_2
    sget-object v2, Lvr;->f:Landroid/content/Context;

    invoke-static {v2}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v2

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v11, p5

    .line 107
    invoke-virtual/range {v2 .. v11}, Lvk;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/log/LogPriority;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 99
    :sswitch_0
    sget-object v10, Lcom/iflytek/blc/log/LogPriority;->Low:Lcom/iflytek/blc/log/LogPriority;

    .line 100
    goto :goto_2

    .line 102
    :sswitch_1
    sget-object v10, Lcom/iflytek/blc/log/LogPriority;->RealTime:Lcom/iflytek/blc/log/LogPriority;

    .line 103
    goto :goto_2

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lwk;)V
    .locals 0
    .param p1, "log"    # Lwk;

    .prologue
    .line 154
    return-void
.end method

.method public a(Lwn;)V
    .locals 0
    .param p1, "log"    # Lwn;

    .prologue
    .line 147
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lvr;->f:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    invoke-virtual {v0}, Lvk;->g()V

    .line 210
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 216
    const-string/jumbo v0, "BlcLogAdapter"

    const-string/jumbo v1, "triggerForceLogUpload"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lvr;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lvr;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lvr;->e:Ljava/util/Timer;

    .line 224
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvr;->e:Ljava/util/Timer;

    .line 225
    iget-object v0, p0, Lvr;->e:Ljava/util/Timer;

    new-instance v1, Lvr$1;

    invoke-direct {v1, p0}, Lvr$1;-><init>(Lvr;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 234
    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 240
    sget-boolean v0, Lvk;->a:Z

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lvr;->f:Landroid/content/Context;

    invoke-static {v0}, Lvk;->a(Landroid/content/Context;)Lvk;

    move-result-object v0

    invoke-virtual {v0}, Lvk;->i()V

    .line 245
    :cond_0
    return-void
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 249
    return-void
.end method
