.class public Lcom/baidu/aiupdatesdk/obf/i;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/i;->a:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "oldUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 360
    if-nez p1, :cond_1

    .line 372
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 363
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    const-string/jumbo v2, "http://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    :cond_2
    const-string/jumbo v2, "//"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "httpStr":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "oldUrls":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .param p1, "responseMessage"    # I
    .param p2, "response"    # Ljava/lang/Object;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/i;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/i;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 260
    :cond_0
    new-instance v0, Landroid/os/Message;

    .end local v0    # "msg":Landroid/os/Message;
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 261
    .restart local v0    # "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 262
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method a(Ljava/net/HttpURLConnection;)Ljava/net/URL;
    .locals 17
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 272
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 274
    .local v12, "statusCode":I
    const/16 v14, 0x12d

    if-eq v12, v14, :cond_0

    const/16 v14, 0x12e

    if-ne v12, v14, :cond_2

    .line 275
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 276
    const-string/jumbo v14, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "reLocation":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 278
    const/4 v8, 0x0

    .line 356
    .end local v7    # "reLocation":Ljava/lang/String;
    .end local v12    # "statusCode":I
    :goto_0
    return-object v8

    .line 280
    .restart local v7    # "reLocation":Ljava/lang/String;
    .restart local v12    # "statusCode":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/baidu/aiupdatesdk/obf/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    const-string/jumbo v14, " "

    const-string/jumbo v15, "%20"

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 282
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 283
    .local v8, "reUrl":Ljava/net/URL;
    goto :goto_0

    .line 284
    .end local v7    # "reLocation":Ljava/lang/String;
    .end local v8    # "reUrl":Ljava/net/URL;
    :cond_2
    const/16 v14, 0xc8

    if-lt v12, v14, :cond_3

    const/16 v14, 0x12c

    if-lt v12, v14, :cond_4

    .line 285
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "http "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "responseBody":Ljava/lang/String;
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/baidu/aiupdatesdk/obf/i;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 356
    .end local v11    # "responseBody":Ljava/lang/String;
    .end local v12    # "statusCode":I
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 291
    .restart local v12    # "statusCode":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 292
    .local v4, "in":Ljava/io/InputStream;
    if-nez v4, :cond_5

    .line 293
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/baidu/aiupdatesdk/obf/i;->b(ILjava/lang/String;)V

    .line 294
    const/4 v14, 0x0

    new-array v14, v14, [B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/baidu/aiupdatesdk/obf/i;->b([BI)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/aiupdatesdk/obf/i;->h()V

    .line 296
    const/4 v8, 0x0

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 300
    .local v2, "contentLength":I
    const v14, 0x7fffffff

    if-le v2, v14, :cond_6

    .line 301
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "HTTP entity too large to be buffered in memory"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v2    # "contentLength":I
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v12    # "statusCode":I
    :catch_0
    move-exception v3

    .line 353
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 354
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/baidu/aiupdatesdk/obf/i;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "contentLength":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v12    # "statusCode":I
    :cond_6
    if-gez v2, :cond_7

    .line 305
    const/16 v2, 0x1000

    .line 307
    :cond_7
    :try_start_1
    const-string/jumbo v1, "Receive Start"

    .line 308
    .local v1, "charset":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/baidu/aiupdatesdk/obf/i;->b(ILjava/lang/String;)V

    .line 311
    const/4 v9, 0x0

    .line 312
    .local v9, "readDone":Z
    const/4 v13, 0x0

    .line 313
    .local v13, "tmp":[B
    const/4 v10, 0x0

    .line 316
    .local v10, "remain":I
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 317
    new-instance v14, Ljava/lang/InterruptedException;

    const-string/jumbo v15, "request interupted!"

    invoke-direct {v14, v15}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/baidu/aiupdatesdk/obf/i;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 318
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 320
    :cond_9
    if-nez v13, :cond_a

    .line 321
    const/16 v14, 0x400

    new-array v13, v14, [B

    .line 323
    :cond_a
    const/4 v6, 0x0

    .line 324
    .local v6, "offset":I
    const/16 v10, 0x400

    .line 328
    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 329
    new-instance v14, Ljava/lang/InterruptedException;

    const-string/jumbo v15, "request interupted!"

    invoke-direct {v14, v15}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/baidu/aiupdatesdk/obf/i;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 330
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 332
    :cond_c
    invoke-virtual {v4, v13, v6, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 333
    .local v5, "length":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_e

    .line 334
    add-int/2addr v6, v5

    .line 335
    sub-int/2addr v10, v5

    .line 340
    if-gtz v10, :cond_b

    .line 342
    :goto_2
    if-ltz v6, :cond_d

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/baidu/aiupdatesdk/obf/i;->b([BI)V

    .line 345
    :cond_d
    const/4 v13, 0x0

    .line 346
    if-eqz v9, :cond_8

    .line 348
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/aiupdatesdk/obf/i;->h()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 337
    :cond_e
    const/4 v9, 0x1

    .line 338
    goto :goto_2
.end method

.method public a(ILjava/lang/String;)V
    .locals 0
    .param p1, "contentLength"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 214
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 217
    .local v0, "repsonse":[Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/baidu/aiupdatesdk/obf/i;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0    # "repsonse":[Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 223
    .local v1, "segment":[B
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/i;->c([BI)V

    goto :goto_0

    .line 226
    .end local v1    # "segment":[B
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/i;->i()V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 233
    .restart local v0    # "repsonse":[Ljava/lang/Object;
    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Throwable;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/baidu/aiupdatesdk/obf/i;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v0    # "repsonse":[Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/i;->d()V

    goto :goto_0

    .line 239
    :pswitch_5
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/i;->c()V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncHttpResponseHandler:onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public a([BI)V
    .locals 0
    .param p1, "slice"    # [B
    .param p2, "length"    # I

    .prologue
    .line 123
    return-void
.end method

.method protected b(ILjava/lang/String;)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 175
    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/i;->b(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 245
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/i;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/i;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 247
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/i;->a:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 253
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/obf/i;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string/jumbo v0, "AsyncHttpResponseHandler:onFailure"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/obf/i;->a(Ljava/lang/Throwable;)V

    .line 148
    return-void
.end method

.method protected b([BI)V
    .locals 2
    .param p1, "slice"    # [B
    .param p2, "length"    # I

    .prologue
    .line 179
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 181
    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/i;->b(Landroid/os/Message;)V

    .line 182
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "AsyncHttpResponseHandler:onFinish"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method protected c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/i;->b(Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method protected c([BI)V
    .locals 0
    .param p1, "slice"    # [B
    .param p2, "length"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/i;->a([BI)V

    .line 206
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "AsyncHttpResponseHandler:onStart"

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected d(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/i;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/i;->b(Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/i;->b(Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/aiupdatesdk/obf/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/aiupdatesdk/obf/i;->b(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/i;->e()V

    .line 210
    return-void
.end method
