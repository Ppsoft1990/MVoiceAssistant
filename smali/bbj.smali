.class public Lbbj;
.super Ljava/lang/Object;
.source "StarResultHandler.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "StarResultHandler"

    iput-object v0, p0, Lbbj;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .locals 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    const-string/jumbo v9, "appMinVersion"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "minVersion":I
    const-string/jumbo v9, "auidos"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 87
    .local v8, "audios":Lorg/json/JSONObject;
    const-string/jumbo v9, "messageName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "messageName":Ljava/lang/String;
    const-string/jumbo v9, "auditionName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "auditionName":Ljava/lang/String;
    const-string/jumbo v9, "morningName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "morningName":Ljava/lang/String;
    const-string/jumbo v9, "nightName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "nightName":Ljava/lang/String;
    const-string/jumbo v9, "remindName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "remindName":Ljava/lang/String;
    const-string/jumbo v9, "callName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "callName":Ljava/lang/String;
    const-string/jumbo v9, "StarResultHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ViaFlyApp version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lhl;->h(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 95
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 97
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 99
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 100
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lhl;->h(Landroid/content/Context;)I

    move-result v9

    if-gt v1, v9, :cond_0

    .line 103
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    invoke-direct/range {v0 .. v7}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .locals 16
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 32
    const/4 v1, 0x0

    .line 74
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 36
    .local v7, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 37
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 40
    .local v1, "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "config.json"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v8, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .local v3, "bufferReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v12, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, "line":Ljava/lang/String;
    :goto_1
    if-eqz v10, :cond_2

    .line 47
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 52
    .local v11, "str":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 53
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v9, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lbbj;->a(Lorg/json/JSONObject;)Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 60
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    if-eqz v3, :cond_4

    .line 61
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 63
    :cond_4
    if-eqz v8, :cond_5

    .line 64
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V

    .line 66
    :cond_5
    if-eqz v6, :cond_6

    .line 67
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    move-object v2, v3

    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 71
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 69
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v4

    .line 70
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "StarResultHandler"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 72
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 56
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v4

    .line 57
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string/jumbo v13, "StarResultHandler"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    if-eqz v2, :cond_7

    .line 61
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 63
    :cond_7
    if-eqz v7, :cond_8

    .line 64
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 66
    :cond_8
    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 69
    :catch_2
    move-exception v4

    .line 70
    const-string/jumbo v13, "StarResultHandler"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 60
    :goto_3
    if-eqz v2, :cond_9

    .line 61
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 63
    :cond_9
    if-eqz v7, :cond_a

    .line 64
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 66
    :cond_a
    if-eqz v5, :cond_b

    .line 67
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 71
    :cond_b
    :goto_4
    throw v13

    .line 69
    :catch_3
    move-exception v4

    .line 70
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "StarResultHandler"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v13

    move-object v2, v3

    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 56
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method
