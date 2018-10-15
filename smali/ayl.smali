.class public Layl;
.super Ljava/lang/Object;
.source "TranslatePicRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layl$a;,
        Layl$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Layl$a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Layl$a;)V
    .locals 2
    .param p1, "onResultListener"    # Layl$a;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Layl;->c:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Layl;->b:Layl$a;

    .line 55
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Layl$1;

    invoke-direct {v1, p0}, Layl$1;-><init>(Layl;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Layl;->a:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic a(Layl;)Layl$a;
    .locals 1
    .param p0, "x0"    # Layl;

    .prologue
    .line 40
    iget-object v0, p0, Layl;->b:Layl$a;

    return-object v0
.end method

.method static synthetic a(Layl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Layl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Layl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p1, "actionUrl"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v11, 0x0

    .line 136
    .local v11, "outStream":Ljava/io/DataOutputStream;
    const/4 v9, 0x0

    .line 138
    .local v9, "in":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 140
    .local v15, "sb2":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v5

    .line 141
    .local v5, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v10, "obj":Lorg/json/JSONObject;
    const-string/jumbo v19, "location"

    const-string/jumbo v20, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v19, "language"

    const-string/jumbo v20, "en"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v19, "osid"

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v20, "imei"

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    const-string/jumbo v19, ""

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v19, "ua"

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v19, "clientver"

    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v19, "TranslatePicRequestHelper"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "param":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Layl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "base64Image":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 153
    const-string/jumbo v19, "TranslatePicRequestHelper"

    const-string/jumbo v20, "base64Image is null "

    invoke-static/range {v19 .. v20}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    const/16 v19, 0x0

    .line 196
    if-eqz v11, :cond_0

    .line 198
    :try_start_1
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    .end local v2    # "base64Image":Ljava/lang/String;
    .end local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v13    # "param":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v19

    .line 145
    .restart local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .restart local v10    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v19

    goto :goto_0

    .line 199
    .restart local v2    # "base64Image":Ljava/lang/String;
    .restart local v13    # "param":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 200
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v20, "TranslatePicRequestHelper"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 156
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "image="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "image":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 158
    .local v17, "time":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ea5dd4bdf6dd43e6e8a8ca39f970b82d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/iflytek/yd/util/security/MD5Helper;->md5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "checksum":Ljava/lang/String;
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 160
    .local v18, "uri":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 161
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 162
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 163
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 164
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 165
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 166
    const-string/jumbo v19, "POST"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v19, "connection"

    const-string/jumbo v20, "keep-alive"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v19, "Content-Type"

    const-string/jumbo v20, "application/x-www-form-urlencoded;chartset=UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v19, "X-Appid"

    const-string/jumbo v20, "5a7aca20"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v19, "X-CurTime"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v19, "X-Param"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v19, "X-CheckSum"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .local v12, "outStream":Ljava/io/DataOutputStream;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 175
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 176
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 177
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 180
    .local v14, "res":I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v14, v0, :cond_5

    .line 181
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 183
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    .end local v15    # "sb2":Ljava/lang/StringBuilder;
    .local v16, "sb2":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "ch":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_4

    .line 185
    int-to-char v0, v3

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 192
    .end local v3    # "ch":I
    :catch_1
    move-exception v7

    move-object/from16 v15, v16

    .end local v16    # "sb2":Ljava/lang/StringBuilder;
    .restart local v15    # "sb2":Ljava/lang/StringBuilder;
    move-object v11, v12

    .line 193
    .end local v2    # "base64Image":Ljava/lang/String;
    .end local v4    # "checksum":Ljava/lang/String;
    .end local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "image":Ljava/lang/String;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .end local v13    # "param":Ljava/lang/String;
    .end local v14    # "res":I
    .end local v17    # "time":I
    .end local v18    # "uri":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    :goto_3
    :try_start_6
    const-string/jumbo v19, "TranslatePicRequestHelper"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    invoke-direct/range {p0 .. p0}, Layl;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    if-eqz v11, :cond_3

    .line 198
    :try_start_7
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 204
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    if-nez v15, :cond_7

    const-string/jumbo v19, ""

    goto/16 :goto_1

    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .end local v15    # "sb2":Ljava/lang/StringBuilder;
    .restart local v2    # "base64Image":Ljava/lang/String;
    .restart local v3    # "ch":I
    .restart local v4    # "checksum":Ljava/lang/String;
    .restart local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "image":Ljava/lang/String;
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v13    # "param":Ljava/lang/String;
    .restart local v14    # "res":I
    .restart local v16    # "sb2":Ljava/lang/StringBuilder;
    .restart local v17    # "time":I
    .restart local v18    # "uri":Ljava/net/URL;
    :cond_4
    move-object/from16 v15, v16

    .line 191
    .end local v3    # "ch":I
    .end local v16    # "sb2":Ljava/lang/StringBuilder;
    .restart local v15    # "sb2":Ljava/lang/StringBuilder;
    :goto_5
    :try_start_8
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 196
    if-eqz v12, :cond_8

    .line 198
    :try_start_9
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v11, v12

    .line 201
    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 188
    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .restart local v12    # "outStream":Ljava/io/DataOutputStream;
    :cond_5
    :try_start_a
    const-string/jumbo v19, "TranslatePicRequestHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "res "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct/range {p0 .. p0}, Layl;->c()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 192
    .end local v14    # "res":I
    :catch_2
    move-exception v7

    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 199
    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .restart local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v14    # "res":I
    :catch_3
    move-exception v7

    .line 200
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v19, "TranslatePicRequestHelper"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v11, v12

    .line 201
    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 199
    .end local v2    # "base64Image":Ljava/lang/String;
    .end local v4    # "checksum":Ljava/lang/String;
    .end local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "image":Ljava/lang/String;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v13    # "param":Ljava/lang/String;
    .end local v14    # "res":I
    .end local v17    # "time":I
    .end local v18    # "uri":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 200
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v19, "TranslatePicRequestHelper"

    const-string/jumbo v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 196
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_6
    if-eqz v11, :cond_6

    .line 198
    :try_start_b
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 201
    :cond_6
    :goto_7
    throw v19

    .line 199
    :catch_5
    move-exception v7

    .line 200
    .restart local v7    # "e":Ljava/io/IOException;
    const-string/jumbo v20, "TranslatePicRequestHelper"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 204
    .end local v7    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 196
    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .restart local v2    # "base64Image":Ljava/lang/String;
    .restart local v4    # "checksum":Ljava/lang/String;
    .restart local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "image":Ljava/lang/String;
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v13    # "param":Ljava/lang/String;
    .restart local v17    # "time":I
    .restart local v18    # "uri":Ljava/net/URL;
    :catchall_1
    move-exception v19

    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_6

    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .end local v15    # "sb2":Ljava/lang/StringBuilder;
    .restart local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v14    # "res":I
    .restart local v16    # "sb2":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v19

    move-object/from16 v15, v16

    .end local v16    # "sb2":Ljava/lang/StringBuilder;
    .restart local v15    # "sb2":Ljava/lang/StringBuilder;
    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_6

    .line 192
    .end local v2    # "base64Image":Ljava/lang/String;
    .end local v4    # "checksum":Ljava/lang/String;
    .end local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "image":Ljava/lang/String;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v13    # "param":Ljava/lang/String;
    .end local v14    # "res":I
    .end local v17    # "time":I
    .end local v18    # "uri":Ljava/net/URL;
    :catch_6
    move-exception v7

    goto/16 :goto_3

    .end local v11    # "outStream":Ljava/io/DataOutputStream;
    .restart local v2    # "base64Image":Ljava/lang/String;
    .restart local v4    # "checksum":Ljava/lang/String;
    .restart local v5    # "config":Lcom/iflytek/yd/business/AppConfig;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "image":Ljava/lang/String;
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v13    # "param":Ljava/lang/String;
    .restart local v14    # "res":I
    .restart local v17    # "time":I
    .restart local v18    # "uri":Ljava/net/URL;
    :cond_8
    move-object v11, v12

    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_4
.end method

.method static synthetic b(Layl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Layl;

    .prologue
    .line 40
    iget-object v0, p0, Layl;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x400000

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 218
    const-string/jumbo v3, "TranslatePicRequestHelper"

    const-string/jumbo v4, "file is big "

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v3, 0x0

    .line 225
    :goto_0
    return-object v3

    .line 221
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 222
    .local v2, "inputFile":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v0, v3, [B

    .line 223
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 224
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 225
    invoke-static {v0}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 89
    const-string/jumbo v0, "http://webapi.xfyun.cn/v1/service/v1/ocr/general"

    .line 90
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Layl$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Layl$b;-><init>(Layl;ILjava/lang/String;)V

    invoke-virtual {v1}, Layl$b;->start()V

    .line 91
    const-string/jumbo v1, "TranslatePicRequestHelper"

    const-string/jumbo v2, "\u8bc6\u522b\u56fe\u7247"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method static synthetic c(Layl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Layl;

    .prologue
    .line 40
    iget-object v0, p0, Layl;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 209
    .local v0, "msg":Landroid/os/Message;
    const-string/jumbo v1, ""

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 211
    iget-object v1, p0, Layl;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 212
    const-string/jumbo v1, "TranslatePicRequestHelper"

    const-string/jumbo v2, "TAG_ERROR"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Layl;->c:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Layl;->b()V

    .line 86
    return-void
.end method
