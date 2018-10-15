.class public Lcom/baidu/aiupdatesdk/obf/l;
.super Ljava/lang/Object;
.source "BDPlatformRequest.java"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/ag;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/l;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/ag;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/l;->b:Ljava/util/concurrent/ExecutorService;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/l;->c:Z

    .line 41
    return-void
.end method

.method public static a()Lcom/baidu/aiupdatesdk/obf/l;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/l;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/obf/l;-><init>()V

    return-object v0
.end method

.method private a(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;Ljava/lang/String;)V
    .locals 1
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/aiupdatesdk/obf/p",
            "<TT;>;",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "coder":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p2, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0, p3}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 163
    invoke-virtual {p1, p2}, Lcom/baidu/aiupdatesdk/obf/p;->b(Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 164
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "httpURLConnection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    const/4 p1, 0x0

    .line 158
    :cond_0
    return-void
.end method

.method private c(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/aiupdatesdk/obf/p",
            "<TT;>;",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "coder":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p2, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    move-object v1, p1

    .line 56
    .local v1, "fCoder":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-static {p2}, Lcom/baidu/aiupdatesdk/obf/q;->a(Lcom/baidu/aiupdatesdk/obf/n;)Lcom/baidu/aiupdatesdk/obf/q;

    move-result-object v0

    .line 57
    .local v0, "fCallback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    sget-object v2, Lcom/baidu/aiupdatesdk/obf/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/baidu/aiupdatesdk/obf/l$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/baidu/aiupdatesdk/obf/l$1;-><init>(Lcom/baidu/aiupdatesdk/obf/l;Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    return-void
.end method

.method private d(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/aiupdatesdk/obf/p",
            "<TT;>;",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "coder":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p2, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    const/4 v0, -0x1

    const-string/jumbo v1, "connect error"

    invoke-virtual {p1, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 169
    invoke-virtual {p1, p2}, Lcom/baidu/aiupdatesdk/obf/p;->b(Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 170
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/aiupdatesdk/obf/p",
            "<TT;>;",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "coder":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p2, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This thread(non_ui) forbids invoke."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/l;->c(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 52
    return-void
.end method

.method public b(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/aiupdatesdk/obf/p",
            "<TT;>;",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "coder":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p2, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 68
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "This thread(ui) forbids invoke."

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 71
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/aiupdatesdk/obf/p;->d()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/baidu/aiupdatesdk/obf/ae;->a(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 72
    const/4 v15, -0x1

    const-string/jumbo v16, "Net not connected."

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 73
    invoke-virtual/range {p1 .. p2}, Lcom/baidu/aiupdatesdk/obf/p;->b(Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 151
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v8, 0x0

    .line 79
    .local v8, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/aiupdatesdk/obf/p;->b()Ljava/lang/String;

    move-result-object v14

    .line 80
    .local v14, "url":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "request: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/aiupdatesdk/obf/p;->d()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Lcom/baidu/aiupdatesdk/obf/ae;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 82
    const-string/jumbo v15, "POST"

    invoke-virtual {v8, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/aiupdatesdk/obf/p;->f()[B

    move-result-object v12

    .line 85
    .local v12, "requestBody":[B
    if-nez v12, :cond_2

    .line 86
    const/high16 v15, -0x80000000

    const-string/jumbo v16, "encode error"

    .line 88
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 89
    invoke-virtual/range {p1 .. p2}, Lcom/baidu/aiupdatesdk/obf/p;->b(Lcom/baidu/aiupdatesdk/obf/n;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 95
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/baidu/aiupdatesdk/obf/l;->c:Z

    if-eqz v15, :cond_3

    .line 96
    invoke-virtual/range {p1 .. p2}, Lcom/baidu/aiupdatesdk/obf/p;->a(Lcom/baidu/aiupdatesdk/obf/n;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_0

    .line 101
    :cond_3
    :try_start_2
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    .local v10, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v10, v12}, Ljava/io/OutputStream;->write([B)V

    .line 103
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 104
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 108
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 109
    .local v13, "statusCode":I
    const/16 v15, 0xc8

    if-lt v13, v15, :cond_4

    const/16 v15, 0x12c

    if-lt v13, v15, :cond_5

    .line 110
    :cond_4
    const/4 v15, -0x2

    const-string/jumbo v16, "http %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 112
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/p;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 113
    invoke-virtual/range {p1 .. p2}, Lcom/baidu/aiupdatesdk/obf/p;->b(Lcom/baidu/aiupdatesdk/obf/n;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 118
    :cond_5
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v5, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x200

    .line 120
    .local v4, "bufferSize":I
    const/16 v15, 0x200

    new-array v3, v15, [B

    .line 121
    .local v3, "buffer":[B
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 122
    .local v9, "in":Ljava/io/InputStream;
    const/4 v11, -0x1

    .line 123
    .local v11, "read":I
    :goto_1
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_6

    .line 124
    const/4 v15, 0x0

    invoke-virtual {v5, v3, v15, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 142
    .end local v3    # "buffer":[B
    .end local v4    # "bufferSize":I
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "read":I
    .end local v12    # "requestBody":[B
    .end local v13    # "statusCode":I
    .end local v14    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 143
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    invoke-direct/range {p0 .. p2}, Lcom/baidu/aiupdatesdk/obf/l;->d(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 144
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 126
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v3    # "buffer":[B
    .restart local v4    # "bufferSize":I
    .restart local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "in":Ljava/io/InputStream;
    .restart local v10    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "read":I
    .restart local v12    # "requestBody":[B
    .restart local v13    # "statusCode":I
    .restart local v14    # "url":Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 127
    .local v6, "contentByteArray":[B
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 128
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 131
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/baidu/aiupdatesdk/obf/l;->c:Z

    if-eqz v15, :cond_7

    .line 132
    invoke-virtual/range {p1 .. p2}, Lcom/baidu/aiupdatesdk/obf/p;->a(Lcom/baidu/aiupdatesdk/obf/n;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 139
    :cond_7
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/baidu/aiupdatesdk/obf/p;->a([B)V

    .line 140
    invoke-virtual/range {p1 .. p2}, Lcom/baidu/aiupdatesdk/obf/p;->b(Lcom/baidu/aiupdatesdk/obf/n;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .line 145
    .end local v3    # "buffer":[B
    .end local v4    # "bufferSize":I
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "contentByteArray":[B
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "read":I
    .end local v12    # "requestBody":[B
    .end local v13    # "statusCode":I
    .end local v14    # "url":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 146
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/baidu/aiupdatesdk/obf/l;->a(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 149
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/baidu/aiupdatesdk/obf/l;->a(Ljava/net/HttpURLConnection;)V

    throw v15
.end method
