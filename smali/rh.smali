.class public Lrh;
.super Ljava/lang/Object;
.source "CardsResUpdaterHelper.java"

# interfaces
.implements Lno$c;


# static fields
.field private static a:Lrh;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lvt;

.field private e:Landroid/content/Context;

.field private f:Lno;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ViaFly/cards/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrh;->b:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrh;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrh;->g:Z

    .line 59
    iput v1, p0, Lrh;->h:I

    .line 61
    iput v1, p0, Lrh;->i:I

    .line 63
    iput v1, p0, Lrh;->j:I

    .line 73
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lrh;->e:Landroid/content/Context;

    .line 74
    invoke-static {}, Lvt;->b()Lvt;

    move-result-object v0

    iput-object v0, p0, Lrh;->d:Lvt;

    .line 75
    iget-object v0, p0, Lrh;->e:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iput-object v0, p0, Lrh;->f:Lno;

    .line 76
    iget-object v0, p0, Lrh;->f:Lno;

    const-string/jumbo v1, "CardsResUpdaterHelper"

    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 79
    invoke-virtual {p0}, Lrh;->b()Ljava/lang/String;

    .line 80
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 144
    monitor-enter p0

    const/4 v3, 0x0

    .line 145
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 146
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 148
    .local v0, "bufferreader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 149
    iget-object v11, p0, Lrh;->e:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string/jumbo v12, "cards/config.json"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 154
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    .end local v0    # "bufferreader":Ljava/io/BufferedReader;
    .local v1, "bufferreader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v10, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "line":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_1

    .line 160
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    goto :goto_1

    .line 151
    .end local v1    # "bufferreader":Ljava/io/BufferedReader;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v0    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 164
    .end local v0    # "bufferreader":Ljava/io/BufferedReader;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 166
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .local v7, "jsonObject":Lorg/json/JSONObject;
    move-object v0, v1

    .end local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 172
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_2
    monitor-exit p0

    return-object v7

    .end local v0    # "bufferreader":Ljava/io/BufferedReader;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v9    # "str":Ljava/lang/String;
    .restart local v10    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    move-object v0, v1

    .end local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "stringBuffer":Ljava/lang/StringBuffer;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_3
    const/4 v7, 0x0

    goto :goto_2

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string/jumbo v11, "CardsResUpdaterHelper"

    const-string/jumbo v12, "getConfigFileInfo error"

    invoke-static {v11, v12, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_5
    monitor-exit p0

    throw v11

    .line 169
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "bufferreader":Ljava/io/BufferedReader;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 144
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v0    # "bufferreader":Ljava/io/BufferedReader;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "bufferreader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5
.end method

.method public static declared-synchronized a()Lrh;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lrh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lrh;->a:Lrh;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lrh;

    invoke-direct {v0}, Lrh;-><init>()V

    sput-object v0, Lrh;->a:Lrh;

    .line 69
    :cond_0
    sget-object v0, Lrh;->a:Lrh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 8

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    .local v2, "startTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lrh;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "cards.zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lrh;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/iflytek/yd/util/FileManager;->unZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lrh;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "cards.zip"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrh;->g:Z

    .line 202
    const-string/jumbo v1, "CardsResUpdaterHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "installRes end, result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,duration time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v1, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 193
    .end local v0    # "result":Z
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/String;
    .locals 10

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 218
    .local v4, "startTime":J
    const-string/jumbo v1, "file:///android_asset/cards/index.html"

    .line 221
    .local v1, "entry":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lrh;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    .local v0, "defaultObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 223
    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lrh;->h:I

    .line 227
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lrh;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "cards/config.json"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lrh;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 228
    .local v2, "localObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 229
    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lrh;->i:I

    .line 232
    :cond_1
    const-string/jumbo v3, "CardsResUpdaterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCardsZoneEntry, defaultVersion is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lrh;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , localVersion is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lrh;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v3, p0, Lrh;->i:I

    iget v6, p0, Lrh;->h:I

    if-le v3, v6, :cond_2

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file://"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lrh;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "cards/index.html"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    iget v3, p0, Lrh;->i:I

    iput v3, p0, Lrh;->j:I

    .line 243
    :goto_0
    const-string/jumbo v3, "CardsResUpdaterHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCardsZoneEntry end, mCurrentVersion is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lrh;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,entry is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ,duration time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-static {v3, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-object v1

    .line 240
    :cond_2
    :try_start_1
    iget v3, p0, Lrh;->h:I

    iput v3, p0, Lrh;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    .end local v0    # "defaultObject":Lorg/json/JSONObject;
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "localObject":Lorg/json/JSONObject;
    .end local v4    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public c()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lrh;->j:I

    return v0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 276
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 277
    .local v0, "type":I
    const-string/jumbo v1, "CardsResUpdaterHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "downloadError, errorCode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrh;->g:Z

    .line 282
    :cond_0
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 260
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "CardsResUpdaterHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloadStatusChanged, type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 268
    const-string/jumbo v2, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-direct {p0}, Lrh;->d()V

    goto :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 288
    return-void
.end method
