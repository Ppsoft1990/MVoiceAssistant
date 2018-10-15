.class public Lka;
.super Ljava/lang/Object;
.source "WakeEngine.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;


# static fields
.field private static a:I

.field private static b:J


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

.field private e:Ljz;

.field private f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/16 v0, 0x65

    sput v0, Lka;->a:I

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lka;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lka;->g:Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/iflytek/yd/aitalk/Ivw;

    invoke-direct {v0}, Lcom/iflytek/yd/aitalk/Ivw;-><init>()V

    iput-object v0, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lka;->c:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public a(Ljz;)V
    .locals 0
    .param p1, "config"    # Ljz;

    .prologue
    .line 53
    iput-object p1, p0, Lka;->e:Ljz;

    .line 54
    return-void
.end method

.method public appendData([BI)I
    .locals 16
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 143
    const/4 v9, 0x0

    .line 144
    .local v9, "error":I
    const/4 v10, 0x0

    .line 145
    .local v10, "isHaveResult":Z
    const/4 v3, 0x0

    .line 146
    .local v3, "word":Ljava/lang/String;
    const/4 v11, 0x0

    .line 147
    .local v11, "resultId":I
    const/4 v4, 0x0

    .line 148
    .local v4, "resultCm":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v2}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->isInited()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lka;->g:Ljava/lang/Object;

    monitor-enter v12

    .line 150
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    if-nez v2, :cond_2

    .line 151
    const-string/jumbo v2, "WakeEngine"

    const-string/jumbo v6, "appendData NULL mCallback "

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_1
    if-eqz v10, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    if-eqz v2, :cond_1

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    invoke-interface {v2, v3, v4}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;->onWakeResult(Ljava/lang/String;I)V

    .line 200
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    .line 203
    :cond_1
    return v9

    .line 153
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->appendData([BI)I

    move-result v9

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v14, Lka;->b:J

    sub-long/2addr v6, v14

    const-wide/16 v14, 0x7d0

    cmp-long v2, v6, v14

    if-lez v2, :cond_3

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lka;->b:J

    .line 157
    const-string/jumbo v2, "WakeEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appendData ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v2}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->getResult()I

    move-result v11

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v2}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->getResultCm()I

    move-result v4

    .line 162
    if-ltz v11, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->e:Ljz;

    invoke-virtual {v2, v11}, Ljz;->a(I)I

    move-result v5

    .line 164
    .local v5, "minCm":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->e:Ljz;

    invoke-virtual {v2, v11}, Ljz;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    if-lt v4, v5, :cond_4

    .line 166
    const/4 v10, 0x1

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v2}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->reset()V

    .line 168
    const-string/jumbo v2, "WakeEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appendData getResult TRUE id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " CM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    if-eqz v2, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lka;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lka;->e:Ljz;

    .line 179
    invoke-virtual {v7}, Ljz;->e()I

    move-result v7

    .line 178
    invoke-interface/range {v2 .. v7}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;->onWakeBuffer(Ljava/lang/String;IILjava/util/List;I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 192
    .end local v5    # "minCm":I
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 171
    .restart local v5    # "minCm":I
    :cond_4
    :try_start_2
    const-string/jumbo v2, "WakeEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appendData getResult id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " CM="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v2}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->reset()V

    goto :goto_2

    .line 184
    .end local v5    # "minCm":I
    :cond_5
    move/from16 v0, p2

    new-array v8, v0, [B

    .line 185
    .local v8, "buffer":[B
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v2, v8, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x26

    if-le v2, v6, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lka;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 194
    .end local v8    # "buffer":[B
    :cond_6
    const-string/jumbo v2, "WakeEngine"

    const-string/jumbo v6, "appendData not init. "

    invoke-static {v2, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 126
    iget-object v2, p0, Lka;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v1}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->isInited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v1}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->release()I

    move-result v0

    .line 129
    .local v0, "ret":I
    const-string/jumbo v1, "WakeEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0    # "ret":I
    :cond_0
    monitor-exit v2

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCache()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lka;->e:Ljz;

    invoke-virtual {v0}, Ljz;->f()V

    .line 212
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public start(Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 63
    if-nez p2, :cond_1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const v7, 0xc3521

    invoke-interface {p1, v7}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;->onWakeError(I)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string/jumbo v7, "focus"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "focus":Ljava/lang/String;
    const-string/jumbo v7, "sample_rate"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 72
    .local v5, "sampleRate":I
    iget-object v8, p0, Lka;->g:Ljava/lang/Object;

    monitor-enter v8

    .line 73
    const/16 v5, 0x3e80

    .line 74
    :try_start_0
    new-instance v7, Lcom/iflytek/yd/aitalk/Ivw;

    invoke-direct {v7}, Lcom/iflytek/yd/aitalk/Ivw;-><init>()V

    iput-object v7, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    .line 76
    iget-object v7, p0, Lka;->e:Ljz;

    invoke-virtual {v7, v1, v5}, Ljz;->a(Ljava/lang/String;I)V

    .line 77
    iget-object v7, p0, Lka;->e:Ljz;

    invoke-virtual {v7}, Ljz;->a()[I

    move-result-object v6

    .line 78
    .local v6, "wakeCm":[I
    iget-object v7, p0, Lka;->e:Ljz;

    invoke-virtual {v7}, Ljz;->b()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cacheFile":Ljava/lang/String;
    iget-object v7, p0, Lka;->e:Ljz;

    invoke-virtual {v7}, Ljz;->d()[B

    move-result-object v2

    .line 80
    .local v2, "grammar":[B
    iget-object v7, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    array-length v9, v2

    invoke-interface {v7, v2, v9, v0}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->init([BILjava/lang/String;)I

    move-result v4

    .line 81
    .local v4, "ret":I
    const-string/jumbo v7, "WakeEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startWake focus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " rate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v7, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v7}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->isInited()Z

    move-result v7

    if-nez v7, :cond_3

    .line 84
    if-eqz p1, :cond_2

    .line 85
    const v7, 0xc351f

    invoke-interface {p1, v7}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;->onWakeError(I)V

    .line 87
    :cond_2
    monitor-exit v8

    goto :goto_0

    .line 100
    .end local v0    # "cacheFile":Ljava/lang/String;
    .end local v2    # "grammar":[B
    .end local v4    # "ret":I
    .end local v6    # "wakeCm":[I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 91
    .restart local v0    # "cacheFile":Ljava/lang/String;
    .restart local v2    # "grammar":[B
    .restart local v4    # "ret":I
    .restart local v6    # "wakeCm":[I
    :cond_3
    if-eqz v6, :cond_4

    .line 92
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 93
    iget-object v7, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    sget v9, Lka;->a:I

    aget v10, v6, v3

    iget-object v11, p0, Lka;->e:Ljz;

    .line 94
    invoke-virtual {v11}, Ljz;->c()I

    move-result v11

    sub-int/2addr v10, v11

    .line 93
    invoke-interface {v7, v9, v10, v3}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->setParamer(III)I

    move-result v4

    .line 95
    const-string/jumbo v7, "WakeEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start set CM="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "i":I
    :cond_4
    iput-object p1, p0, Lka;->f:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    .line 100
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 112
    iget-object v2, p0, Lka;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v1}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->isInited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lka;->d:Lcom/iflytek/yd/aitalk/IIvwAccessor;

    invoke-interface {v1}, Lcom/iflytek/yd/aitalk/IIvwAccessor;->release()I

    move-result v0

    .line 115
    .local v0, "ret":I
    iget-object v1, p0, Lka;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 116
    const-string/jumbo v1, "WakeEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop will release. ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "ret":I
    :cond_0
    monitor-exit v2

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
