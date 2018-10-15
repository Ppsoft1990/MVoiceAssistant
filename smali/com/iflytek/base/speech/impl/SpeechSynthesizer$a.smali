.class Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;
.super Lcom/iflytek/yd/base/BaseThread;
.source "SpeechSynthesizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

.field private final c:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/util/Timer;

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1191
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0}, Lcom/iflytek/yd/base/BaseThread;-><init>()V

    .line 1180
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    .line 1182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->e:Ljava/util/HashMap;

    .line 1183
    iput v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    .line 1184
    iput-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->g:Z

    .line 1185
    iput-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->h:Z

    .line 1186
    iput-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->i:Z

    .line 1188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->k:Ljava/lang/Object;

    .line 1192
    invoke-static {p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v1

    invoke-virtual {v1}, Ljh;->b()I

    move-result v0

    .line 1193
    .local v0, "delay":I
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MscPlayerThread TtsWeb Timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    if-lez v0, :cond_0

    .line 1195
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->j:Ljava/util/Timer;

    .line 1196
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v2, "MscPlayerThread start timer"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->j:Ljava/util/Timer;

    new-instance v2, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a$1;-><init>(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1215
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;
    .param p1, "x1"    # Z

    .prologue
    .line 1179
    iput-boolean p1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    .prologue
    .line 1179
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    return v0
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->j:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1262
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    monitor-enter v2

    .line 1263
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1265
    .local v0, "tmp_data":[B
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->e:Ljava/util/HashMap;

    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1273
    .end local v0    # "tmp_data":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1268
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->g:Z

    .line 1269
    const-string/jumbo v1, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v3, "MscPlayerThread endAudioData "

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    return-void
.end method

.method public a([BI)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 1224
    if-nez p1, :cond_0

    .line 1225
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v6, "MscPlayerThread data null "

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    monitor-enter v6

    .line 1229
    :try_start_0
    array-length v3, p1

    .line 1230
    .local v3, "length":I
    const-string/jumbo v5, "SPEECH_SpeechSynthesizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MscPlayerThread add length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " oldPos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :goto_1
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1235
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1236
    .local v4, "tmp_data":[B
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->e:Ljava/util/HashMap;

    iget v7, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1255
    .end local v3    # "length":I
    .end local v4    # "tmp_data":[B
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1241
    .restart local v3    # "length":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_1
    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 1242
    const/16 v5, 0x640

    new-array v0, v5, [B

    .line 1243
    .local v0, "buff":[B
    array-length v1, v0

    .line 1244
    .local v1, "copy_len":I
    array-length v5, p1

    sub-int/2addr v5, v2

    if-ge v5, v1, :cond_2

    .line 1245
    array-length v5, p1

    sub-int v1, v5, v2

    .line 1246
    new-array v0, v1, [B

    .line 1248
    :cond_2
    const/4 v5, 0x0

    invoke-static {p1, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1250
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    add-int/2addr v2, v1

    .line 1252
    goto :goto_2

    .line 1254
    .end local v0    # "buff":[B
    .end local v1    # "copy_len":I
    :cond_3
    iput p2, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    .line 1255
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected threadProc()V
    .locals 7

    .prologue
    .line 1278
    const-string/jumbo v3, "MscPlayerThread"

    invoke-virtual {p0, v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->setName(Ljava/lang/String;)V

    .line 1279
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, "MscPlayerThread running..."

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :goto_0
    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->running:Z

    if-eqz v3, :cond_5

    .line 1282
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1285
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->PAUSE:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v3, v4, :cond_0

    .line 1286
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, "threadProc blocked"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    :try_start_2
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->l(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lid;

    move-result-object v3

    invoke-virtual {v3}, Lid;->b()V

    .line 1289
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->m(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1290
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1328
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_4
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1330
    :catch_1
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, "MscPlayerThread InterruptedException"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1294
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_5
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1295
    .local v0, "audio":[B
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v3, v4, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    .line 1299
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->g(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljh;

    move-result-object v3

    invoke-virtual {v3}, Ljh;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1300
    invoke-static {v0}, Ljl;->a([B)V

    .line 1302
    :cond_1
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->k:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1303
    :try_start_6
    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->i:Z

    if-nez v3, :cond_4

    .line 1304
    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->h:Z

    if-nez v3, :cond_2

    .line 1305
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->h:Z

    .line 1306
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v5, "startMscSpeak begin"

    invoke-static {v3, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->b(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lju;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;Lju;I)V

    .line 1309
    :cond_2
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    move-result-object v3

    sget-object v5, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;->RUNNING:Lcom/iflytek/base/speech/impl/SpeechSynthesizer$TtsStatus;

    if-ne v3, v5, :cond_4

    .line 1310
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1311
    .local v2, "pos":Ljava/lang/Integer;
    if-nez v2, :cond_3

    .line 1312
    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1314
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->onOutPutCallBack([BI)V

    .line 1317
    .end local v2    # "pos":Ljava/lang/Integer;
    :cond_4
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1322
    :goto_2
    const/4 v0, 0x0

    .line 1324
    :try_start_7
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->g:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_7

    .line 1328
    :try_start_8
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1335
    .end local v0    # "audio":[B
    :cond_5
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, "MscPlayerThread finish..."

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    return-void

    .line 1317
    .restart local v0    # "audio":[B
    :catchall_1
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v3

    .line 1319
    :cond_6
    const-string/jumbo v3, "SPEECH_SpeechSynthesizer"

    const-string/jumbo v4, "MscPlayerThread running not play... "

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 1328
    :cond_7
    :try_start_b
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechSynthesizer$a;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->k(Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0
.end method
