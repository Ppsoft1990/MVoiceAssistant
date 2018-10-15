.class public Lauu;
.super Ljava/lang/Object;
.source "ScheduleMemoryCacheManager.java"


# static fields
.field private static volatile d:Lauu;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lauu;->d:Lauu;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lauu;->b(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lauu;->b()V

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;)Lauu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Lauu;->d:Lauu;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lauu;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lauu;->d:Lauu;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lauu;->d:Lauu;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lauu;->d:Lauu;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lauu;

    .prologue
    .line 30
    iget-object v0, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic a(Lauu;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .param p0, "x0"    # Lauu;
    .param p1, "x1"    # Ljava/util/concurrent/CopyOnWriteArrayList;

    .prologue
    .line 30
    iput-object p1, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 284
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    invoke-static {p0, p1}, Lauu;->c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 286
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 287
    :cond_2
    invoke-static {p0, p1}, Lauu;->b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {p0, p1}, Lauu;->c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lauu;

    .prologue
    .line 30
    iget-object v0, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic b(Lauu;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .param p0, "x0"    # Lauu;
    .param p1, "x1"    # Ljava/util/concurrent/CopyOnWriteArrayList;

    .prologue
    .line 30
    iput-object p1, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lauu$1;

    invoke-direct {v0, p0}, Lauu$1;-><init>(Lauu;)V

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->registerListener(Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataChangeListener;)V

    .line 240
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 300
    invoke-static {p0, p1}, Lauu;->d(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 301
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lauu;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lauu;

    .prologue
    .line 30
    iget-object v0, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic c(Lauu;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .param p0, "x0"    # Lauu;
    .param p1, "x1"    # Ljava/util/concurrent/CopyOnWriteArrayList;

    .prologue
    .line 30
    iput-object p1, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p1
.end method

.method public static c(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 312
    .local v0, "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "ringType":Ljava/lang/String;
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "subType":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "ring_type=\'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\' and extend_field like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "condition":Ljava/lang/String;
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedule(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 328
    .local v2, "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    return-object v2
.end method

.method public static f(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SCHEDULE_IS_INIT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 338
    .local v0, "isInit":Z
    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-static {p0}, Lauu;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 342
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 343
    .local v2, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v4

    if-gez v4, :cond_1

    .line 344
    const-string/jumbo v4, "ScheduleMemoryCacheManager"

    const-string/jumbo v5, "updateDb() | insert new remind error"

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    .end local v2    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SCHEDULE_IS_INIT"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    new-instance v1, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    invoke-direct {v1}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;-><init>()V

    .line 358
    .local v1, "morningRepeat":Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    invoke-direct {v2}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;-><init>()V

    .line 359
    .local v2, "nightRepeat":Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    new-instance v6, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;

    invoke-direct {v6}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;-><init>()V

    .line 360
    .local v6, "weatherRepeat":Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 361
    .local v4, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 362
    sget-object v7, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 363
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 364
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 365
    const-string/jumbo v7, "\u65e9\u5b89\u95ee\u5019"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v7, "\u65e9\u5b89\u95ee\u5019"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v7, "android_asset://ringtone/moning.mp3"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 368
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->MORNING:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 369
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    const/16 v7, 0x8

    invoke-direct {v5, v7, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 370
    .local v5, "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    .line 371
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 372
    .local v0, "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 373
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 374
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 375
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 376
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 377
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 378
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 379
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 380
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 381
    invoke-virtual {v4, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 382
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 383
    invoke-virtual {v4, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 384
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .end local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-direct {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 387
    .restart local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 388
    sget-object v7, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 389
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 390
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 391
    const-string/jumbo v7, "\u665a\u5b89\u95ee\u5019"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v7, "\u665a\u5b89\u95ee\u5019"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v7, "android_asset://ringtone/moning.mp3"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 394
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    sget-object v8, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->NIGHT:Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;

    invoke-virtual {v8}, Lcom/iflytek/viafly/schedule/ScheduleConstants$RecordRingSubType;->ValueOf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 395
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .end local v5    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/16 v7, 0x15

    invoke-direct {v5, v7, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 396
    .restart local v5    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    .line 397
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 398
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 399
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 400
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 401
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 402
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 403
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 404
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 405
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 406
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 407
    invoke-virtual {v4, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 408
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 409
    invoke-virtual {v4, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 410
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v4, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .end local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-direct {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 413
    .restart local v4    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 414
    sget-object v7, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 415
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 416
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->local:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 417
    const-string/jumbo v7, "\u5929\u6c14\u9884\u62a5"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v7, "\u5929\u6c14\u9884\u62a5"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 419
    const-string/jumbo v7, "android_asset://ringtone/moning.mp3"

    invoke-virtual {v4, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 420
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/Time;

    .end local v5    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    const/16 v7, 0x8

    const/16 v8, 0x1e

    invoke-direct {v5, v7, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Time;-><init>(II)V

    .line 421
    .restart local v5    # "time":Lcom/iflytek/viafly/schedule/framework/entities/Time;
    invoke-virtual {v6, v5}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addTime(Lcom/iflytek/viafly/schedule/framework/entities/Time;)Z

    .line 422
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 423
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 424
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 425
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 426
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 427
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 428
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 429
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 430
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 431
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 432
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 433
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 434
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;

    .end local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;-><init>(Ljava/lang/Integer;)V

    .line 435
    .restart local v0    # "date":Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;
    invoke-virtual {v6, v0}, Lcom/iflytek/viafly/schedule/framework/entities/WeekDatetimeInfor;->addWeek(Lcom/iflytek/viafly/schedule/framework/entities/WeekDate;)Z

    .line 436
    invoke-virtual {v4, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 437
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 438
    invoke-virtual {v4, v10}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 439
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    return-object v3
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 461
    iput-object v0, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 462
    iput-object v0, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 463
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    iget-object v2, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 62
    iget-object v2, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 63
    iget-object v2, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v2

    .line 65
    invoke-static {v2}, Lawh;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "todoScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v4

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v5

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v6

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v7

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lawe;->a(Ljava/util/List;[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_1

    .line 73
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    :cond_1
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    iget-object v2, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_2
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->complete:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lawh;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "completeScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v4

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v5

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v6

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v7

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Lawe;->a(Ljava/util/List;[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;

    move-result-object v0

    .line 85
    iget-object v2, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_3

    .line 86
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 88
    :cond_3
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    iget-object v2, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_4
    iget-object v2, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v2, :cond_5

    .line 92
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    :cond_5
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 95
    iget-object v2, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_6
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 98
    iget-object v2, p0, Lauu;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_7
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lauu;->b(Landroid/content/Context;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lauu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0, p1}, Lauu;->b(Landroid/content/Context;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lauu;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public e(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lauu;->c(Landroid/content/Context;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 266
    .local v1, "todoList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 274
    :goto_0
    return-object v0

    .line 269
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 270
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_3
    move-object v0, v2

    .line 274
    goto :goto_0
.end method
