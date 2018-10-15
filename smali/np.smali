.class public Lnp;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static a:Lnp;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/util/SparseIntArray;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lhk;

.field private h:Lcom/iflytek/yd/business/AppConfig;

.field private i:Ljava/lang/String;

.field private j:Lnq;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Lnp;->e:Z

    .line 47
    iput-boolean v0, p0, Lnp;->f:Z

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnp;->b:Landroid/content/Context;

    .line 60
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lnp;->g:Lhk;

    .line 61
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lnp;->h:Lcom/iflytek/yd/business/AppConfig;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lnp;->i:Ljava/lang/String;

    .line 63
    new-instance v0, Lnq;

    invoke-direct {v0, p1}, Lnq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnp;->j:Lnq;

    .line 64
    return-void
.end method

.method public static a(Landroid/content/Context;)Lnp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lnp;->a:Lnp;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lnp;

    invoke-direct {v0, p0}, Lnp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnp;->a:Lnp;

    .line 74
    :cond_0
    sget-object v0, Lnp;->a:Lnp;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/16 v1, 0x14

    .line 97
    iget-object v2, p0, Lnp;->c:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    move v0, v1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v2, p0, Lnp;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 102
    .local v0, "number":I
    if-gtz v0, :cond_0

    move v0, v1

    .line 106
    goto :goto_0
.end method

.method public a()Lhk;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnp;->g:Lhk;

    return-object v0
.end method

.method public a(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    return-void
.end method

.method public a(JLjava/lang/String;Z)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "isView"    # Z

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string/jumbo v1, "view"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 373
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 285
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "visibility"    # I
    .param p5, "foreground"    # Z
    .param p6, "type"    # I
    .param p7, "entryType"    # Ljava/lang/String;
    .param p8, "range"    # Z
    .param p9, "cover"    # Z
    .param p10, "deleteDB"    # Z

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string/jumbo v1, "file_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string/jumbo v1, "foreground"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string/jumbo v1, "entry_type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v1, "range"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const-string/jumbo v1, "cover"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string/jumbo v1, "delete_db"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lnp;->d:I

    if-lez v0, :cond_0

    .line 83
    iget v0, p0, Lnp;->d:I

    .line 85
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public b(I)I
    .locals 6
    .param p1, "type"    # I

    .prologue
    const v0, 0xc3c0a

    .line 459
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->checkSDCardStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    const v0, 0xc3c09

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    iget-object v1, p0, Lnp;->g:Lhk;

    invoke-virtual {v1}, Lhk;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    const/16 v0, 0x384

    goto :goto_0

    .line 467
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 469
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/iflytek/yd/util/SDCardHelper;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x600000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 481
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 473
    :cond_4
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 475
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v1}, Lcom/iflytek/yd/util/SDCardHelper;->getAvailableSpace(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xc00000

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v1, p0, Lnp;->j:Lnq;

    invoke-virtual {v1, p1}, Lnq;->a(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 404
    .local v0, "download":Lcom/iflytek/common/download/entities/DownloadInfo;
    iget-object v1, p0, Lnp;->j:Lnq;

    invoke-virtual {v1}, Lnq;->close()V

    .line 405
    return-object v0
.end method

.method public b(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 234
    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnp;->b(I)I

    move-result v0

    .line 426
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Lnp;->d(Ljava/lang/String;)I

    move-result v0

    .line 430
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 325
    return-void
.end method

.method public c(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 254
    return-void
.end method

.method public d(Ljava/lang/String;)I
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lnp;->b(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 490
    .local v0, "download":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 498
    :pswitch_0
    const/16 v1, 0x388

    .line 501
    :goto_0
    return v1

    .line 493
    :pswitch_1
    const/16 v1, 0x385

    goto :goto_0

    .line 496
    :pswitch_2
    const/16 v1, 0x386

    goto :goto_0

    .line 501
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public d()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v3, p0, Lnp;->j:Lnq;

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Lnp;->j:Lnq;

    invoke-virtual {v3}, Lnq;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 383
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iget-object v3, p0, Lnp;->j:Lnq;

    invoke-virtual {v3}, Lnq;->close()V

    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v2, "queryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 386
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 387
    .local v0, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {v0}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    .line 388
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v0    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    .end local v2    # "queryInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public d(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 328
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.yd.download.action"

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 332
    return-void
.end method

.method public e(J)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 414
    iget-object v1, p0, Lnp;->j:Lnq;

    invoke-virtual {v1, p1, p2}, Lnq;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v0

    .line 415
    .local v0, "download":Lcom/iflytek/common/download/entities/DownloadInfo;
    iget-object v1, p0, Lnp;->j:Lnq;

    invoke-virtual {v1}, Lnq;->close()V

    .line 416
    return-object v0
.end method

.method public e()V
    .locals 5

    .prologue
    .line 438
    invoke-virtual {p0}, Lnp;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 439
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lnp;->b:Landroid/content/Context;

    const-class v4, Lcom/iflytek/common/download/DownloadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.iflytek.yd.download.action"

    const/16 v4, 0x3e9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    iget-object v3, p0, Lnp;->b:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DownloadManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()Lnq;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lnp;->j:Lnq;

    return-object v0
.end method
