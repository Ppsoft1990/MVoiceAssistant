.class public Lcom/iflytek/blc/push/PushManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/notice/NoticeObserver;
.implements Lcom/iflytek/blc/push/PushManager;


# static fields
.field private static b:I

.field private static c:I

.field private static d:I

.field private static l:Lcom/iflytek/blc/push/PushManagerImpl;


# instance fields
.field private a:Z

.field private e:Lcom/iflytek/blc/push/entity/BlcPushParam;

.field private f:Lcom/iflytek/blc/push/AllowTime;

.field private g:I

.field private h:I

.field private i:Lcom/iflytek/blc/push/PushObserver;

.field private j:Z

.field private k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

.field private m:Lcom/iflytek/blc/push/AlarmRequestManager;

.field protected mustPushRange:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/iflytek/blc/push/entity/BlcTimeRange;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
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

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:Landroid/content/Context;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/iflytek/blc/push/PushManagerImpl;->b:I

    sget v0, Lcom/iflytek/blc/push/PushManagerImpl;->b:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/iflytek/blc/push/PushManagerImpl;->c:I

    sget v0, Lcom/iflytek/blc/push/PushManagerImpl;->c:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/iflytek/blc/push/PushManagerImpl;->d:I

    new-instance v0, Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-direct {v0}, Lcom/iflytek/blc/push/PushManagerImpl;-><init>()V

    sput-object v0, Lcom/iflytek/blc/push/PushManagerImpl;->l:Lcom/iflytek/blc/push/PushManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->a:Z

    const/16 v0, 0x78

    iput v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->g:I

    iput v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->mustPushRange:Ljava/util/Set;

    iput v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->o:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->p:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->q:I

    new-instance v0, Lcom/iflytek/blc/push/PushManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/iflytek/blc/push/PushManagerImpl$1;-><init>(Lcom/iflytek/blc/push/PushManagerImpl;)V

    iput-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->s:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/iflytek/blc/push/AlarmRequestManager;

    invoke-direct {v0}, Lcom/iflytek/blc/push/AlarmRequestManager;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->m:Lcom/iflytek/blc/push/AlarmRequestManager;

    return-void
.end method

