.class public Lub;
.super Ljava/lang/Object;
.source "AppCardAbilityHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private c:I

.field private d:Lui;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lui$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lub;->c:I

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lub;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lub;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Lub$1;

    invoke-direct {v0, p0}, Lub$1;-><init>(Lub;)V

    iput-object v0, p0, Lub;->g:Lui$a;

    .line 47
    const-string/jumbo v0, "APP_AppCardAbilityHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppCardAbilityHelper() webView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lub;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lub;->b:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 50
    iget-object v0, p0, Lub;->a:Landroid/content/Context;

    invoke-static {v0}, Lui;->a(Landroid/content/Context;)Lui;

    move-result-object v0

    iput-object v0, p0, Lub;->d:Lui;

    .line 51
    iget-object v1, p0, Lub;->d:Lui;

    iget-object v0, p0, Lub;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lui;->a(Landroid/app/Activity;)V

    .line 52
    iget-object v0, p0, Lub;->d:Lui;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APP_AppCardAbilityHelper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lub;->g:Lui$a;

    invoke-virtual {v0, v1, v2}, Lui;->a(Ljava/lang/String;Lui$a;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lub;)I
    .locals 1
    .param p0, "x0"    # Lub;

    .prologue
    .line 29
    iget v0, p0, Lub;->c:I

    return v0
.end method

.method static synthetic b(Lub;)Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .locals 1
    .param p0, "x0"    # Lub;

    .prologue
    .line 29
    iget-object v0, p0, Lub;->b:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-object v0
.end method

.method static synthetic c(Lub;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lub;

    .prologue
    .line 29
    iget-object v0, p0, Lub;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic d(Lub;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lub;

    .prologue
    .line 29
    iget-object v0, p0, Lub;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 191
    .local v10, "result":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 229
    :cond_0
    return-object v10

    .line 195
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v6, "listDownloadInfo":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 197
    .local v14, "url":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lub;->a:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v16

    .line 201
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v5

    .line 202
    .local v5, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v5, :cond_2

    .line 205
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v5    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v14    # "url":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 210
    .restart local v5    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v11, "stateJson":Lorg/json/JSONObject;
    const-string/jumbo v16, "status"

    .line 212
    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lnw;->a(I)Ljava/lang/String;

    move-result-object v17

    .line 211
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-wide/16 v8, 0x0

    .line 214
    .local v8, "progress":D
    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v2

    .line 215
    .local v2, "currByte":J
    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v12

    .line 216
    .local v12, "totalByte":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lub;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 217
    .local v7, "progressTmp":Ljava/lang/Double;
    if-eqz v7, :cond_5

    .line 218
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 222
    :cond_4
    :goto_2
    const-string/jumbo v16, "progress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {v5}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    .end local v2    # "currByte":J
    .end local v7    # "progressTmp":Ljava/lang/Double;
    .end local v8    # "progress":D
    .end local v11    # "stateJson":Lorg/json/JSONObject;
    .end local v12    # "totalByte":J
    :catch_0
    move-exception v4

    .line 225
    .local v4, "ex":Ljava/lang/Exception;
    const-string/jumbo v16, "APP_AppCardAbilityHelper"

    const-string/jumbo v17, "generate json failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 219
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v2    # "currByte":J
    .restart local v7    # "progressTmp":Ljava/lang/Double;
    .restart local v8    # "progress":D
    .restart local v11    # "stateJson":Lorg/json/JSONObject;
    .restart local v12    # "totalByte":J
    :cond_5
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-eqz v16, :cond_4

    .line 220
    long-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    mul-double v16, v16, v18

    long-to-double v0, v12

    move-wide/from16 v18, v0

    div-double v8, v16, v18

    goto :goto_2
.end method

.method public a(I)V
    .locals 0
    .param p1, "needNotify"    # I

    .prologue
    .line 180
    iput p1, p0, Lub;->c:I

    .line 181
    return-void
.end method

.method public b(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v5, "result":Lorg/json/JSONObject;
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    :goto_0
    return-object v5

    .line 243
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    .local v0, "beginTime":J
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lub;->a:Landroid/content/Context;

    invoke-static {v7}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v7

    .line 247
    invoke-virtual {v7, v4}, Lgq;->d(Ljava/lang/String;)Z

    move-result v3

    .line 248
    .local v3, "isAppInstalled":Z
    const-string/jumbo v7, "APP_AppCardAbilityHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is installed? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    .end local v3    # "isAppInstalled":Z
    .end local v4    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 252
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "APP_AppCardAbilityHelper"

    const-string/jumbo v7, "isAppInstalled() "

    invoke-static {v6, v7, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v6, "APP_AppCardAbilityHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAppInstalled() waste time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
