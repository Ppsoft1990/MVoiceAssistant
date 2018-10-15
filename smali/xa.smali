.class public Lxa;
.super Lwo;
.source "DownloadFileOpLogHelper.java"


# static fields
.field private static b:Lxa;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private a(J)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 7
    .param p1, "downloadInfoId"    # J

    .prologue
    const/4 v2, 0x0

    .line 244
    const-wide/16 v4, -0x1

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    move-object v1, v2

    .line 256
    :goto_0
    return-object v1

    .line 247
    :cond_0
    iget-object v3, p0, Lxa;->a:Landroid/content/Context;

    invoke-static {v3}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lno;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 251
    .local v1, "tempInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    goto :goto_0

    .end local v1    # "tempInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_2
    move-object v1, v2

    .line 256
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p1, :cond_1

    .line 233
    const-string/jumbo v1, ""

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 235
    :cond_1
    const-string/jumbo v1, ""

    .line 236
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 238
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 4
    .param p1, "resType"    # I
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lxa;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 63
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_error_code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lxa;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lxa;->b:Lxa;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lxa;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lxa;->b:Lxa;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lxa;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lxa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxa;->b:Lxa;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lxa;->b:Lxa;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "operationCode"    # Ljava/lang/String;
    .param p2, "resType"    # I
    .param p3, "entryType"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v0, "DownloadAppOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadFileOperation() operationCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " downUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0, p5}, Lxa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 201
    :cond_1
    if-nez p5, :cond_2

    const-string/jumbo p5, ""

    .line 203
    :cond_2
    if-nez p3, :cond_3

    const-string/jumbo p3, ""

    .line 205
    :cond_3
    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 206
    invoke-direct {p0, p2, p3, p4, p5}, Lxa;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 205
    invoke-virtual/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "operationCode"    # Ljava/lang/String;
    .param p2, "resType"    # I
    .param p3, "entryType"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "downUrl"    # Ljava/lang/String;
    .param p6, "errorCode"    # I

    .prologue
    .line 211
    const-string/jumbo v0, "DownloadAppOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloadFileErrorOperation() operationCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " downUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-direct {p0, p5}, Lxa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 222
    :cond_1
    if-nez p5, :cond_2

    const-string/jumbo p5, ""

    .line 224
    :cond_2
    if-nez p3, :cond_3

    const-string/jumbo p3, ""

    .line 226
    :cond_3
    const-wide/16 v6, 0x0

    const-string/jumbo v8, "success"

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 227
    invoke-direct/range {v0 .. v5}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, v6

    move-object v4, v8

    .line 226
    invoke-virtual/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "resType"    # I
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_key_download_file_name"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "d_resource_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "d_entry_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "d_down_url"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 136
    const-string/jumbo v0, "DownloadAppOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordDownloadFailLog() errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v0, 0x385

    if-eq v0, p1, :cond_0

    const/16 v0, 0x38b

    if-ne v0, p1, :cond_1

    .line 140
    :cond_0
    const-string/jumbo v0, "DownloadAppOpLogHelper"

    const-string/jumbo v1, "recordDownloadFailLog do not need record log"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_1
    if-nez p2, :cond_2

    .line 145
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "errorIntent":Landroid/content/Intent;
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 147
    .restart local p2    # "errorIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v0, "error_code"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, p2}, Lxa;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fileType"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "downUrl"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string/jumbo v1, "FD22000"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "FD22001"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 20
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string/jumbo v4, "DownloadAppOpLogHelper"

    const-string/jumbo v5, "recordDownloadSuccessAndFailLog()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez p1, :cond_1

    .line 75
    const-string/jumbo v4, "DownloadAppOpLogHelper"

    const-string/jumbo v5, "recordDownloadSuccessAndFailLog() intent is null"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 81
    .local v6, "type":I
    const-string/jumbo v4, "title"

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v4, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v4, "entry_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "entryType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 88
    .local v14, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 89
    move-object/from16 v0, p0

    iget-object v4, v0, Lxa;->a:Landroid/content/Context;

    invoke-static {v4}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v4

    invoke-virtual {v4, v9}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v14

    .line 98
    :goto_1
    if-eqz v14, :cond_3

    .line 99
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v6

    .line 100
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "infoTitle":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    move-object v8, v15

    .line 105
    :cond_2
    invoke-virtual {v14}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 106
    .local v16, "infoUrl":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    move-object/from16 v9, v16

    .line 112
    .end local v15    # "infoTitle":Ljava/lang/String;
    .end local v16    # "infoUrl":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    const-string/jumbo v5, "FD22003"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v5, "FD22100"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v11    # "action":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 95
    .local v12, "downloadInfoId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lxa;->a(J)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v14

    goto :goto_1

    .line 119
    .end local v12    # "downloadInfoId":J
    .restart local v11    # "action":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "com.iflytek.cmcccom.iflytek.yd.download.error"

    .line 120
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string/jumbo v4, "error_code"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 122
    .local v10, "errorCode":I
    const-string/jumbo v5, "FD22004"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    const-string/jumbo v5, "FD22100"

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 7
    .param p1, "operationCode"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 157
    const-string/jumbo v0, "DownloadAppOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recordDownloadOperationLog() operationCode = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " info = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 160
    :cond_0
    const-string/jumbo v0, "DownloadAppOpLogHelper"

    const-string/jumbo v1, "recordDownloadOperationLog() : info is null or operationCode is empty"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v2

    .line 166
    .local v2, "type":I
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "downUrl":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getEntryType()Ljava/lang/String;

    move-result-object v3

    .local v3, "entryType":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 169
    invoke-direct/range {v0 .. v5}, Lxa;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
