.class public Lyw;
.super Ljava/lang/Object;
.source "PushManagerImpl.java"

# interfaces
.implements Lcom/iflytek/blc/notice/NoticeObserver;
.implements Lyp$a;
.implements Lyv;


# static fields
.field private static c:I

.field private static d:I

.field private static e:I

.field private static m:Lyw;


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lzj;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private f:Lzh;

.field private g:Lyr;

.field private h:I

.field private i:I

.field private j:Lyx;

.field private k:Z

.field private l:Lzc;

.field private n:Lyp;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final p:I

.field private final q:I

.field private final r:I

.field private s:Landroid/content/Context;

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x3e8

    sput v0, Lyw;->c:I

    .line 43
    sget v0, Lyw;->c:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lyw;->d:I

    .line 44
    sget v0, Lyw;->d:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lyw;->e:I

    .line 55
    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    sput-object v0, Lyw;->m:Lyw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Lyw;->b:Z

    .line 48
    const/16 v0, 0x78

    iput v0, p0, Lyw;->h:I

    .line 49
    iput v1, p0, Lyw;->i:I

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lyw;->a:Ljava/util/Set;

    .line 60
    iput v1, p0, Lyw;->p:I

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lyw;->q:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lyw;->r:I

    .line 454
    new-instance v0, Lyw$1;

    invoke-direct {v0, p0}, Lyw$1;-><init>(Lyw;)V

    iput-object v0, p0, Lyw;->t:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lyp;

    invoke-direct {v0}, Lyp;-><init>()V

    iput-object v0, p0, Lyw;->n:Lyp;

    .line 69
    iget-object v0, p0, Lyw;->n:Lyp;

    invoke-virtual {v0, p0}, Lyp;->a(Lyp$a;)V

    .line 70
    return-void
.end method

