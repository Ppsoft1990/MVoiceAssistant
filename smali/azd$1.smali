.class Lazd$1;
.super Landroid/os/AsyncTask;
.source "AudioUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazd;->a(Ljava/io/File;Lazd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lazd;


# direct methods
.method constructor <init>(Lazd;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lazd;

    .prologue
    .line 107
    iput-object p1, p0, Lazd$1;->b:Lazd;

    iput-object p2, p0, Lazd$1;->a:Ljava/io/File;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .param p1, "tempParams"    # [Ljava/lang/Void;

    .prologue
    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 113
    .local v10, "outputStream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 114
    .local v4, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 116
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    invoke-static {v14}, Lazd;->a(Lazd;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    .local v13, "urlObj":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 118
    const-string/jumbo v14, "POST"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 121
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 122
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 123
    const/16 v14, 0x3a98

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 124
    const/16 v14, 0x3a98

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 125
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    move-object/from16 v0, p0

    iget-object v15, v0, Lazd$1;->a:Ljava/io/File;

    invoke-static {v14, v15}, Lazd;->a(Lazd;Ljava/io/File;)[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/OutputStream;->write([B)V

    .line 128
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 130
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 131
    .local v11, "respCode":I
    const/16 v14, 0xc8

    if-ne v11, v14, :cond_9

    .line 132
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 133
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v5, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const v14, 0xc800

    :try_start_1
    new-array v3, v14, [B

    .line 136
    .local v3, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v14, 0x0

    :try_start_2
    array-length v15, v3

    invoke-virtual {v5, v3, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    .local v9, "length":I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_4

    .line 138
    const/4 v14, 0x0

    invoke-virtual {v2, v3, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 151
    .end local v9    # "length":I
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 152
    .end local v3    # "buffer":[B
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "respCode":I
    .end local v13    # "urlObj":Ljava/net/URL;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    const v15, 0x30d42

    invoke-static {v14, v15}, Lazd;->a(Lazd;I)V

    .line 153
    const-string/jumbo v14, "AudioUploadManager"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v1, :cond_0

    .line 157
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 162
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 164
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 169
    :cond_1
    :goto_3
    if-eqz v10, :cond_2

    .line 171
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 176
    :cond_2
    :goto_4
    if-eqz v6, :cond_3

    .line 177
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    const/4 v14, 0x0

    return-object v14

    .line 142
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "length":I
    .restart local v11    # "respCode":I
    .restart local v13    # "urlObj":Ljava/net/URL;
    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-static {v15}, Lwb;->b([B)[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lazd$1;->b:Lazd;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lazd;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lazd;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 143
    .local v12, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    invoke-static {v14}, Lazd;->b(Lazd;)Lazd$a;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    invoke-static {v14}, Lazd;->b(Lazd;)Lazd$a;

    move-result-object v14

    invoke-interface {v14, v12}, Lazd$a;->onSuccess(Ljava/lang/String;)V

    .line 146
    :cond_5
    const-string/jumbo v14, "AudioUploadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "upload audio result: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 155
    .end local v3    # "buffer":[B
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "length":I
    .end local v12    # "result":Ljava/lang/String;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_6
    if-eqz v1, :cond_6

    .line 157
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 162
    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    .line 164
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 169
    :cond_7
    :goto_8
    if-eqz v10, :cond_8

    .line 171
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 176
    :cond_8
    :goto_9
    if-eqz v6, :cond_3

    .line 177
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 148
    :cond_9
    :try_start_b
    const-string/jumbo v14, "AudioUploadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "connect error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lazd$1;->b:Lazd;

    const v15, 0x30d42

    invoke-static {v14, v15}, Lazd;->a(Lazd;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 151
    .end local v11    # "respCode":I
    .end local v13    # "urlObj":Ljava/net/URL;
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 158
    .restart local v11    # "respCode":I
    .restart local v13    # "urlObj":Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 159
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 165
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 166
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 172
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 173
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 158
    .end local v11    # "respCode":I
    .end local v13    # "urlObj":Ljava/net/URL;
    :catch_5
    move-exception v7

    .line 159
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 165
    :catch_6
    move-exception v7

    .line 166
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 172
    :catch_7
    move-exception v7

    .line 173
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 155
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_a
    if-eqz v1, :cond_a

    .line 157
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 162
    :cond_a
    :goto_b
    if-eqz v4, :cond_b

    .line 164
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 169
    :cond_b
    :goto_c
    if-eqz v10, :cond_c

    .line 171
    :try_start_e
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 176
    :cond_c
    :goto_d
    if-eqz v6, :cond_d

    .line 177
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v14

    .line 158
    :catch_8
    move-exception v7

    .line 159
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 165
    .end local v7    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 166
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 172
    .end local v7    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v7

    .line 173
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 155
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "respCode":I
    .restart local v13    # "urlObj":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_a

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v14

    move-object v1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_a

    .line 151
    .end local v3    # "buffer":[B
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v7

    move-object v4, v5

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lazd$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
