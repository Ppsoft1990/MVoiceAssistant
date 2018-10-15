.class public final Lapc;
.super Ljava/lang/Object;
.source "RequestMonitorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapc$a;,
        Lapc$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lapd;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lapd;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lwf;

.field private d:Z

.field private e:I

.field private f:Lyo;

.field private g:Landroid/os/Looper;

.field private h:Landroid/content/Context;

.field private i:Lapc$a;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lapc;->a:Ljava/util/Map;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lapc;->b:Ljava/util/List;

    .line 47
    const/4 v4, 0x0

    iput-boolean v4, p0, Lapc;->d:Z

    .line 70
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v4, "RequestMonitorHelper"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 72
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lapc;->g:Landroid/os/Looper;

    .line 74
    new-instance v4, Lapc$a;

    invoke-direct {v4, p0}, Lapc$a;-><init>(Lapc;)V

    iput-object v4, p0, Lapc;->i:Lapc$a;

    .line 76
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lapc;->h:Landroid/content/Context;

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lapc;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/request_monitor.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "monitorLogPath":Ljava/lang/String;
    new-instance v4, Lwf;

    invoke-direct {v4, v3}, Lwf;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lapc;->c:Lwf;

    .line 80
    iget-object v4, p0, Lapc;->h:Landroid/content/Context;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    .line 81
    .local v0, "env":Lhl;
    new-instance v2, Lapc$1;

    invoke-direct {v2, p0, v0}, Lapc$1;-><init>(Lapc;Lhl;)V

    .line 99
    .local v2, "httpContext":Lcom/iflytek/yd/http/interfaces/HttpContext;
    new-instance v4, Lapc$2;

    invoke-direct {v4, p0}, Lapc$2;-><init>(Lapc;)V

    .line 117
    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v5

    const-string/jumbo v6, "http://ydlog.voicecloud.cn/log"

    .line 99
    invoke-static {v4, v2, v5, v6}, Lxv;->a(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Lcom/iflytek/yd/business/AppConfig;Ljava/lang/String;)Lyo;

    move-result-object v4

    iput-object v4, p0, Lapc;->f:Lyo;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lapc$1;)V
    .locals 0
    .param p1, "x0"    # Lapc$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lapc;-><init>()V

    return-void
.end method

.method static synthetic a(Lapc;I)I
    .locals 0
    .param p0, "x0"    # Lapc;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lapc;->e:I

    return p1
.end method

.method static synthetic a(Lapc;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lapc;

    .prologue
    .line 42
    iget-object v0, p0, Lapc;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lapc;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lapc$b;->a:Lapc;

    return-object v0
.end method

.method static synthetic a(Lapc;Lapd;)V
    .locals 0
    .param p0, "x0"    # Lapc;
    .param p1, "x1"    # Lapd;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lapc;->a(Lapd;)V

    return-void
.end method

.method private a(Lapd;)V
    .locals 3
    .param p1, "monitorInfo"    # Lapd;

    .prologue
    .line 201
    iget-object v0, p0, Lapc;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 202
    const-string/jumbo v0, "RequestMonitorHelper"

    const-string/jumbo v1, "memory cache is null, so puzzled."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string/jumbo v0, "RequestMonitorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new monitor info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lapd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lapc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string/jumbo v0, "RequestMonitorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new monitor info has added to memory cache. cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lapc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lapc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 209
    const-string/jumbo v0, "RequestMonitorHelper"

    const-string/jumbo v1, "memory cache is full."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lapc;->d()V

    .line 211
    invoke-direct {p0}, Lapc;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lapc;Z)Z
    .locals 0
    .param p0, "x0"    # Lapc;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lapc;->d:Z

    return p1
.end method

.method static synthetic b(Lapc;)Lapc$a;
    .locals 1
    .param p0, "x0"    # Lapc;

    .prologue
    .line 42
    iget-object v0, p0, Lapc;->i:Lapc$a;

    return-object v0