.method private static a()J
    .locals 6

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "readNextRequestTime()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_NEXT_REQUEST_NOTICE_TIME"

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/push/PushSetting;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    const-string/jumbo v2, "PushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "readNextRequestTime | next request time = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, v0, v1}, Ljava/sql/Date;-><init>(J)V

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/sql/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "generateNextAlarm()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "genNextRequestTime()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/blc/push/RequestTimeGenerator;

    invoke-direct {v0}, Lcom/iflytek/blc/push/RequestTimeGenerator;-><init>()V

    iget v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->g:I

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/push/RequestTimeGenerator;->getNextRandom(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->mustPushRange:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/iflytek/blc/push/PushManagerImpl;->a()J

    move-result-wide v0

    new-instance v4, Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-direct {v4, v0, v1}, Lcom/iflytek/blc/push/entity/BlcTimePoint;-><init>(J)V

    new-instance v1, Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/blc/push/entity/BlcTimePoint;-><init>(J)V

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->mustPushRange:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/entity/BlcTimeRange;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->getStartPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;

    move-result-object v6

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->getEndPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;

    move-result-object v7

    invoke-virtual {v4, v6}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->compareTo(Lcom/iflytek/blc/push/entity/BlcTimePoint;)I

    move-result v0

    if-gez v0, :cond_0

    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    :goto_1
    invoke-virtual {v2, v7}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->compareTo(Lcom/iflytek/blc/push/entity/BlcTimePoint;)I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_1

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    new-instance v2, Lcom/iflytek/blc/push/entity/BlcTimePoint;

    invoke-direct {v2, v0, v1}, Lcom/iflytek/blc/push/entity/BlcTimePoint;-><init>(J)V

    goto :goto_1

    :cond_0
    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    :cond_1
    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "genNextRequestTime() | ----> "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, v2, v3}, Ljava/sql/Date;-><init>(J)V

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/sql/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2, v3}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;J)V

    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .locals 4

    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setNextAlarm() | set = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, p2, p3}, Ljava/sql/Date;-><init>(J)V

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/sql/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->m:Lcom/iflytek/blc/push/AlarmRequestManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/blc/push/AlarmRequestManager;->setNextAlarm(Landroid/content/Context;J)V

    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveNextRequestTime() | next request time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, p2, p3}, Ljava/sql/Date;-><init>(J)V

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/DateFormat;->toString(Ljava/sql/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_NEXT_REQUEST_NOTICE_TIME"

    invoke-virtual {v0, v1, p2, p3}, Lcom/iflytek/blc/push/PushSetting;->setSetting(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/blc/push/PushManagerImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/iflytek/blc/push/PushMsg;->getRequestAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/blc/push/PushManagerImpl;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->f:Lcom/iflytek/blc/push/AllowTime;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->f:Lcom/iflytek/blc/push/AllowTime;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/AllowTime;->isInAllowedTime()Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
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

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "saveNoticeItems() | save notice items"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iflytek/blc/push/PushManagerImpl;->isSaveNotice()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/entity/NoticeItem;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/iflytek/blc/push/PushManagerImpl;->n:Ljava/util/Map;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/iflytek/blc/push/PushManagerImpl;->n:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/iflytek/blc/push/PushManagerImpl;->n:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-interface {v0, v3}, Lcom/iflytek/blc/push/dao/NoticeItemDao;->save(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/iflytek/blc/push/PushManagerImpl;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/push/PushManagerImpl;->l:Lcom/iflytek/blc/push/PushManagerImpl;

    return-object v0
.end method


# virtual methods
.method public OnNoticeFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xd

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->r:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "PushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleRequestError() | errorCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "setLastRequestState() | 0"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

    invoke-virtual {v2, v3, v5}, Lcom/iflytek/blc/push/PushSetting;->setSetting(Ljava/lang/String;I)V

    const-string/jumbo v2, "PushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "retryRequest() | errorCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "retryRequest() | retryTime  > MAX_RETRY"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    invoke-interface {v2, v0, p2}, Lcom/iflytek/blc/push/PushObserver;->onPushFailed(ILjava/lang/String;)V

    :cond_0
    iput v5, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    invoke-direct {p0, v1}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;J)V

    iget v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    const-string/jumbo v1, "PushManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "retryRequest() | retry in next "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "S, and retryTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/16 v0, 0x3c

    goto :goto_1

    :cond_3
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method public OnNoticeSuccess(Ljava/lang/String;Ljava/lang/String;[Lcom/iflytek/blc/notice/Notice;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/blc/push/PushManagerImpl;->r:Landroid/content/Context;

    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "handleRequestSuccess()"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "setLastRequestState() | 2"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/blc/push/PushSetting;->setSetting(Ljava/lang/String;I)V

    const-string/jumbo v2, "PushManager"

    const-string/jumbo v3, "filterIllegalNotices()"

    invoke-static {v2, v3}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_2

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PushManager"

    const-string/jumbo v4, "handleRequestSuccess() | pushObserver.onFilterResult"

    invoke-static {v3, v4}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    invoke-interface {v3, v2}, Lcom/iflytek/blc/push/PushObserver;->onFilterResult(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "PushManager"

    const-string/jumbo v4, "handleRequestSuccess() | saveNoticeItems"

    invoke-static {v3, v4}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/blc/push/PushManagerImpl;->b(Ljava/util/List;)V

    const-string/jumbo v3, "PushManager"

    const-string/jumbo v4, "handleRequestSuccess() | pushObserver.onPushSuccess"

    invoke-static {v3, v4}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    invoke-interface {v3, v2}, Lcom/iflytek/blc/push/PushObserver;->onPushSuccess(Ljava/util/List;)V

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    return-void

    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p3

    array-length v7, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_5

    aget-object v8, p3, v4

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/iflytek/blc/notice/Notice;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/iflytek/blc/notice/Notice;->getEndTime()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v10}, Lcom/iflytek/blc/util/DateFormat;->parseTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v9, v3}, Lcom/iflytek/blc/util/DateFormat;->parseTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-ltz v3, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-ltz v3, :cond_4

    cmp-long v3, v10, v12

    if-gtz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v8}, Lcom/iflytek/blc/notice/Notice;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v8}, Lcom/iflytek/blc/notice/Notice;->getTypeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/iflytek/blc/push/entity/NoticeItem;

    invoke-direct {v3, v8}, Lcom/iflytek/blc/push/entity/NoticeItem;-><init>(Lcom/iflytek/blc/notice/Notice;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/iflytek/blc/push/entity/NoticeItem;->setReceiveTime(J)V

    invoke-virtual {v3}, Lcom/iflytek/blc/push/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public addMustPushTimeRange(Lcom/iflytek/blc/push/entity/BlcTimeRange;)V
    .locals 3

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "addMustPushTimeRange()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->getStartPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->getEndPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "addMustPushTimeRange | range is invalid"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->getEndPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->getStartPoint()Lcom/iflytek/blc/push/entity/BlcTimePoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/push/entity/BlcTimePoint;->compareTo(Lcom/iflytek/blc/push/entity/BlcTimePoint;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addMustPushTimeRange | "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/blc/push/entity/BlcTimeRange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->mustPushRange:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->stopPush(Landroid/content/Context;)V

    return-void
.end method

.method public getNoticeResultManager()Lcom/iflytek/blc/push/NoticeResultManager;
    .locals 2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "getNoticeResultManager()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "getNoticeResultManager | noticeItemDao = null"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/iflytek/blc/push/NoticeResultManagerImpl;

    iget-object v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    invoke-direct {v0, v1}, Lcom/iflytek/blc/push/NoticeResultManagerImpl;-><init>(Lcom/iflytek/blc/push/dao/NoticeItemDao;)V

    goto :goto_0
.end method

.method public handleNetworkConnectedEvent(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "handleNetworkConnectedEvent()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/push/PushSetting;->getIntSettings(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->f:Lcom/iflytek/blc/push/AllowTime;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "handleNetworkConnectedEvent | is not in Allowed Time---set next request time"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->f:Lcom/iflytek/blc/push/AllowTime;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/AllowTime;->isInAllowedTime()Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "-------->> last request is failed -> request again!"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->sendRequest(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->r:Landroid/content/Context;

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/push/PushSetting;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/blc/push/PushDbHelper;

    invoke-direct {v0, p1}, Lcom/iflytek/blc/push/PushDbHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/iflytek/blc/push/dao/impl/NoticeItemDaoImpl;

    invoke-direct {v1, v0}, Lcom/iflytek/blc/push/dao/impl/NoticeItemDaoImpl;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->k:Lcom/iflytek/blc/push/dao/NoticeItemDao;

    :cond_0
    return-void
.end method

.method public isSaveNotice()Z
    .locals 3

    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSaveNotice() | "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/iflytek/blc/push/PushManagerImpl;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->j:Z

    return v0
.end method

.method public resumePush(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x1

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v2, "resumePush()"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "is resumed----return"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v2, "registerNoticeReceiver()"

    invoke-static {v0, v2}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {p1}, Lcom/iflytek/blc/push/PushMsg;->getRequestAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/blc/push/PushManagerImpl;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Lcom/iflytek/blc/push/PushManagerImpl;->a()J

    move-result-wide v2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v4, "isAlarmOutOfDated()"

    invoke-static {v0, v4}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sub-long v4, v2, v6

    const-wide/16 v8, 0x190

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    move v0, v1

    :cond_2
    sub-long v4, v2, v6

    iget v8, p0, Lcom/iflytek/blc/push/PushManagerImpl;->g:I

    mul-int/lit8 v8, v8, 0x2

    sget v9, Lcom/iflytek/blc/push/PushManagerImpl;->d:I

    mul-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    move v0, v1

    :cond_3
    const-string/jumbo v4, "PushManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isAlarmDated() | dateTime = "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", current time = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isOutOfDated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->sendRequest(Landroid/content/Context;)V

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->a:Z

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, v2, v3}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public sendRequest(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "sendRequest"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->h:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    invoke-interface {v0}, Lcom/iflytek/blc/push/PushObserver;->onPushBegin()Lcom/iflytek/blc/push/entity/BlcPushParam;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcPushParam;->getAllowIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcPushParam;->getForbidIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcPushParam;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-static {v2}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1, v0}, Lcom/iflytek/blc/notice/NoticeProxy;->start(Lcom/iflytek/blc/notice/NoticeObserver;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)I

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "setLastRequestState() | 1"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/blc/push/PushSetting;->getInstance()Lcom/iflytek/blc/push/PushSetting;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/blc/push/PushSetting;->setSetting(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->e:Lcom/iflytek/blc/push/entity/BlcPushParam;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->e:Lcom/iflytek/blc/push/entity/BlcPushParam;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcPushParam;->getAllowIds()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->e:Lcom/iflytek/blc/push/entity/BlcPushParam;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcPushParam;->getForbidIds()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->e:Lcom/iflytek/blc/push/entity/BlcPushParam;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/entity/BlcPushParam;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_0
.end method

.method public setNoticeParams(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "setNoticeParams()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/blc/push/entity/BlcPushParam;

    invoke-direct {v0, p1, p2, p3}, Lcom/iflytek/blc/push/entity/BlcPushParam;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->e:Lcom/iflytek/blc/push/entity/BlcPushParam;

    return-void
.end method

.method public setPushInterval(I)V
    .locals 3

    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPushInterval() | "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->g:I

    return-void
.end method

.method public setPushObserver(Lcom/iflytek/blc/push/PushObserver;)V
    .locals 2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "setPushObserver()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->i:Lcom/iflytek/blc/push/PushObserver;

    return-void
.end method

.method public setPushTime(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/AllowDay;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "setPushTime()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/blc/push/AllowTime;

    invoke-direct {v0, p1}, Lcom/iflytek/blc/push/AllowTime;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->f:Lcom/iflytek/blc/push/AllowTime;

    return-void
.end method

.method public setSaveNotice(Z)V
    .locals 3

    const-string/jumbo v0, "PushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSaveNotice() | "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->j:Z

    return-void
.end method

.method public setSaveNoticeByTypeId(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/blc/push/PushManagerImpl;->n:Ljava/util/Map;

    return-void
.end method

.method public stopPush(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "stopPush"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PushManager"

    const-string/jumbo v1, "cancelNextAlarm()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->m:Lcom/iflytek/blc/push/AlarmRequestManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/push/AlarmRequestManager;->cancelNextAlarm(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/blc/push/PushManagerImpl;->a:Z

    goto :goto_0
.end method
