.class Lts$1;
.super Ljava/lang/Object;
.source "WXLoginUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lts;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lts;


# direct methods
.method constructor <init>(Lts;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lts;

    .prologue
    .line 67
    iput-object p1, p0, Lts$1;->b:Lts;

    iput-object p2, p0, Lts$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 70
    const/4 v9, 0x0

    .line 72
    .local v9, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 73
    .local v7, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 75
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v17, "urlObj":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 77
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 78
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 79
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 80
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 81
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 82
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 83
    .local v14, "respCode":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v14, v0, :cond_f

    .line 84
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 85
    .local v11, "inputStream":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v8, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const v18, 0xc800

    :try_start_1
    move/from16 v0, v18

    new-array v6, v0, [B

    .line 88
    .local v6, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 89
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/16 v18, 0x0

    :try_start_2
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v12

    .local v12, "length":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_3

    .line 90
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    .end local v12    # "length":I
    :catch_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 118
    .end local v6    # "buffer":[B
    .end local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "respCode":I
    .end local v17    # "urlObj":Ljava/net/URL;
    .restart local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v10, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    if-eqz v4, :cond_0

    .line 122
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 127
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 129
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 134
    :cond_1
    :goto_3
    if-eqz v9, :cond_2

    .line 135
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v18

    new-instance v19, Laol;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Laol;-><init>(Z)V

    invoke-virtual/range {v18 .. v19}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 139
    new-instance v18, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v19, Lts$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lts$1$1;-><init>(Lts$1;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :goto_5
    return-void

    .line 92
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "length":I
    .restart local v14    # "respCode":I
    .restart local v17    # "urlObj":Ljava/net/URL;
    :cond_3
    :try_start_6
    new-instance v16, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 93
    .local v16, "result":Ljava/lang/String;
    const-string/jumbo v18, "WXLoginUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "first result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    const/4 v13, 0x0

    .line 96
    .local v13, "openid":Ljava/lang/String;
    :try_start_7
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v15, "response":Lorg/json/JSONObject;
    if-eqz v15, :cond_4

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    const-string/jumbo v19, "access_token"

    .line 99
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 98
    invoke-static/range {v18 .. v19}, Lts;->a(Lts;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    const-string/jumbo v19, "refresh_token"

    .line 101
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 100
    invoke-static/range {v18 .. v19}, Lts;->b(Lts;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    const-string/jumbo v18, "openid"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v13

    .line 107
    .end local v15    # "response":Lorg/json/JSONObject;
    :cond_4
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lts;->a(Lts;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lts;->b(Lts;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lts;->c(Lts;)Ltt;

    move-result-object v18

    if-nez v18, :cond_5

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    new-instance v19, Ltt;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lts;->d(Lts;)Lyn;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Ltt;-><init>(Landroid/content/Context;Lyn;)V

    invoke-static/range {v18 .. v19}, Lts;->a(Lts;Ltt;)Ltt;

    .line 111
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lts;->c(Lts;)Ltt;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lts;->a(Lts;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lts$1;->b:Lts;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lts;->b(Lts;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v13, v2, v3}, Ltt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 120
    if-eqz v5, :cond_6

    .line 122
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 127
    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    .line 129
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 134
    :cond_7
    :goto_8
    if-eqz v9, :cond_8

    .line 135
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 112
    .end local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .line 104
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v10

    .line 105
    .local v10, "e":Lorg/json/JSONException;
    :try_start_b
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 120
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v12    # "length":I
    .end local v13    # "openid":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v18

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v6    # "buffer":[B
    .end local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v14    # "respCode":I
    .end local v17    # "urlObj":Ljava/net/URL;
    .restart local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_9
    if-eqz v4, :cond_9

    .line 122
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 127
    :cond_9
    :goto_a
    if-eqz v7, :cond_a

    .line 129
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 134
    :cond_a
    :goto_b
    if-eqz v9, :cond_b

    .line 135
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v18

    .line 123
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "length":I
    .restart local v13    # "openid":Ljava/lang/String;
    .restart local v14    # "respCode":I
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "urlObj":Ljava/net/URL;
    :catch_2
    move-exception v10

    .line 124
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 130
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 131
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .end local v10    # "e":Ljava/io/IOException;
    :cond_c
    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 120
    .end local v6    # "buffer":[B
    .end local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "length":I
    .end local v13    # "openid":Ljava/lang/String;
    .end local v16    # "result":Ljava/lang/String;
    .restart local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_c
    if-eqz v4, :cond_d

    .line 122
    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 127
    :cond_d
    :goto_d
    if-eqz v7, :cond_e

    .line 129
    :try_start_f
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 134
    :cond_e
    :goto_e
    if-eqz v9, :cond_2

    .line 135
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    .line 115
    :cond_f
    :try_start_10
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "first result: fail"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_c

    .line 117
    .end local v14    # "respCode":I
    .end local v17    # "urlObj":Ljava/net/URL;
    :catch_4
    move-exception v10

    goto/16 :goto_1

    .line 123
    .restart local v14    # "respCode":I
    .restart local v17    # "urlObj":Ljava/net/URL;
    :catch_5
    move-exception v10

    .line 124
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 130
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 131
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 123
    .end local v14    # "respCode":I
    .end local v17    # "urlObj":Ljava/net/URL;
    :catch_7
    move-exception v10

    .line 124
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 130
    :catch_8
    move-exception v10

    .line 131
    const-string/jumbo v18, "WXLoginUtil"

    const-string/jumbo v19, "error "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 123
    .end local v10    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v10

    .line 124
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "WXLoginUtil"

    const-string/jumbo v20, "error "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 130
    .end local v10    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v10

    .line 131
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v19, "WXLoginUtil"

    const-string/jumbo v20, "error "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 120
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v18

    goto/16 :goto_9

    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "respCode":I
    .restart local v17    # "urlObj":Ljava/net/URL;
    :catchall_2
    move-exception v18

    move-object v7, v8

    .end local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_9

    .line 117
    .end local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v10

    move-object v7, v8

    .end local v8    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method
