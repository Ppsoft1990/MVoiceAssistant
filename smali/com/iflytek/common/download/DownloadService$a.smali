.class Lcom/iflytek/common/download/DownloadService$a;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/common/download/DownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/common/download/DownloadService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/iflytek/common/download/DownloadService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    iput v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I

    .line 208
    iput-boolean v0, p0, Lcom/iflytek/common/download/DownloadService$a;->c:Z

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/common/download/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    .line 210
    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 3
    .param p1, "add"    # Z

    .prologue
    .line 262
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 263
    :try_start_0
    iget v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I

    .line 268
    :goto_0
    invoke-static {}, Lcom/iflytek/yd/log/Logging;->isDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/iflytek/common/download/DownloadService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add or remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    monitor-exit p0

    return-void

    .line 265
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/iflytek/common/download/DownloadService$a;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/iflytek/common/download/DownloadService$a;->c:Z

    if-eqz v1, :cond_1

    .line 228
    const/4 v0, 0x0

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 232
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/iflytek/common/download/DownloadService$a;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/iflytek/common/download/DownloadService$a;->c()V

    .line 218
    invoke-virtual {p0}, Lcom/iflytek/common/download/DownloadService$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 219
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 223
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/common/download/DownloadService$a;->c:Z

    .line 224
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    invoke-direct {p0}, Lcom/iflytek/common/download/DownloadService$a;->e()V

    .line 255
    return-void
.end method

.method public declared-synchronized d()I
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/iflytek/common/download/DownloadService$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 281
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/iflytek/common/download/DownloadService$a;->a(Z)V

    .line 284
    iget-object v1, p0, Lcom/iflytek/common/download/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/DownloadService;

    .line 285
    .local v0, "downloadService":Lcom/iflytek/common/download/DownloadService;
    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-static {v0}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/DownloadService;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/common/download/DownloadService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/DownloadService;

    .line 295
    .local v2, "downloadService":Lcom/iflytek/common/download/DownloadService;
    if-nez v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 300
    :try_start_0
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->c(Lcom/iflytek/common/download/DownloadService;)Lnm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_2

    .line 302
    :try_start_1
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->c(Lcom/iflytek/common/download/DownloadService;)Lnm;

    move-result-object v3

    if-nez v3, :cond_4

    .line 309
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/iflytek/common/download/entities/DownloadInfo;

    if-eqz v3, :cond_3

    .line 310
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 311
    .local v14, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    const/4 v3, 0x5

    invoke-virtual {v14, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setStatus(I)V

    .line 312
    const v3, 0xc3ba5

    invoke-virtual {v14, v3}, Lcom/iflytek/common/download/entities/DownloadInfo;->setErrorCode(I)V

    .line 313
    invoke-static {}, Lcom/iflytek/common/download/DownloadService;->a()Lnu;

    move-result-object v3

    invoke-virtual {v3, v14}, Lnu;->c(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 315
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_3
    monitor-exit v4

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 303
    :catch_0
    move-exception v10

    .line 304
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 399
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 400
    .restart local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v14, :cond_0

    .line 401
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v3

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getETag()Ljava/lang/String;

    move-result-object v7

    .line 402
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v8

    .line 401
    invoke-static/range {v2 .. v9}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 321
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-static {v2, v3}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto :goto_0

    .line 325
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;I)V

    goto/16 :goto_0

    .line 329
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 330
    .restart local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v12

    .line 332
    .local v12, "id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-gez v3, :cond_5

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 334
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->d(Lcom/iflytek/common/download/DownloadService;)Lnq;

    move-result-object v3

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnq;->a(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v15

    .line 335
    .local v15, "queryInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v15, :cond_5

    .line 336
    invoke-virtual {v15}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v12

    .line 339
    .end local v15    # "queryInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_5
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getVisibility()I

    move-result v3

    invoke-static {v2, v12, v13, v3}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;JI)V

    goto/16 :goto_0

    .line 343
    .end local v12    # "id":J
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 344
    .restart local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v12

    .line 345
    .restart local v12    # "id":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-gez v3, :cond_6

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 347
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->d(Lcom/iflytek/common/download/DownloadService;)Lnq;

    move-result-object v3

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnq;->a(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v15

    .line 348
    .restart local v15    # "queryInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v15, :cond_6

    .line 349
    invoke-virtual {v15}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v12

    .line 352
    .end local v15    # "queryInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_6
    invoke-static {v2, v12, v13}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;J)V

    goto/16 :goto_0

    .line 356
    .end local v12    # "id":J
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :pswitch_6
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->e(Lcom/iflytek/common/download/DownloadService;)V

    goto/16 :goto_0

    .line 360
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/iflytek/common/download/DownloadService;->b(Lcom/iflytek/common/download/DownloadService;J)V

    goto/16 :goto_0

    .line 364
    :pswitch_8
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->f(Lcom/iflytek/common/download/DownloadService;)V

    goto/16 :goto_0

    .line 368
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/iflytek/common/download/DownloadService;->c(Lcom/iflytek/common/download/DownloadService;J)V

    goto/16 :goto_0

    .line 372
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/iflytek/common/download/DownloadService;->d(Lcom/iflytek/common/download/DownloadService;J)V

    goto/16 :goto_0

    .line 376
    :pswitch_b
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->g(Lcom/iflytek/common/download/DownloadService;)V

    goto/16 :goto_0

    .line 380
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/iflytek/common/download/DownloadService$c;

    .line 381
    .local v11, "errorInfo":Lcom/iflytek/common/download/DownloadService$c;
    iget v3, v11, Lcom/iflytek/common/download/DownloadService$c;->c:I

    iget-object v4, v11, Lcom/iflytek/common/download/DownloadService$c;->d:Ljava/lang/String;

    iget-wide v6, v11, Lcom/iflytek/common/download/DownloadService$c;->a:J

    invoke-static {v2, v3, v4, v6, v7}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 385
    .end local v11    # "errorInfo":Lcom/iflytek/common/download/DownloadService$c;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 386
    .restart local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v14, :cond_0

    .line 387
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 392
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 393
    .restart local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v14, :cond_0

    .line 394
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;JIJ)V

    goto/16 :goto_0

    .line 407
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 408
    .restart local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v14, :cond_0

    .line 409
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v16

    .line 410
    .local v16, "infoId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-gez v3, :cond_7

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 412
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->d(Lcom/iflytek/common/download/DownloadService;)Lnq;

    move-result-object v3

    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnq;->a(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v15

    .line 413
    .restart local v15    # "queryInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v15, :cond_7

    .line 414
    invoke-virtual {v15}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v16

    .line 417
    .end local v15    # "queryInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_7
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->isView()Z

    move-result v3

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1, v3}, Lcom/iflytek/common/download/DownloadService;->a(Lcom/iflytek/common/download/DownloadService;JZ)V

    goto/16 :goto_0

    .line 421
    .end local v14    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v16    # "infoId":J
    :pswitch_10
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->h(Lcom/iflytek/common/download/DownloadService;)V

    goto/16 :goto_0

    .line 424
    :pswitch_11
    invoke-static {v2}, Lcom/iflytek/common/download/DownloadService;->i(Lcom/iflytek/common/download/DownloadService;)V

    goto/16 :goto_0

    .line 427
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/iflytek/common/download/DownloadService;->e(Lcom/iflytek/common/download/DownloadService;J)V

    goto/16 :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_8
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