.method private a([Lcom/iflytek/blc/notice/Notice;)Ljava/util/List;
    .locals 8
    .param p1, "notices"    # [Lcom/iflytek/blc/notice/Notice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/iflytek/blc/notice/Notice;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v4, "PushManager"

    const-string/jumbo v5, "filterIllegalNotices()"

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v3

    .line 335
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, p1, v4

    .line 337
    .local v2, "notice":Lcom/iflytek/blc/notice/Notice;
    invoke-direct {p0, v2}, Lyw;->a(Lcom/iflytek/blc/notice/Notice;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    invoke-virtual {v2}, Lcom/iflytek/blc/notice/Notice;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 339
    invoke-virtual {v2}, Lcom/iflytek/blc/notice/Notice;->getTypeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 341
    new-instance v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    invoke-direct {v0, v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;-><init>(Lcom/iflytek/blc/notice/Notice;)V

    .line 342
    .local v0, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setReceiveTime(J)V

    .line 344
    invoke-virtual {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .end local v0    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 347
    .end local v2    # "notice":Lcom/iflytek/blc/notice/Notice;
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static a()Lyw;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lyw;->m:Lyw;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .param p1, "nextRequest"    # J

    .prologue
    .line 211
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveNextRequestTime() | next request time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-direct {p0, p1, p2}, Lyw;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lyy;->a()Lyy;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_NEXT_REQUEST_NOTICE_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lyy;->a(Ljava/lang/String;J)V

    .line 215
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRequestError() | errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyw;->b(I)V

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lyw;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 394
    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datetime"    # J

    .prologue
    .line 284
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextAlarm() | set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2, p3}, Lyw;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lyw;->n:Lyp;

    invoke-virtual {v0, p1, p2, p3}, Lyp;->a(Landroid/content/Context;J)V

    .line 286
    invoke-direct {p0, p2, p3}, Lyw;->a(J)V

    .line 287
    return-void
.end method

.method private a(Landroid/content/Context;[Lcom/iflytek/blc/notice/Notice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notices"    # [Lcom/iflytek/blc/notice/Notice;

    .prologue
    .line 366
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "handleRequestSuccess()"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lyw;->b(I)V

    .line 369
    invoke-direct {p0, p2}, Lyw;->a([Lcom/iflytek/blc/notice/Notice;)Ljava/util/List;

    move-result-object v0

    .line 371
    .local v0, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v2, p0, Lyw;->j:Lyx;

    if-eqz v2, :cond_0

    .line 372
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "handleRequestSuccess() | pushObserver.onFilterResult"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lyw;->j:Lyx;

    .line 375
    invoke-interface {v2, v0}, Lyx;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 376
    .local v1, "saveItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "handleRequestSuccess() | saveNoticeItems"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0, v1}, Lyw;->b(Ljava/util/List;)V

    .line 378
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "handleRequestSuccess() | pushObserver.onPushSuccess"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lyw;->j:Lyx;

    invoke-interface {v2, v1}, Lyx;->a(Ljava/util/List;)V

    .line 382
    .end local v1    # "saveItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :cond_0
    invoke-direct {p0, p1}, Lyw;->e(Landroid/content/Context;)V

    .line 383
    const/4 v2, 0x0

    iput v2, p0, Lyw;->i:I

    .line 384
    return-void
.end method

.method private a(Lcom/iflytek/blc/notice/Notice;)Z
    .locals 10
    .param p1, "notice"    # Lcom/iflytek/blc/notice/Notice;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 353
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v6

    .line 357
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getStartTime()Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "strStartTime":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getEndTime()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "strEndTime":Ljava/lang/String;
    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v7}, Lbaa;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 360
    .local v2, "starttime":J
    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v7}, Lbaa;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 362
    .local v0, "enttime":J
    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    cmp-long v7, v0, v8

    if-ltz v7, :cond_0

    cmp-long v7, v2, v0

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "typeId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 523
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const/4 v1, 0x0

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    iget-object v2, p0, Lyw;->o:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyw;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    iget-object v2, p0, Lyw;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 532
    .local v0, "bSave":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    .line 307
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 308
    .local v0, "ids":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(I)V
    .locals 3
    .param p1, "lastRequestState"    # I

    .prologue
    .line 314
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastRequestState() | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Lyy;->a()Lyy;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

    invoke-virtual {v0, v1, p1}, Lyy;->a(Ljava/lang/String;I)V

    .line 317
    return-void
.end method

.method private b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xd

    .line 397
    const-string/jumbo v2, "PushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retryRequest() | errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget v2, p0, Lyw;->i:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 400
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "retryRequest() | retryTime  > MAX_RETRY"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lyw;->j:Lyx;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lyw;->j:Lyx;

    invoke-interface {v2, p2, p3}, Lyx;->a(ILjava/lang/String;)V

    .line 404
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lyw;->i:I

    .line 405
    invoke-direct {p0, p1}, Lyw;->e(Landroid/content/Context;)V

    .line 424
    :goto_0
    return-void

    .line 409
    :cond_1
    const/4 v1, 0x0

    .line 410
    .local v1, "nextTime":I
    iget v2, p0, Lyw;->i:I

    if-nez v2, :cond_2

    .line 411
    const/16 v1, 0xa

    .line 418
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 419
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 420
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lyw;->a(Landroid/content/Context;J)V

    .line 421
    iget v2, p0, Lyw;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lyw;->i:I

    .line 422
    const-string/jumbo v2, "PushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retryRequest() | retry in next "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "S, and retryTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lyw;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_2
    iget v2, p0, Lyw;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 413
    const/16 v1, 0x3c

    goto :goto_1

    .line 415
    :cond_3
    const/16 v1, 0x12c

    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "saveNoticeItems() | save notice items"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Lyw;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v2, p0, Lyw;->l:Lzc;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, "saveItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 513
    .local v0, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lyw;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 514
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    .end local v0    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_3
    iget-object v2, p0, Lyw;->l:Lzc;

    invoke-interface {v2, v1}, Lzc;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private b(J)Z
    .locals 9
    .param p1, "dateTime"    # J

    .prologue
    .line 218
    const-string/jumbo v4, "PushManager"

    const-string/jumbo v5, "isAlarmOutOfDated()"

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 221
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 222
    .local v2, "currentTime":J
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 225
    sub-long v4, p1, v2

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 229
    :cond_0
    sub-long v4, p1, v2

    iget v6, p0, Lyw;->h:I

    mul-int/lit8 v6, v6, 0x2

    sget v7, Lyw;->e:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 230
    const/4 v1, 0x1

    .line 233
    :cond_1
    const-string/jumbo v4, "PushManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAlarmDated() | dateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", current time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isOutOfDated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v1
.end method

.method private c(J)Ljava/lang/String;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 291
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, p2, v0}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()J
    .locals 5

    .prologue
    .line 198
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "readNextRequestTime()"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lyy;->a()Lyy;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.blc.push.IFLY_NEXT_REQUEST_NOTICE_TIME"

    invoke-virtual {v2, v3}, Lyy;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 202
    .local v0, "nextRequestTime":J
    const-string/jumbo v2, "PushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readNextRequestTime | next request time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    invoke-direct {p0, v0, v1}, Lyw;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-wide v0
.end method

.method private e()J
    .locals 13

    .prologue
    .line 239
    const-string/jumbo v10, "PushManager"

    const-string/jumbo v11, "genNextRequestTime()"

    invoke-static {v10, v11}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v10, Lyz;

    invoke-direct {v10}, Lyz;-><init>()V

    iget v11, p0, Lyw;->h:I

    .line 241
    invoke-virtual {v10, v11}, Lyz;->a(I)J

    move-result-wide v6

    .line 242
    .local v6, "nextRequestTime":J
    iget-object v10, p0, Lyw;->a:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 243
    invoke-direct {p0}, Lyw;->d()J

    move-result-wide v4

    .line 244
    .local v4, "lastTime":J
    new-instance v2, Lzi;

    invoke-direct {v2, v4, v5}, Lzi;-><init>(J)V

    .line 245
    .local v2, "lastReqTime":Lzi;
    new-instance v3, Lzi;

    invoke-direct {v3, v6, v7}, Lzi;-><init>(J)V

    .line 246
    .local v3, "nextReqTime":Lzi;
    iget-object v10, p0, Lyw;->a:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 247
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzj;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzj;

    .line 249
    .local v8, "range":Lzj;
    invoke-virtual {v8}, Lzj;->b()Lzi;

    move-result-object v9

    .line 250
    .local v9, "startTime":Lzi;
    invoke-virtual {v8}, Lzj;->a()Lzi;

    move-result-object v0

    .line 252
    .local v0, "endTime":Lzi;
    invoke-virtual {v2, v9}, Lzi;->a(Lzi;)I

    move-result v10

    if-gez v10, :cond_0

    .line 253
    :goto_0
    invoke-virtual {v3, v0}, Lzi;->a(Lzi;)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 254
    const-wide/32 v10, 0x493e0

    sub-long/2addr v6, v10

    .line 255
    new-instance v3, Lzi;

    .end local v3    # "nextReqTime":Lzi;
    invoke-direct {v3, v6, v7}, Lzi;-><init>(J)V

    .restart local v3    # "nextReqTime":Lzi;
    goto :goto_0

    .line 261
    .end local v0    # "endTime":Lzi;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzj;>;"
    .end local v2    # "lastReqTime":Lzi;
    .end local v3    # "nextReqTime":Lzi;
    .end local v4    # "lastTime":J
    .end local v8    # "range":Lzj;
    .end local v9    # "startTime":Lzi;
    :cond_1
    const-string/jumbo v10, "PushManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "genNextRequestTime() | ----> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 262
    invoke-direct {p0, v6, v7}, Lyw;->c(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 261
    invoke-static {v10, v11}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-wide v6
.end method

.method private e(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "generateNextAlarm()"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lyw;->e()J

    move-result-wide v0

    .line 269
    .local v0, "nextRequest":J
    invoke-direct {p0, p1, v0, v1}, Lyw;->a(Landroid/content/Context;J)V

    .line 270
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 473
    const-string/jumbo v1, "PushManager"

    const-string/jumbo v2, "registerNoticeReceiver()"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-nez p1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lyw;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p1, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lyw;->g:Lyr;

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lyw;->g:Lyr;

    invoke-virtual {v0}, Lyr;->a()Z

    move-result v0

    goto :goto_0
.end method

.method private g()I
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lyy;->a()Lyy;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

    invoke-virtual {v0, v1}, Lyy;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public OnNoticeFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v0, p0, Lyw;->s:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lyw;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 588
    return-void
.end method

.method public OnNoticeSuccess(Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/notice/Notice;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "notices"    # [Lcom/iflytek/blc/notice/Notice;

    .prologue
    .line 582
    iget-object v0, p0, Lyw;->s:Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Lyw;->a(Landroid/content/Context;[Lcom/iflytek/blc/notice/Notice;)V

    .line 583
    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1, "pushIntervalInMinute"    # I

    .prologue
    .line 438
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPushInterval() | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput p1, p0, Lyw;->h:I

    .line 440
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const-string/jumbo v1, "PushManager"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lyw;->s:Landroid/content/Context;

    .line 80
    invoke-static {}, Lyy;->a()Lyy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lyy;->a(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lyw;->l:Lzc;

    if-nez v1, :cond_0

    .line 82
    new-instance v0, Lyu;

    invoke-direct {v0, p1}, Lyu;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "dbHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    new-instance v1, Lzf;

    invoke-direct {v1, v0}, Lzf;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lyw;->l:Lzc;

    .line 91
    .end local v0    # "dbHelper":Landroid/database/sqlite/SQLiteOpenHelper;
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 2
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 592
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "onAlarmTrigger"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-direct {p0}, Lyw;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lyw;->s:Landroid/content/Context;

    invoke-direct {p0, v0}, Lyw;->e(Landroid/content/Context;)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lyw;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lyw;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lyx;)V
    .locals 2
    .param p1, "pushObserver"    # Lyx;

    .prologue
    .line 450
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "setPushObserver()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput-object p1, p0, Lyw;->j:Lyx;

    .line 452
    return-void
.end method

.method public a(Lzj;)V
    .locals 3
    .param p1, "range"    # Lzj;

    .prologue
    .line 564
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "addMustPushTimeRange()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lzj;->b()Lzi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p1}, Lzj;->a()Lzi;

    move-result-object v0

    if-nez v0, :cond_2

    .line 567
    :cond_0
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "addMustPushTimeRange | range is invalid"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 571
    :cond_2
    invoke-virtual {p1}, Lzj;->a()Lzi;

    move-result-object v0

    invoke-virtual {p1}, Lzj;->b()Lzi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi;->a(Lzi;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 575
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMustPushTimeRange | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lzj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lyw;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .param p1, "saveNotice"    # Z

    .prologue
    .line 496
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveNotice() | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iput-boolean p1, p0, Lyw;->k:Z

    .line 498
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "resumePush()"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean v2, p0, Lyw;->b:Z

    if-eqz v2, :cond_0

    .line 97
    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "is resumed----return"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lyw;->f(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0}, Lyw;->d()J

    move-result-wide v0

    .line 104
    .local v0, "nextRequestTime":J
    invoke-direct {p0, v0, v1}, Lyw;->b(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0, p1}, Lyw;->c(Landroid/content/Context;)V

    .line 109
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lyw;->b:Z

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lyw;->a(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 490
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSaveNotice() | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lyw;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-boolean v0, p0, Lyw;->k:Z

    return v0
.end method

.method public c()Lys;
    .locals 2

    .prologue
    .line 537
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "getNoticeResultManager()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lyw;->l:Lzc;

    if-nez v0, :cond_0

    .line 539
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "getNoticeResultManager | noticeItemDao = null"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v0, 0x0

    .line 543
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lyt;

    iget-object v1, p0, Lyw;->l:Lzc;

    invoke-direct {v0, v1}, Lyt;-><init>(Lzc;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string/jumbo v6, "PushManager"

    const-string/jumbo v7, "sendRequest"

    invoke-static {v6, v7}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v5, 0x0

    .line 135
    .local v5, "tmpPushParam":Lzh;
    iget-object v6, p0, Lyw;->j:Lyx;

    if-eqz v6, :cond_0

    iget v6, p0, Lyw;->i:I

    if-nez v6, :cond_0

    .line 136
    iget-object v6, p0, Lyw;->j:Lyx;

    invoke-interface {v6}, Lyx;->a()Lzh;

    move-result-object v5

    .line 139
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "allowIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "forbidIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 143
    .local v2, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 144
    invoke-virtual {v5}, Lzh;->a()Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-virtual {v5}, Lzh;->b()Ljava/util/List;

    move-result-object v3

    .line 146
    invoke-virtual {v5}, Lzh;->c()Ljava/util/Map;

    move-result-object v2

    .line 153
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lyw;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "allowIdArray":[Ljava/lang/String;
    invoke-direct {p0, v3}, Lyw;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "forbitIdArray":[Ljava/lang/String;
    invoke-static {p0, v0, v4, v2}, Lcom/iflytek/blc/notice/NoticeProxy;->start(Lcom/iflytek/blc/notice/NoticeObserver;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I

    .line 175
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lyw;->b(I)V

    .line 176
    return-void

    .line 147
    .end local v0    # "allowIdArray":[Ljava/lang/String;
    .end local v4    # "forbitIdArray":[Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lyw;->f:Lzh;

    if-eqz v6, :cond_1

    .line 148
    iget-object v6, p0, Lyw;->f:Lzh;

    invoke-virtual {v6}, Lzh;->a()Ljava/util/List;

    move-result-object v1

    .line 149
    iget-object v6, p0, Lyw;->f:Lzh;

    invoke-virtual {v6}, Lzh;->b()Ljava/util/List;

    move-result-object v3

    .line 150
    iget-object v6, p0, Lyw;->f:Lzh;

    invoke-virtual {v6}, Lzh;->c()Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "handleNetworkConnectedEvent()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lyw;->g()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lyw;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "handleNetworkConnectedEvent | is not in Allowed Time---set next request time"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1}, Lyw;->e(Landroid/content/Context;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "-------->> last request is failed -> request again!"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, p1}, Lyw;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
