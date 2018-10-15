.class public Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;
.super Ljava/lang/Object;
.source "ScheduleDataOperationHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreateAudioCach:Lauy;

.field private mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mCreateAudioCach:Lauy;

    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mInstance:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mInstance:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;

    .line 49
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mInstance:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;

    return-object v0
.end method

.method private recordLastModifyRingtone(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 3
    .param p1, "dest"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_IS_ALARM_CLOCK_SCHEDULE_NEWED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarm(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 1
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 466
    :cond_0
    return-void
.end method

.method public completeSchedule(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 291
    if-gez p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getRemind(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 295
    .local v1, "oldSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->completeRemind(I)V

    .line 296
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getRemind(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 297
    .local v0, "newSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    invoke-static {v1, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 298
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->updateLatestSchedule()V

    .line 299
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "completeSchedule() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteSchedule(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 327
    .local v0, "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->deleteRecord(I)V

    .line 331
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteRemind() success | id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v1

    invoke-interface {v1, p1}, Lave;->b(I)V

    .line 336
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v1

    invoke-interface {v1, p1}, Lave;->a(I)V

    .line 337
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mCreateAudioCach:Lauy;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lauy;->b(IJ)V

    .line 339
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 340
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->updateLatestSchedule()V

    goto :goto_0
.end method

.method public deleteSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)V
    .locals 8
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 348
    :cond_0
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->all:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v3, :cond_2

    .line 349
    :cond_1
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v2

    .line 350
    .local v2, "toSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 351
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 352
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v4

    invoke-virtual {v4, v0}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_1

    .line 357
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v2    # "toSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->deleteSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)V

    .line 360
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 361
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 362
    .restart local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_3

    .line 365
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mCreateAudioCach:Lauy;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lauy;->b(IJ)V

    .line 366
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onDelete(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_2

    .line 369
    .end local v0    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->updateLatestSchedule()V

    goto :goto_0
.end method

.method public getLatestTrigger()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 6

    .prologue
    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v1

    .line 381
    .local v1, "latestSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 382
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 383
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v0, :cond_0

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 384
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 386
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 387
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 388
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .line 390
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 392
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    move-object v2, v0

    .line 398
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_2
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLatestTrigger(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v2
.end method

.method public varargs getLatestTrigger([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 10
    .param p1, "scheduleBusiness"    # [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    .prologue
    const/4 v5, 0x0

    .line 408
    if-nez p1, :cond_1

    move-object v1, v5

    .line 426
    :cond_0
    :goto_0
    return-object v1

    .line 411
    :cond_1
    const/4 v3, 0x0

    .line 412
    .local v3, "result":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v2

    .line 413
    .local v2, "latestSchedules":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 414
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 415
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v1, :cond_2

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "isRightType":Z
    array-length v8, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v4, p1, v6

    .line 420
    .local v4, "sBusiness":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v9

    if-ne v9, v4, :cond_3

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v9

    if-nez v9, :cond_0

    .line 419
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "isRightType":Z
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v4    # "sBusiness":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    :cond_4
    move-object v1, v5

    .line 426
    goto :goto_0
.end method

.method public getOpenAndToDoSchedules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getOpenAndToDoSchedules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getRemind(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public getSchedule(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getRemind(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSchedules(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReminds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getSchedules([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;
    .locals 1
    .param p1, "business"    # [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getSchedules([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isHasDatedSchedule()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->isHasDatedRemind()Z

    move-result v0

    return v0
.end method

.method public manualAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
    .locals 12
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, -0x1

    .line 153
    if-nez p1, :cond_0

    .line 154
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "manualAddSchedule() | schedule = null -> return false"

    invoke-static {v6, v7}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return v3

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "dest":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 167
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "manualAddSchedule() | remind="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lbaa;->f(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v4

    .line 171
    .local v4, "nextTime":J
    cmp-long v6, v4, v10

    if-nez v6, :cond_1

    .line 172
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "manualAddSchedule() | trigger time is dated -> return false"

    invoke-static {v3, v6}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v3, -0x2

    goto :goto_0

    .line 160
    .end local v4    # "nextTime":J
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "manualAddSchedule() param clone error!"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "manualAddSchedule() param clone error!"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "nextTime":J
    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 177
    .end local v4    # "nextTime":J
    :cond_2
    invoke-virtual {v0, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 178
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlag(Z)V

    .line 180
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 181
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 189
    :goto_1
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v2

    .line 190
    .local v2, "id":I
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 191
    invoke-virtual {p1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 193
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 194
    sget-object v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "----->> database insert remind error!"

    invoke-static {v3, v6}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v3, -0x3

    goto/16 :goto_0

    .line 182
    .end local v2    # "id":I
    :cond_3
    sget-object v6, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 183
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_1

    .line 185
    :cond_4
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_1

    .line 197
    .restart local v2    # "id":I
    :cond_5
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->recordLastModifyRingtone(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 198
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_6

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_6

    .line 199
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lawa;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 202
    :cond_6
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 203
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->updateLatestSchedule()V

    .line 205
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    .line 206
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v6, "manual"

    invoke-virtual {v3, v6, p1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 208
    :cond_7
    invoke-static {p1}, Laun;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 209
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    goto/16 :goto_0
.end method

.method public modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 12
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 214
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "modifySchedule() | schedule="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-nez p1, :cond_0

    move-object v0, v5

    .line 287
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "dest":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 228
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "modifySchedule() start | remind="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lbaa;->f(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v2

    .line 232
    .local v2, "nextTime":J
    cmp-long v6, v2, v10

    if-nez v6, :cond_1

    .line 233
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "modifySchedule() | trigger time is dated -> set open=false & completed=true"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 235
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlag(Z)V

    .line 238
    invoke-virtual {v0, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTimeSince(J)J

    move-result-wide v2

    .line 239
    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 244
    :goto_1
    invoke-virtual {v0, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 249
    .end local v2    # "nextTime":J
    :goto_2
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v4

    .line 250
    .local v4, "oldRemind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-nez v4, :cond_3

    .line 251
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "modifySchedule() | oldRemind == null -> return null"

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 252
    goto :goto_0

    .line 221
    .end local v4    # "oldRemind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "modifySchedule() param clone error!"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 223
    goto :goto_0

    .line 224
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :catch_1
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "modifySchedule() param clone error!"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 226
    goto :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "nextTime":J
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 242
    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlag(Z)V

    goto :goto_1

    .line 246
    .end local v2    # "nextTime":J
    :cond_2
    invoke-virtual {v0, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlag(Z)V

    goto :goto_2

    .line 254
    .restart local v4    # "oldRemind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 255
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 256
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v5

    invoke-virtual {v5, v0}, Lawa;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 269
    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 270
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRawtext(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAction(Ljava/lang/String;)V

    .line 274
    :cond_5
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_8

    .line 275
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 282
    :goto_4
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    invoke-virtual {v5, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->updateRecord(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 283
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "modifySchedule() end | remind="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 285
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->updateLatestSchedule()V

    .line 286
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->recordLastModifyRingtone(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto/16 :goto_0

    .line 258
    :cond_6
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v5

    invoke-virtual {v5, v0}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 259
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v5

    invoke-virtual {v5, v0}, Lawa;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_3

    .line 261
    :cond_7
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 262
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v5

    invoke-virtual {v5, v0}, Lawa;->b(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_3

    .line 276
    :cond_8
    sget-object v5, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-ne v5, v6, :cond_9

    .line 277
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_4

    .line 279
    :cond_9
    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_4
.end method

.method public speechAddSchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 12
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "speechAddSchedule() | schedule = null -> return false"

    invoke-static {v6, v7}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v6

    invoke-virtual {v6}, Lauy;->b()V

    .line 139
    :goto_0
    return v3

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, "dest":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->clone()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 94
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "speechAddSchedule() | remind="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lbaa;->f(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getNextTime()J

    move-result-wide v4

    .line 98
    .local v4, "nextTime":J
    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 99
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "speechAddSchedule() | trigger time is dated -> return false"

    invoke-static {v6, v7}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v6

    invoke-virtual {v6}, Lauy;->b()V

    goto :goto_0

    .line 85
    .end local v4    # "nextTime":J
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "speechAddSchedule() param clone error!"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v6

    invoke-virtual {v6}, Lauy;->b()V

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "speechAddSchedule() param clone error!"

    invoke-static {v6, v7, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v6

    invoke-virtual {v6}, Lauy;->b()V

    goto :goto_0

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "nextTime":J
    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 105
    .end local v4    # "nextTime":J
    :cond_2
    invoke-virtual {v0, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 106
    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlag(Z)V

    .line 108
    sget-object v7, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 109
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    .line 116
    :goto_1
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mDbHelper:Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v2

    .line 117
    .local v2, "id":I
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 118
    invoke-virtual {p1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 120
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 121
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "----->> database insert remind error!"

    invoke-static {v6, v7}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v6

    invoke-virtual {v6}, Lauy;->b()V

    goto/16 :goto_0

    .line 110
    .end local v2    # "id":I
    :cond_3
    sget-object v7, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 111
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_1

    .line 113
    :cond_4
    sget-object v7, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V

    goto :goto_1

    .line 126
    .restart local v2    # "id":I
    :cond_5
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->recordLastModifyRingtone(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 128
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_6

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lawa;->a(Landroid/content/Context;)Lawa;

    move-result-object v3

    invoke-virtual {v3, v0}, Lawa;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 131
    :cond_6
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onInsert(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 132
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->updateLatestSchedule()V

    .line 134
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    .line 136
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v7, "mic"

    invoke-virtual {v3, v7, p1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Ljava/lang/String;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 138
    :cond_7
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_IS_SCHEDULE_ADD_BY_SPEECH"

    invoke-virtual {v3, v7, v6}, Lil;->a(Ljava/lang/String;I)V

    move v3, v6

    .line 139
    goto/16 :goto_0
.end method

.method public switchSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getSchedule(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 304
    .local v0, "oldRemind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-nez v0, :cond_0

    .line 305
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "switchSchedule()  | oldRemind=null -> return null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x0

    .line 314
    :goto_0
    return-object v1

    .line 308
    :cond_0
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchSchedule()  | oldRemind="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlag(Z)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    .line 311
    .local v1, "resultRemind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchSchedule()  | result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataChangeMonitor;->onUpdate(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0

    .line 309
    .end local v1    # "resultRemind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public updateLatestSchedule()V
    .locals 3

    .prologue
    .line 442
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    sget-object v2, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onDataUpdated(Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V

    .line 459
    return-void
.end method
