.class public Lagi;
.super Landroid/widget/BaseAdapter;
.source "DownloadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagi$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;

.field private g:Z

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lagi;->g:Z

    .line 53
    const-string/jumbo v0, "\u7ee7\u7eed"

    iput-object v0, p0, Lagi;->h:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "\u6682\u505c"

    iput-object v0, p0, Lagi;->i:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v0, p0, Lagi;->j:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "\u5df2\u6682\u505c"

    iput-object v0, p0, Lagi;->k:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "\u4e0b\u8f7d\u5931\u8d25"

    iput-object v0, p0, Lagi;->l:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "\u6b63\u5728\u51c6\u5907"

    iput-object v0, p0, Lagi;->m:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "\u672a\u77e5\u5927\u5c0f"

    iput-object v0, p0, Lagi;->n:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lagi;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lagi;->b:Landroid/widget/ListView;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lagi;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lagi;->f:Landroid/view/LayoutInflater;

    .line 66
    return-void
.end method

.method static synthetic a(Lagi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lagi;

    .prologue
    .line 38
    iget-object v0, p0, Lagi;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 13
    .param p1, "size"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x44800000    # 1024.0f

    .line 360
    const-string/jumbo v5, "DownloadListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDataSize, size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v5, "####.0"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "formater":Ljava/text/DecimalFormat;
    cmp-long v5, p1, v10

    if-gez v5, :cond_0

    .line 363
    const-string/jumbo v5, "DownloadListAdapter"

    const-string/jumbo v6, "size < 0"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-object v4

    .line 365
    :cond_0
    const-wide/16 v6, 0x400

    cmp-long v5, p1, v6

    if-gez v5, :cond_1

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 367
    :cond_1
    const-wide/32 v6, 0x100000

    cmp-long v5, p1, v6

    if-gez v5, :cond_2

    .line 368
    long-to-float v4, p1

    div-float v2, v4, v8

    .line 369
    .local v2, "kbsize":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 370
    .end local v2    # "kbsize":F
    :cond_2
    const-wide/32 v6, 0x40000000

    cmp-long v5, p1, v6

    if-gez v5, :cond_3

    .line 371
    long-to-float v4, p1

    div-float/2addr v4, v8

    div-float v3, v4, v8

    .line 372
    .local v3, "mbsize":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v6, v3

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 373
    .end local v3    # "mbsize":F
    :cond_3
    cmp-long v5, p1, v10

    if-gez v5, :cond_4

    .line 374
    long-to-float v4, p1

    div-float/2addr v4, v8

    div-float/2addr v4, v8

    div-float v1, v4, v8

    .line 375
    .local v1, "gbsize":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 377
    .end local v1    # "gbsize":F
    :cond_4
    const-string/jumbo v5, "DownloadListAdapter"

    const-string/jumbo v6, "size too big"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string/jumbo v1, ""

    .line 343
    .local v1, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 344
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 346
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    .end local v0    # "index":I
    :cond_0
    const-string/jumbo v2, "DownloadListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTitleByPath, name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-object v1
.end method

.method private a(Lagi$a;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 2
    .param p1, "holder"    # Lagi$a;
    .param p2, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 275
    iget-object v0, p1, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    new-instance v1, Lagi$1;

    invoke-direct {v1, p0, p2}, Lagi$1;-><init>(Lagi;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    return-void
.end method

.method static synthetic a(Lagi;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lagi;
    .param p1, "x1"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lagi;->d(Lcom/iflytek/common/download/entities/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lagi;Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lagi;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lagi;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 1
    .param p1, "operationCode"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 387
    iget-object v0, p0, Lagi;->a:Landroid/content/Context;

    invoke-static {v0}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lxa;->a(Ljava/lang/String;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    .line 389
    :cond_0
    return-void
.end method

.method private d(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 314
    const-string/jumbo v1, "DownloadListAdapter"

    const-string/jumbo v2, "continueDownload"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lagi;->a:Landroid/content/Context;

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    invoke-virtual {v1, v0}, Lno;->c(Ljava/lang/String;)V

    .line 319
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private e(Lcom/iflytek/common/download/entities/DownloadInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v1

    .line 325
    .local v1, "type":I
    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 327
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 330
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lagi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "result":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    const-string/jumbo v0, "\u672a\u77e5\u4efb\u52a1"

    goto :goto_0

    .line 332
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/iflytek/common/download/entities/DownloadInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 409
    const/4 v1, -0x1

    .line 410
    .local v1, "result":I
    if-eqz p1, :cond_1

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v2}, Lcom/iflytek/common/download/entities/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    move v1, v0

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public a(I)Lcom/iflytek/common/download/entities/DownloadInfo;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    invoke-virtual {p0, p1}, Lagi;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 262
    iget-object v2, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_1

    .line 263
    add-int/lit8 v1, p1, -0x1

    .line 264
    .local v1, "pos":I
    iget-object v2, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 270
    .end local v1    # "pos":I
    .restart local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    iget-object v2, p0, Lagi;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_0

    .line 266
    iget-object v2, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v1, v2, -0x2

    .line 267
    .restart local v1    # "pos":I
    iget-object v2, p0, Lagi;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    .restart local v0    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lagi;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "mFinishList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iput-object p1, p0, Lagi;->c:Ljava/util/List;

    .line 397
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isEditMode"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lagi;->g:Z

    .line 462
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lagi;->d:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 6
    .param p1, "itemIndex"    # I

    .prologue
    .line 470
    iget-object v3, p0, Lagi;->b:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 471
    .local v2, "visiblePosition":I
    const-string/jumbo v3, "DownloadListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSingleRow, visiblePosition is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string/jumbo v3, "DownloadListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSingleRow, itemIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sub-int v3, p1, v2

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lagi;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 477
    iget-object v3, p0, Lagi;->b:Landroid/widget/ListView;

    sub-int v4, p1, v2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 478
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 489
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 483
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lagi;->b:Landroid/widget/ListView;

    invoke-virtual {p0, p1, v1, v3}, Lagi;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DownloadListAdapter"

    const-string/jumbo v4, "getView Exception"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 443
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/download/entities/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "mDownloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    iput-object p1, p0, Lagi;->d:Ljava/util/List;

    .line 405
    return-void
.end method

.method public c(Lcom/iflytek/common/download/entities/DownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/common/download/entities/DownloadInfo;

    .prologue
    .line 448
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lagi;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lagi;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 433
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lagi;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 434
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 439
    return-void
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
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
    .line 453
    iget-object v0, p0, Lagi;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lagi;->g:Z

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lagi;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x2

    .line 71
    .local v0, "count":I
    const-string/jumbo v1, "DownloadListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCount, count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    const-string/jumbo v2, "DownloadListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getItem, position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p1}, Lagi;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v1

    .line 80
    :cond_1
    iget-object v2, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p1, v2, :cond_2

    .line 81
    add-int/lit8 v0, p1, -0x1

    .line 82
    .local v0, "pos":I
    iget-object v1, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 83
    .end local v0    # "pos":I
    :cond_2
    iget-object v2, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lagi;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v0, v1, -0x2

    .line 86
    .restart local v0    # "pos":I
    iget-object v1, p0, Lagi;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 99
    const-string/jumbo v0, "DownloadListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getItemViewType, position is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz p1, :cond_0

    iget-object v0, p0, Lagi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    const-string/jumbo v11, "DownloadListAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getView, position is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual/range {p0 .. p1}, Lagi;->getItemViewType(I)I

    move-result v10

    .line 118
    .local v10, "type":I
    packed-switch v10, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return-object p2

    .line 120
    :pswitch_0
    if-nez p2, :cond_1

    .line 121
    move-object/from16 v0, p0

    iget-object v11, v0, Lagi;->f:Landroid/view/LayoutInflater;

    const v12, 0x7f03008c

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 123
    :cond_1
    const v11, 0x7f0b03c5

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/skin/customView/XTextView;

    .line 124
    .local v6, "headText":Lcom/iflytek/base/skin/customView/XTextView;
    if-nez p1, :cond_2

    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lagi;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\uff09"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lagi;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 127
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u4e0b\u8f7d\u5b8c\u6210\uff08"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lagi;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\uff09"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    .end local v6    # "headText":Lcom/iflytek/base/skin/customView/XTextView;
    :pswitch_1
    if-nez p2, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v11, v0, Lagi;->f:Landroid/view/LayoutInflater;

    const v12, 0x7f03008d

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 134
    new-instance v7, Lagi$a;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lagi$a;-><init>(Lagi$1;)V

    .line 135
    .local v7, "holder":Lagi$a;
    const v11, 0x7f0b03c9

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XCheckBox;

    iput-object v11, v7, Lagi$a;->a:Lcom/iflytek/base/skin/customView/XCheckBox;

    .line 136
    const v11, 0x7f0b03c7

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 137
    const v11, 0x7f0b03c8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v11, v7, Lagi$a;->h:Lcom/iflytek/base/skin/customView/XTextView;

    .line 138
    const v11, 0x7f0b03bd

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v11, v7, Lagi$a;->f:Lcom/iflytek/base/skin/customView/XImageView;

    .line 139
    const v11, 0x7f0b03c0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    .line 140
    const v11, 0x7f0b03bf

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XImageProgressBar;

    iput-object v11, v7, Lagi$a;->d:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    .line 141
    const v11, 0x7f0b03c6

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v11, v7, Lagi$a;->e:Lcom/iflytek/base/skin/customView/XTextView;

    .line 142
    const v11, 0x7f0b03be

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v11, v7, Lagi$a;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lagi;->a(I)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v4

    .line 150
    .local v4, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getType()I

    move-result v5

    .line 152
    .local v5, "fileType":I
    const-string/jumbo v11, "DownloadListAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getView, fileType is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v11, 0x1

    if-ne v5, v11, :cond_6

    .line 154
    move-object/from16 v0, p0

    iget-object v11, v0, Lagi;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lazb;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    .local v2, "apkIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 156
    iget-object v11, v7, Lagi$a;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v11, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .end local v2    # "apkIcon":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v11, v7, Lagi$a;->a:Lcom/iflytek/base/skin/customView/XCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XCheckBox;->setClickable(Z)V

    .line 173
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lagi;->g:Z

    if-eqz v11, :cond_b

    .line 174
    iget-object v11, v7, Lagi$a;->a:Lcom/iflytek/base/skin/customView/XCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XCheckBox;->setVisibility(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lagi;->e:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lagi;->a(Lcom/iflytek/common/download/entities/DownloadInfo;)I

    move-result v11

    if-ltz v11, :cond_a

    .line 176
    iget-object v11, v7, Lagi$a;->a:Lcom/iflytek/base/skin/customView/XCheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    .line 184
    :goto_3
    iget-object v11, v7, Lagi$a;->b:Lcom/iflytek/base/skin/customView/XTextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lagi;->e(Lcom/iflytek/common/download/entities/DownloadInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v8

    .line 188
    .local v8, "status":I
    const-string/jumbo v11, "DownloadListAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getView, status is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v11, 0x3

    if-ne v8, v11, :cond_d

    .line 190
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 191
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 192
    iget-object v11, v7, Lagi$a;->d:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setVisibility(I)V

    .line 193
    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lagi;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "totalSize":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 195
    iget-object v11, v7, Lagi$a;->e:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v11, v9}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lagi;->a(Lagi$a;Lcom/iflytek/common/download/entities/DownloadInfo;)V

    goto/16 :goto_0

    .line 146
    .end local v4    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .end local v5    # "fileType":I
    .end local v7    # "holder":Lagi$a;
    .end local v8    # "status":I
    .end local v9    # "totalSize":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lagi$a;

    .restart local v7    # "holder":Lagi$a;
    goto/16 :goto_1

    .line 158
    .restart local v2    # "apkIcon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    .restart local v5    # "fileType":I
    :cond_5
    iget-object v11, v7, Lagi$a;->f:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v12, "image.android_market_icon"

    sget-object v13, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_2

    .line 160
    .end local v2    # "apkIcon":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v11, 0x5

    if-eq v5, v11, :cond_7

    const/4 v11, 0x6

    if-ne v5, v11, :cond_8

    .line 161
    :cond_7
    iget-object v11, v7, Lagi$a;->f:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v12, "image.ic_downloadmanager_music"

    sget-object v13, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_2

    .line 163
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lagi;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lazb;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .restart local v2    # "apkIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_9

    .line 165
    iget-object v11, v7, Lagi$a;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v11, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 167
    :cond_9
    iget-object v11, v7, Lagi$a;->f:Lcom/iflytek/base/skin/customView/XImageView;

    const-string/jumbo v12, "image.android_market_icon"

    sget-object v13, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto/16 :goto_2

    .line 178
    .end local v2    # "apkIcon":Landroid/graphics/drawable/Drawable;
    :cond_a
    iget-object v11, v7, Lagi$a;->a:Lcom/iflytek/base/skin/customView/XCheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XCheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 181
    :cond_b
    iget-object v11, v7, Lagi$a;->a:Lcom/iflytek/base/skin/customView/XCheckBox;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XCheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 197
    .restart local v8    # "status":I
    .restart local v9    # "totalSize":Ljava/lang/String;
    :cond_c
    iget-object v11, v7, Lagi$a;->e:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u672a\u77e5\u5927\u5c0f"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 201
    .end local v9    # "totalSize":Ljava/lang/String;
    :cond_d
    const/4 v11, 0x2

    if-eq v8, v11, :cond_e

    if-nez v8, :cond_11

    .line 202
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lagi;->g:Z

    if-eqz v11, :cond_10

    .line 203
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 208
    :goto_5
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 240
    :cond_f
    :goto_6
    iget-object v11, v7, Lagi$a;->d:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setVisibility(I)V

    .line 241
    iget-object v11, v7, Lagi$a;->d:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    const-string/jumbo v12, "color.download_progress_new"

    const-string/jumbo v13, "color.download_progress_bg_new"

    invoke-virtual {v11, v12, v13}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setProgressBarAndBg(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lagi;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "currentSize":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lagi;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 244
    .restart local v9    # "totalSize":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 245
    iget-object v11, v7, Lagi$a;->d:Lcom/iflytek/base/skin/customView/XImageProgressBar;

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getCurrentBytes()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/iflytek/common/download/entities/DownloadInfo;->getTotleBytes()J

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setProgress(JJ)V

    .line 246
    iget-object v11, v7, Lagi$a;->e:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 205
    .end local v3    # "currentSize":Ljava/lang/String;
    .end local v9    # "totalSize":Ljava/lang/String;
    :cond_10
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 206
    iget-object v11, v7, Lagi$a;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u6682\u505c"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 210
    :cond_11
    const/4 v11, 0x1

    if-ne v8, v11, :cond_13

    .line 211
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lagi;->g:Z

    if-eqz v11, :cond_12

    .line 212
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 217
    :goto_7
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u6b63\u5728\u51c6\u5907"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 214
    :cond_12
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 215
    iget-object v11, v7, Lagi$a;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u6682\u505c"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 219
    :cond_13
    const/4 v11, 0x4

    if-ne v8, v11, :cond_15

    .line 220
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lagi;->g:Z

    if-eqz v11, :cond_14

    .line 221
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 226
    :goto_8
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u5df2\u6682\u505c"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 223
    :cond_14
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 224
    iget-object v11, v7, Lagi$a;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u7ee7\u7eed"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 228
    :cond_15
    const/4 v11, 0x5

    if-ne v8, v11, :cond_f

    .line 229
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lagi;->g:Z

    if-eqz v11, :cond_16

    .line 230
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 235
    :goto_9
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v11, v7, Lagi$a;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 232
    :cond_16
    iget-object v11, v7, Lagi$a;->g:Lcom/iflytek/base/skin/customView/XLinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 233
    iget-object v11, v7, Lagi$a;->h:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v12, "\u7ee7\u7eed"

    invoke-virtual {v11, v12}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "DownloadListAdapter"

    const-string/jumbo v1, "getViewTypeCount"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x2

    return v0
.end method