.end method

.method static synthetic c(Lapc;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lapc;

    .prologue
    .line 42
    iget-object v0, p0, Lapc;->g:Landroid/os/Looper;

    return-object v0
.end method

.method private c()V
    .locals 18

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lapc;->d:Z

    if-eqz v11, :cond_1

    .line 220
    const-string/jumbo v11, "RequestMonitorHelper"

    const-string/jumbo v14, "monitor info is uploading, ignore."

    invoke-static {v11, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lapc;->c:Lwf;

    invoke-virtual {v11}, Lwf;->a()I

    move-result v8

    .line 225
    .local v8, "lines":I
    const/16 v11, 0x14

    if-ge v8, v11, :cond_2

    .line 226
    const-string/jumbo v11, "RequestMonitorHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "current lines is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", not reach min upload line "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", ignore."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v14, "com.iflytek.cmcc.IFLY_NEXT_UPLOAD_REQUEST_MONITOR_DATA_TIME"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v12

    .line 232
    .local v12, "nextUploadTimeInMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 233
    .local v2, "currentTimeInMillis":J
    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    cmp-long v11, v2, v12

    if-gez v11, :cond_3

    .line 234
    const-string/jumbo v11, "RequestMonitorHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3, v15}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " not reach upload time "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v12, v13, v15}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", ignore."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    :cond_3
    invoke-static {}, Lil;->a()Lil;

    move-result-object v11

    const-string/jumbo v14, "com.iflytek.cmcc.IFLY_LAST_UPLOAD_REQUEST_MONITOR_DATA_TIME"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v0, v1}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v6

    .line 239
    .local v6, "lastUploadTimeInMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gez v11, :cond_4

    .line 240
    const-string/jumbo v11, "RequestMonitorHelper"

    const-string/jumbo v14, "not reach upload period, ignore."

    invoke-static {v11, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :cond_4
    const-string/jumbo v11, "RequestMonitorHelper"

    const-string/jumbo v14, "everything is ready, upload now."

    invoke-static {v11, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-object v11, v0, Lapc;->c:Lwf;

    const/16 v14, 0x1f4

    invoke-virtual {v11, v14}, Lwf;->a(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 247
    .local v9, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v11, v0, Lapc;->f:Lyo;

    instance-of v11, v11, Lxx;

    if-eqz v11, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v10, v0, Lapc;->f:Lyo;

    check-cast v10, Lxx;

    .line 250
    .local v10, "manager":Lxx;
    invoke-virtual {v10, v9}, Lxx;->a(Ljava/util/ArrayList;)J

    move-result-wide v4

    .line 251
    .local v4, "id":J
    const-wide/16 v14, -0x1

    cmp-long v11, v4, v14

    if-eqz v11, :cond_0

    .line 252
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lapc;->d:Z

    .line 253
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lapc;->e:I

    .line 254
    const-string/jumbo v11, "RequestMonitorHelper"

    const-string/jumbo v14, "uploading..."

    invoke-static {v11, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 264
    iget-object v2, p0, Lapc;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lapc;->c:Lwf;

    if-nez v2, :cond_1

    .line 265
    :cond_0
    const-string/jumbo v2, "RequestMonitorHelper"

    const-string/jumbo v3, "memory and file cahce is null, so puzzled."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v2, p0, Lapc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 270
    const-string/jumbo v2, "RequestMonitorHelper"

    const-string/jumbo v3, "memory cache is empty, ignore."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_2
    const-string/jumbo v2, "RequestMonitorHelper"

    const-string/jumbo v3, "saving memory cache to file."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lapc;->c:Lwf;

    invoke-virtual {v2}, Lwf;->a()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_3

    .line 279
    iget-object v2, p0, Lapc;->c:Lwf;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lwf;->b(I)I

    .line 280
    const-string/jumbo v2, "RequestMonitorHelper"

    const-string/jumbo v3, "file cache is full, delete 1/2 old data."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    const/4 v0, 0x0

    .line 283
    .local v0, "count":I
    iget-object v2, p0, Lapc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapd;

    .line 284
    .local v1, "monitorInfo":Lapd;
    if-eqz v1, :cond_4

    .line 285
    iget-object v3, p0, Lapc;->c:Lwf;

    invoke-virtual {v1}, Lapd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwf;->a(Ljava/lang/String;)I

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    .end local v1    # "monitorInfo":Lapd;
    :cond_5
    const-string/jumbo v2, "RequestMonitorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save memory cache to file done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " items appended, file cache size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lapc;->c:Lwf;

    invoke-virtual {v4}, Lwf;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lapc;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 291
    const-string/jumbo v2, "RequestMonitorHelper"

    const-string/jumbo v3, "memory cache cleared."

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic d(Lapc;)V
    .locals 0
    .param p0, "x0"    # Lapc;

    .prologue
    .line 42
    invoke-direct {p0}, Lapc;->d()V

    return-void
.end method

.method static synthetic e(Lapc;)I
    .locals 1
    .param p0, "x0"    # Lapc;

    .prologue
    .line 42
    iget v0, p0, Lapc;->e:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lapc;)Lwf;
    .locals 1
    .param p0, "x0"    # Lapc;

    .prologue
    .line 42
    iget-object v0, p0, Lapc;->c:Lwf;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 353
    .local v2, "time":J
    const-string/jumbo v1, "RequestMonitorHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRequestEnd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p0, Lapc;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapd;

    .line 355
    .local v0, "monitorInfo":Lapd;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, v2, v3}, Lapd;->c(J)V

    .line 358
    :cond_0
    return-void
.end method

.method public a(JI)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "errorCode"    # I

    .prologue
    .line 321
    iget-object v1, p0, Lapc;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapd;

    .line 322
    .local v0, "monitorInfo":Lapd;
    if-eqz v0, :cond_0

    .line 323
    const-string/jumbo v1, "RequestMonitorHelper"

    const-string/jumbo v2, "error monitor info got."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lapd;->f(J)V

    .line 325
    invoke-virtual {v0, p3}, Lapd;->a(I)V

    .line 326
    iget-object v1, p0, Lapc;->i:Lapc$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lapc$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 328
    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "respSize"    # J

    .prologue
    .line 336
    iget-object v1, p0, Lapc;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapd;

    .line 337
    .local v0, "monitorInfo":Lapd;
    if-eqz v0, :cond_0

    .line 338
    const-string/jumbo v1, "RequestMonitorHelper"

    const-string/jumbo v2, "success monitor info got."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lapd;->f(J)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapd;->a(I)V

    .line 341
    invoke-virtual {v0, p3, p4}, Lapd;->b(J)V

    .line 342
    iget-object v1, p0, Lapc;->i:Lapc$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lapc$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 344
    :cond_0
    return-void
.end method

.method public a(JLjava/lang/String;J)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "reqSize"    # J

    .prologue
    .line 306
    new-instance v0, Lapd;

    invoke-direct {v0}, Lapd;-><init>()V

    .line 307
    .local v0, "info":Lapd;
    invoke-virtual {v0, p3}, Lapd;->a(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lapc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapd;->b(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lapd;->e(J)V

    .line 310
    invoke-virtual {v0, p4, p5}, Lapd;->a(J)V

    .line 311
    iget-object v1, p0, Lapc;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lapc;->i:Lapc$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lapc$a;->sendEmptyMessage(I)Z

    .line 375
    return-void
.end method

.method public b(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 366
    .local v2, "time":J
    const-string/jumbo v1, "RequestMonitorHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResponseStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v1, p0, Lapc;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapd;

    .line 368
    .local v0, "monitorInfo":Lapd;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, v2, v3}, Lapd;->d(J)V

    .line 371
    :cond_0
    return-void
.end method
