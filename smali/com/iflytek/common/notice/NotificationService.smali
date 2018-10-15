.class public Lcom/iflytek/common/notice/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/iflytek/common/notice/NotificationParam;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/NotificationManager;

.field private c:Lcom/iflytek/yd/base/ProcessListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/iflytek/common/notice/NotificationService$1;

    invoke-direct {v0, p0}, Lcom/iflytek/common/notice/NotificationService$1;-><init>(Lcom/iflytek/common/notice/NotificationService;)V

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->c:Lcom/iflytek/yd/base/ProcessListener;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/iflytek/common/notice/NotificationService;->b(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramId"    # I
    .param p2, "btnResId"    # I

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_NOTIFY_BAR_BTN_CLICKED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string/jumbo v2, "btn_clicked"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    add-int v2, p1, p2

    const/high16 v3, 0x10000000

    .line 536
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 538
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 300
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current CachNotice\'s size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/iflytek/common/notice/NotificationService;->stopSelf()V

    .line 303
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "------->> stop self..."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 257
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/notice/NotificationParam;

    .line 258
    .local v1, "param":Lcom/iflytek/common/notice/NotificationParam;
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClickEvent(), param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz v1, :cond_1

    .line 260
    invoke-static {v1}, Loe;->a(Lcom/iflytek/common/notice/NotificationParam;)V

    .line 262
    iget v2, v1, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    iget v2, v1, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/iflytek/common/notice/NotificationService;->b(I)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    sget v2, Lof;->a:I

    if-ne p1, v2, :cond_2

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "handleClickEvent() ex happened"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(II)V
    .locals 5
    .param p1, "paramId"    # I
    .param p2, "btnId"    # I

    .prologue
    .line 321
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/notice/NotificationParam;

    .line 322
    .local v1, "param":Lcom/iflytek/common/notice/NotificationParam;
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleButtonClickEvent(), param="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v1, :cond_1

    .line 324
    invoke-static {v1, p2}, Loe;->a(Lcom/iflytek/common/notice/NotificationParam;I)V

    .line 326
    iget v2, v1, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_1

    iget v2, v1, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/iflytek/common/notice/NotificationService;->b(Landroid/content/Context;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/iflytek/common/notice/NotificationService;->b(I)V

    .line 339
    :cond_1
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "handleButtonClickEvent() ex happened"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(ILcom/iflytek/common/notice/NotificationParam;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 290
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addParam(), id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method private a(Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 6
    .param p1, "notice"    # Landroid/app/Notification;
    .param p2, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 224
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNotice | notice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", param = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", threadId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/common/notice/NotificationService;->a()V

    .line 227
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "showNotice | notice or param is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    if-nez v2, :cond_2

    .line 232
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "showNotice | mNotificationManager is null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    iget v3, p2, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    iget v3, p2, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v2, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 245
    iget-boolean v2, p2, Lcom/iflytek/common/notice/NotificationParam;->isRing:Z

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p2, Lcom/iflytek/common/notice/NotificationParam;->ringPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    :cond_3
    iget v2, p2, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-direct {p0, v2, p2}, Lcom/iflytek/common/notice/NotificationService;->a(ILcom/iflytek/common/notice/NotificationParam;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    :goto_2
    invoke-direct {p0}, Lcom/iflytek/common/notice/NotificationService;->a()V

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "updateNotice() ex happened"

    invoke-static {v2, v3, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 250
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NotificationService"

    const-string/jumbo v3, "updateNotice()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/widget/RemoteViews;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "mRemoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 500
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    .line 502
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    :cond_0
    return-void

    .line 506
    :cond_1
    invoke-static {}, Lhl;->k()I

    move-result v6

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 509
    iget-object v6, p1, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 510
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 512
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 513
    .local v2, "key":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 514
    .local v3, "showText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 515
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 516
    :cond_2
    invoke-virtual {p2, v2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 518
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .local v5, "str":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v6, -0x1

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 520
    .local v4, "span":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v4, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 522
    invoke-virtual {p2, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 523
    iget v6, p1, Lcom/iflytek/common/notice/NotificationParam;->id:I

    .line 524
    invoke-static {p0, v6, v2}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v6

    .line 523
    invoke-virtual {p2, v2, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 526
    .end local v4    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v5    # "str":Landroid/text/SpannableString;
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {p2, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringPath"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playNoticeRing(), ringPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 144
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    invoke-static {p0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    invoke-virtual {v2, v1}, Lod;->playRingToneFromAssert(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 581
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "handleClickMicNotification start"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {p0}, Lcom/iflytek/common/notice/NotificationService;->b(Landroid/content/Context;)V

    .line 584
    invoke-virtual {p0}, Lcom/iflytek/common/notice/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbak;->a(Landroid/content/Intent;)V

    .line 586
    return-void
.end method

.method private a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 4
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 151
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelNotice(), param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    iget v2, p1, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget v1, p1, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-direct {p0, v1}, Lcom/iflytek/common/notice/NotificationService;->b(I)V

    .line 159
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "NotificationService"

    const-string/jumbo v2, "cancelNotice() ex happened"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/common/notice/NotificationService;Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/notice/NotificationService;
    .param p1, "x1"    # Landroid/app/Notification;
    .param p2, "x2"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 115
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProcessListener(), isSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->c:Lcom/iflytek/yd/base/ProcessListener;

    invoke-static {v0}, Lcom/iflytek/viafly/ViaFlyApp;->a(Lcom/iflytek/yd/base/ProcessListener;)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->c:Lcom/iflytek/yd/base/ProcessListener;

    invoke-static {v0}, Lcom/iflytek/viafly/ViaFlyApp;->b(Lcom/iflytek/yd/base/ProcessListener;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const/4 v1, 0x1

    .line 129
    .local v1, "ret":Z
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 130
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 133
    :cond_0
    const-string/jumbo v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRingNormalMode() | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v1
.end method

.method private static b(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "bmpTemp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 342
    const-string/jumbo v12, "NotificationService"

    const-string/jumbo v13, "makeNotification"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 344
    :cond_0
    const-string/jumbo v12, "NotificationService"

    const-string/jumbo v13, "makeNotification | context or param is null"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v9, 0x0

    .line 472
    :goto_0
    return-object v9

    .line 348
    :cond_1
    new-instance v7, Lm$d;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lm$d;-><init>(Landroid/content/Context;)V

    .line 349
    .local v7, "mBuilder":Lm$d;
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->layoutRes:I

    invoke-direct {v8, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 351
    .local v8, "mRemoteViews":Landroid/widget/RemoteViews;
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/iflytek/common/notice/ScheduleNotificationParam;

    if-eqz v12, :cond_6

    move-object/from16 v11, p1

    .line 353
    check-cast v11, Lcom/iflytek/common/notice/ScheduleNotificationParam;

    .line 354
    .local v11, "scheduleNotificationParam":Lcom/iflytek/common/notice/ScheduleNotificationParam;
    const-string/jumbo v12, "NotificationService"

    const-string/jumbo v13, "makeNotification  ScheduleNotificationParam"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const v12, 0x7f0b05f3

    iget-object v13, v11, Lcom/iflytek/common/notice/ScheduleNotificationParam;->title:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v11}, Lcom/iflytek/common/notice/ScheduleNotificationParam;->getSubTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 360
    const v12, 0x7f0b05f4

    .line 361
    invoke-virtual {v11}, Lcom/iflytek/common/notice/ScheduleNotificationParam;->getSubTitle()Ljava/lang/String;

    move-result-object v13

    .line 360
    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 367
    :goto_1
    iget-object v12, v11, Lcom/iflytek/common/notice/ScheduleNotificationParam;->content:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, " "

    iget-object v13, v11, Lcom/iflytek/common/notice/ScheduleNotificationParam;->content:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 368
    const v12, 0x7f0b05f5

    iget-object v13, v11, Lcom/iflytek/common/notice/ScheduleNotificationParam;->content:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 376
    :goto_2
    invoke-static/range {p0 .. p0}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v12

    invoke-virtual {v12}, Loh;->f()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 378
    const-string/jumbo v12, "NotificationService"

    const-string/jumbo v13, "the notification bar is dark."

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const v12, 0x7f0b05f3

    const-string/jumbo v13, "#d6d6d6"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 380
    const v12, 0x7f0b05f5

    const-string/jumbo v13, "#979b9e"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 381
    const v12, 0x7f0b05f4

    const-string/jumbo v13, "#979b9e"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 384
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v12, Lcom/iflytek/common/notice/NotificationService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v2, "contentIntent":Landroid/content/Intent;
    const-string/jumbo v12, "com.iflytek.cmcc.ACTION_CLICK_NOTIFY_BAR_NOTICE"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v12, "id"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    move-object/from16 v0, p1

    iget v12, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    const/high16 v13, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v12, v2, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 391
    .local v3, "contentPi":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-class v12, Lcom/iflytek/common/notice/NotificationService;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v4, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v12, "com.iflytek.cmcc.ACTION_CLEAR_NOTIFY_BAR_NOTICE"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string/jumbo v12, "id"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    move-object/from16 v0, p1

    iget v12, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    const/high16 v13, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v12, v4, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 396
    .local v5, "deletePi":Landroid/app/PendingIntent;
    const v12, 0x7f0203c0

    invoke-virtual {v7, v12}, Lm$d;->a(I)Lm$d;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    .line 397
    invoke-virtual {v12, v13}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    .line 398
    invoke-virtual {v12, v13}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    .line 399
    invoke-virtual {v12, v13}, Lm$d;->d(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v12

    .line 400
    invoke-virtual {v12, v3}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v12

    const/4 v13, 0x1

    .line 401
    invoke-virtual {v12, v13}, Lm$d;->a(Z)Lm$d;

    move-result-object v12

    .line 402
    invoke-virtual {v12, v5}, Lm$d;->b(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v12

    const-wide/16 v14, 0x0

    .line 403
    invoke-virtual {v12, v14, v15}, Lm$d;->a(J)Lm$d;

    move-result-object v12

    const v13, -0xff0100

    const/16 v14, 0x12c

    const/16 v15, 0xbb8

    .line 404
    invoke-virtual {v12, v13, v14, v15}, Lm$d;->a(III)Lm$d;

    .line 406
    invoke-static {}, Lhl;->k()I

    move-result v12

    const/16 v13, 0xb

    if-lt v12, v13, :cond_3

    .line 408
    invoke-virtual {v7, v8}, Lm$d;->a(Landroid/widget/RemoteViews;)Lm$d;

    .line 410
    :cond_3
    invoke-virtual {v7}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v9

    .line 412
    .local v9, "notify":Landroid/app/Notification;
    iget v12, v9, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    or-int/2addr v12, v13

    iput v12, v9, Landroid/app/Notification;->flags:I

    goto/16 :goto_0

    .line 363
    .end local v2    # "contentIntent":Landroid/content/Intent;
    .end local v3    # "contentPi":Landroid/app/PendingIntent;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "deletePi":Landroid/app/PendingIntent;
    .end local v9    # "notify":Landroid/app/Notification;
    :cond_4
    const-string/jumbo v12, "NotificationService"

    const-string/jumbo v13, "makeNotification  no subtitle"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const v12, 0x7f0b05f4

    const-string/jumbo v13, "setVisibility"

    const/16 v14, 0x8

    invoke-virtual {v8, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 371
    :cond_5
    const-string/jumbo v12, "NotificationService"

    const-string/jumbo v13, "makeNotification  no content"

    invoke-static {v12, v13}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const v12, 0x7f0b05f5

    const-string/jumbo v13, "setVisibility"

    const/16 v14, 0x8

    invoke-virtual {v8, v12, v13, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 418
    .end local v11    # "scheduleNotificationParam":Lcom/iflytek/common/notice/ScheduleNotificationParam;
    :cond_6
    const v12, 0x7f0b04bf

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 421
    const/4 v6, 0x0

    .line 422
    .local v6, "finalBmp":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_7

    .line 423
    const/16 v12, 0x2d0

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lbab;->a(Landroid/content/Context;I)F

    move-result v10

    .line 424
    .local v10, "scale":F
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lbab;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 427
    .end local v10    # "scale":F
    :cond_7
    if-eqz v6, :cond_8

    .line 428
    const v12, 0x7f0b04bd

    invoke-virtual {v8, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 431
    :cond_8
    const v12, 0x7f0b04bf

    .line 432
    invoke-static/range {p0 .. p0}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v13

    invoke-virtual {v13}, Loh;->d()I

    move-result v13

    .line 431
    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 434
    const v12, 0x7f0b04c0

    .line 435
    invoke-static {}, Loh;->a()Loh;

    move-result-object v13

    invoke-virtual {v13}, Loh;->e()I

    move-result v13

    .line 434
    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/widget/RemoteViews;)V

    .line 439
    new-instance v2, Landroid/content/Intent;

    const-class v12, Lcom/iflytek/common/notice/NotificationService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .restart local v2    # "contentIntent":Landroid/content/Intent;
    const-string/jumbo v12, "com.iflytek.cmcc.ACTION_CLICK_NOTIFY_BAR_NOTICE"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string/jumbo v12, "id"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    move-object/from16 v0, p1

    iget v12, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    const/high16 v13, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v12, v2, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 446
    .restart local v3    # "contentPi":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    const-class v12, Lcom/iflytek/common/notice/NotificationService;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .restart local v4    # "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v12, "com.iflytek.cmcc.ACTION_CLEAR_NOTIFY_BAR_NOTICE"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string/jumbo v12, "id"

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    move-object/from16 v0, p1

    iget v12, v0, Lcom/iflytek/common/notice/NotificationParam;->id:I

    const/high16 v13, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v12, v4, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 451
    .restart local v5    # "deletePi":Landroid/app/PendingIntent;
    const v12, 0x7f0203c0

    invoke-virtual {v7, v12}, Lm$d;->a(I)Lm$d;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    .line 452
    invoke-virtual {v12, v13}, Lm$d;->a(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    .line 453
    invoke-virtual {v12, v13}, Lm$d;->b(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    .line 454
    invoke-virtual {v12, v13}, Lm$d;->d(Ljava/lang/CharSequence;)Lm$d;

    move-result-object v12

    .line 455
    invoke-virtual {v12, v3}, Lm$d;->a(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v12

    const/4 v13, 0x0

    .line 456
    invoke-virtual {v12, v13}, Lm$d;->a(Z)Lm$d;

    move-result-object v12

    .line 457
    invoke-virtual {v12, v5}, Lm$d;->b(Landroid/app/PendingIntent;)Lm$d;

    move-result-object v12

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lm$d;->a(J)Lm$d;

    move-result-object v12

    const v13, -0xff0100

    const/16 v14, 0x12c

    const/16 v15, 0xbb8

    .line 459
    invoke-virtual {v12, v13, v14, v15}, Lm$d;->a(III)Lm$d;

    .line 461
    if-eqz v6, :cond_9

    .line 462
    invoke-virtual {v7, v6}, Lm$d;->a(Landroid/graphics/Bitmap;)Lm$d;

    .line 465
    :cond_9
    invoke-static {}, Lhl;->k()I

    move-result v12

    const/16 v13, 0xb

    if-lt v12, v13, :cond_a

    .line 466
    invoke-static/range {p1 .. p1}, Lcom/iflytek/common/notice/NotificationService;->c(Lcom/iflytek/common/notice/NotificationParam;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 467
    invoke-virtual {v7, v8}, Lm$d;->a(Landroid/widget/RemoteViews;)Lm$d;

    .line 469
    :cond_a
    invoke-virtual {v7}, Lm$d;->a()Landroid/app/Notification;

    move-result-object v9

    .line 471
    .restart local v9    # "notify":Landroid/app/Notification;
    iget v12, v9, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    or-int/2addr v12, v13

    iput v12, v9, Landroid/app/Notification;->flags:I

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 295
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeParam(), id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 565
    :try_start_0
    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 567
    .local v2, "statusBarManager":Ljava/lang/Object;
    invoke-static {}, Lhl;->k()I

    move-result v3

    const/16 v4, 0x10

    if-gt v3, v4, :cond_0

    .line 568
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "collapse"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 573
    .local v0, "collapse":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    :goto_1
    return-void

    .line 570
    .restart local v2    # "statusBarManager":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "collapsePanels"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "collapse":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 574
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v2    # "statusBarManager":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 575
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "NotificationService"

    const-string/jumbo v4, "collapseStatusBar() "

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 4
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 162
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotice(), param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-nez p1, :cond_1

    .line 164
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "updateNotice.run | param is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p1, Lcom/iflytek/common/notice/NotificationParam;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/iflytek/common/notice/NotificationParam;->content:Ljava/lang/String;

    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotice.run | iconurl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/iflytek/common/notice/NotificationParam;->iconCustom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p1, Lcom/iflytek/common/notice/NotificationParam;->iconCustom:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "updateNotice.run | iconurl is null!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/iflytek/common/notice/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/iflytek/common/notice/NotificationService;->b(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/app/Notification;Lcom/iflytek/common/notice/NotificationParam;)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p1, Lcom/iflytek/common/notice/NotificationParam;->iconCustom:Ljava/lang/String;

    new-instance v2, Lcom/iflytek/common/notice/NotificationService$2;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/common/notice/NotificationService$2;-><init>(Lcom/iflytek/common/notice/NotificationService;Lcom/iflytek/common/notice/NotificationParam;)V

    invoke-virtual {v0, v1, v2}, Lazl;->a(Ljava/lang/String;Lbdd;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/notice/NotificationParam;

    .line 309
    .local v0, "param":Lcom/iflytek/common/notice/NotificationParam;
    const-string/jumbo v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClearEvent(), param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-static {v0}, Loe;->b(Lcom/iflytek/common/notice/NotificationParam;)V

    .line 313
    iget v1, v0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    iget v1, v0, Lcom/iflytek/common/notice/NotificationParam;->flag:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 315
    invoke-direct {p0, p1}, Lcom/iflytek/common/notice/NotificationService;->b(I)V

    .line 318
    :cond_0
    return-void
.end method

.method private static c(Lcom/iflytek/common/notice/NotificationParam;)Z
    .locals 6
    .param p0, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    const/4 v3, 0x0

    .line 476
    if-nez p0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v3

    .line 479
    :cond_1
    iget-object v4, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 482
    iget-object v4, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    iget-object v4, p0, Lcom/iflytek/common/notice/NotificationParam;->showBtnContentMap:Ljava/util/Map;

    .line 486
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 487
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 490
    .local v2, "showText":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 491
    const-string/jumbo v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasButton()| findBtn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 543
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/iflytek/common/notice/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/common/notice/NotificationService;->a(Z)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 548
    const-string/jumbo v0, "NotificationService"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/common/notice/NotificationService;->a(Z)V

    .line 551
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/notice/NotificationService;->b:Landroid/app/NotificationManager;

    .line 555
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, -0x1

    .line 74
    if-eqz p1, :cond_8

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStart(), action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_CLICK_NOTIFY_BAR_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 80
    .local v3, "paramId":I
    invoke-direct {p0, v3}, Lcom/iflytek/common/notice/NotificationService;->a(I)V

    .line 101
    .end local v3    # "paramId":I
    :cond_0
    :goto_0
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_UPDATE_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_ADD_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/iflytek/common/notice/NotificationService;->a()V

    .line 107
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v4, 0x2

    return v4

    .line 81
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_CLEAR_NOTIFY_BAR_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 83
    .restart local v3    # "paramId":I
    invoke-direct {p0, v3}, Lcom/iflytek/common/notice/NotificationService;->c(I)V

    goto :goto_0

    .line 84
    .end local v3    # "paramId":I
    :cond_3
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_NOTIFY_BAR_BTN_CLICKED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 86
    .restart local v3    # "paramId":I
    const-string/jumbo v4, "btn_clicked"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "btnId":I
    invoke-direct {p0, v3, v1}, Lcom/iflytek/common/notice/NotificationService;->a(II)V

    goto :goto_0

    .line 88
    .end local v1    # "btnId":I
    .end local v3    # "paramId":I
    :cond_4
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_ADD_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 89
    const-string/jumbo v4, "param"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/notice/NotificationParam;

    .line 90
    .local v2, "noticeParam":Lcom/iflytek/common/notice/NotificationParam;
    invoke-direct {p0, v2}, Lcom/iflytek/common/notice/NotificationService;->b(Lcom/iflytek/common/notice/NotificationParam;)V

    goto :goto_0

    .line 91
    .end local v2    # "noticeParam":Lcom/iflytek/common/notice/NotificationParam;
    :cond_5
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_CANCEL_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    const-string/jumbo v4, "param"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/notice/NotificationParam;

    .line 93
    .restart local v2    # "noticeParam":Lcom/iflytek/common/notice/NotificationParam;
    invoke-direct {p0, v2}, Lcom/iflytek/common/notice/NotificationService;->a(Lcom/iflytek/common/notice/NotificationParam;)V

    goto :goto_0

    .line 94
    .end local v2    # "noticeParam":Lcom/iflytek/common/notice/NotificationParam;
    :cond_6
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_UPDATE_NOTICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 95
    const-string/jumbo v4, "param"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/common/notice/NotificationParam;

    .line 96
    .restart local v2    # "noticeParam":Lcom/iflytek/common/notice/NotificationParam;
    invoke-direct {p0, v2}, Lcom/iflytek/common/notice/NotificationService;->b(Lcom/iflytek/common/notice/NotificationParam;)V

    goto/16 :goto_0

    .line 97
    .end local v2    # "noticeParam":Lcom/iflytek/common/notice/NotificationParam;
    :cond_7
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_CLICK_LX_UPDATE_NOTIFICATION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/iflytek/common/notice/NotificationService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "action":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/iflytek/common/notice/NotificationService;->a()V

    goto/16 :goto_1
.end method
