.class public Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;
.super Ljava/lang/Object;
.source "SmartScheduleManager.java"

# interfaces
.implements Lvp$d;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartScheduleManager"

.field private static instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;


# instance fields
.field private configManager:Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;

.field private context:Landroid/content/Context;

.field private controllersMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/smartschedule/SmartScheduleController;",
            ">;"
        }
    .end annotation
.end field

.field private mScheduleItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShowManager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

.field private runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

.field private scheduleConfigMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;",
            ">;"
        }
    .end annotation
.end field

.field private scheduleConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mShowManager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    .line 66
    return-void
.end method

.method public static addSmartSchedule(I)V
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 148
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "list":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "idStr":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static addSmartSchedule(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getSmartScheduleId(Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, "id":I
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->addSmartSchedule(I)V

    .line 166
    return-void
.end method

.method private createController(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .locals 6
    .param p1, "ctrlItem"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 102
    :goto_0
    return-object v2

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 96
    .local v2, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getClassname()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/common/adaptation/util/ReflectionUtils;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v1    # "classname":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, "createController | error"

    invoke-static {v4, v5, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->instance:Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSmartScheduleId(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "id":I
    const-string/jumbo v1, "BadWeatherReminder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const/4 v0, 0x6

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    const-string/jumbo v1, "HotEventController"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    const/4 v0, 0x4

    goto :goto_0

    .line 204
    :cond_2
    const-string/jumbo v1, "TrafficController"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "TrafficDailyController"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_4
    const-string/jumbo v1, "CoolingController"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    const/4 v0, 0x5

    goto :goto_0

    .line 208
    :cond_5
    const-string/jumbo v1, "AirPollutionReminder"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getSmartScheduleList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "list":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "array":[Ljava/lang/String;
    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 247
    .local v3, "idStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 246
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 252
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    .end local v2    # "id":I
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "SmartScheduleManager"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 257
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "idStr":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private initConfig()V
    .locals 6

    .prologue
    .line 69
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    .line 70
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigMap:Ljava/util/LinkedHashMap;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mScheduleItemsMap:Ljava/util/HashMap;

    .line 73
    new-instance v2, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->configManager:Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;

    .line 74
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->configManager:Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/config/SmartScheduleConfigManager;->getScheduleConfigs()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigs:Ljava/util/List;

    .line 76
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigs:Ljava/util/List;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 81
    .local v1, "item":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->createController(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v0

    .line 82
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_2

    .line 83
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    const-string/jumbo v3, "SmartScheduleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initController(Lcom/iflytek/viafly/smartschedule/SmartScheduleController;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V
    .locals 6
    .param p1, "controller"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .param p2, "scheduleConfig"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getName()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "scheduleName":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v3

    .line 284
    .local v3, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    if-nez v3, :cond_3

    .line 285
    invoke-virtual {p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;->getDefaultstatus()I

    move-result v0

    .line 286
    .local v0, "defaultstatus":I
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isUmbrellaReminder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 288
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/weather/WeatherFloatWindowEnableManager;->isUserCheckEnabled()Z

    move-result v1

    .line 289
    .local v1, "enable":Z
    if-eqz v1, :cond_4

    const/4 v0, 0x2

    .line 296
    .end local v1    # "enable":Z
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v4, v0}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->createDefaultRunData(Ljava/lang/String;I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v3

    .line 297
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->saveRunDataItem(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 299
    .end local v0    # "defaultstatus":I
    :cond_3
    invoke-virtual {p1, p2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setScheduleConfig(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V

    .line 300
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setContext(Landroid/content/Context;)V

    .line 301
    invoke-virtual {p1, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 302
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mShowManager:Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setShowManager(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;)V

    .line 303
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->init()V

    .line 306
    new-instance v2, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-direct {v2, p2, v3}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 307
    .local v2, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mScheduleItemsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    .end local v2    # "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .restart local v0    # "defaultstatus":I
    .restart local v1    # "enable":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 290
    .end local v1    # "enable":Z
    :cond_5
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isTrafficReminder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isAboveVersion()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0
.end method

.method private initControllers()V
    .locals 5

    .prologue
    .line 265
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 270
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/SmartScheduleController;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/iflytek/viafly/smartschedule/SmartScheduleController;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 273
    .local v2, "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    invoke-direct {p0, v3, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->initController(Lcom/iflytek/viafly/smartschedule/SmartScheduleController;Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;)V

    goto :goto_0
.end method

.method private initRunData()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    .line 262
    return-void
.end method

.method private initSharedPerences()V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_IS_INIT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 126
    .local v1, "isInit":Z
    if-nez v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v2, ","

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "6,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string/jumbo v2, "5,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string/jumbo v2, "7,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string/jumbo v2, "1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string/jumbo v2, "4,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_IS_INIT"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lil;->a(Ljava/lang/String;Z)V

    .line 140
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method private isAboveVersion()Z
    .locals 2

    .prologue
    .line 542
    invoke-static {}, Lhl;->k()I

    move-result v0

    .line 544
    .local v0, "version":I
    const/16 v1, 0x13

    if-le v1, v0, :cond_0

    .line 545
    const/4 v1, 0x0

    .line 547
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isScheduleOpen(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Z
    .locals 2
    .param p1, "runDataItem"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-eq v0, v1, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmartScheduleAdd(I)Z
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 220
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "list":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "idStr":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 223
    const/4 v2, 0x0

    .line 225
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSmartScheduleAdd(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getSmartScheduleId(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "id":I
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isSmartScheduleAdd(I)Z

    move-result v1

    return v1
.end method

.method private isTrafficReminder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "schedulename"    # Ljava/lang/String;

    .prologue
    .line 539
    const-string/jumbo v0, "TrafficController"

    invoke-static {p1, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isUmbrellaReminder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "schedulename"    # Ljava/lang/String;

    .prologue
    .line 536
    const-string/jumbo v0, "BadWeatherReminder"

    invoke-static {p1, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static removeSmartSchedule(I)V
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 174
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "list":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "idStr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 178
    const-string/jumbo v2, ","

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_SMART_SCHEDULE_LIST"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static removeSmartSchedule(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getSmartScheduleId(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "id":I
    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->removeSmartSchedule(I)V

    .line 191
    return-void
.end method


# virtual methods
.method public closeSchedule(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)V
    .locals 8
    .param p1, "item"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .prologue
    .line 469
    if-nez p1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "scheduleName":Ljava/lang/String;
    const-string/jumbo v5, "SmartScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSchedules | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v2

    .line 476
    .local v2, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 477
    .local v1, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v5, v6, :cond_2

    .line 482
    const-string/jumbo v5, "SmartScheduleManager"

    const-string/jumbo v6, "getSchedules | schedule is close"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_2
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 487
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    sget-object v5, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->close:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 488
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v3

    .line 489
    .local v3, "runDataItemNew":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 490
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->close()V

    .line 492
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->saveRunDataItem(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 493
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->setStatus(I)V

    .line 496
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteSchedule(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)V
    .locals 8
    .param p1, "item"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .prologue
    .line 505
    if-nez p1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "scheduleName":Ljava/lang/String;
    const-string/jumbo v5, "SmartScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSchedules | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v2

    .line 512
    .local v2, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 513
    .local v1, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v5, v6, :cond_2

    .line 518
    const-string/jumbo v5, "SmartScheduleManager"

    const-string/jumbo v6, "getSchedules | schedule is delete"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_2
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 523
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    sget-object v5, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 524
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v3

    .line 525
    .local v3, "runDataItemNew":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 526
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->delete()V

    .line 528
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->saveRunDataItem(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 529
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->setStatus(I)V

    .line 532
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWShowManager;->removeDataByType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRunSchedules()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, "getSchedules"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 355
    .local v3, "it":Ljava/util/Iterator;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 357
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 358
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 359
    .local v8, "scheduleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 360
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v9, v8}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v6

    .line 361
    .local v6, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 362
    .local v7, "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    if-eqz v6, :cond_1

    if-nez v7, :cond_3

    .line 363
    :cond_1
    const-string/jumbo v9, "SmartScheduleManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSchedules | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'s run data item or desc is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;>;"
    .end local v6    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .end local v7    # "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .end local v8    # "scheduleName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v5

    .line 366
    .restart local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;>;"
    .restart local v6    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .restart local v7    # "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .restart local v8    # "scheduleName":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 367
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, "getRunSchedules | controller gray is forbidden"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_4
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->isScheduleOpen(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 371
    new-instance v4, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-direct {v4, v7, v6}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 372
    .local v4, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    invoke-virtual {v6}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getCreatetime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->setCreatetime(J)V

    .line 373
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string/jumbo v9, "SmartScheduleManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "begin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "getRunningController name is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 562
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 563
    :cond_2
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "getRunningController controller cache is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 564
    goto :goto_0

    .line 567
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    .line 569
    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    .line 570
    .local v1, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v3, v4, :cond_4

    .line 571
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 572
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .end local v1    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    :cond_4
    move-object v0, v2

    .line 578
    goto :goto_0
.end method

.method public getSchedules()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, "getSchedules"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_0
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 319
    .local v3, "it":Ljava/util/Iterator;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 321
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 322
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 323
    .local v8, "scheduleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 324
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v9, v8}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v6

    .line 325
    .local v6, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 326
    .local v7, "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 327
    :cond_0
    const-string/jumbo v9, "SmartScheduleManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSchedules | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'s run data item or desc is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;>;"
    .end local v6    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .end local v7    # "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .end local v8    # "scheduleName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v5, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5

    .line 330
    .restart local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;>;"
    .restart local v6    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .restart local v7    # "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .restart local v8    # "scheduleName":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 331
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, "getSchedules | controller gray is forbidden"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_3
    new-instance v4, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-direct {v4, v7, v6}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 335
    .local v4, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getSmartScheduleItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 803
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, "getSmartScheduleItem"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 805
    const/4 v4, 0x0

    .line 835
    :cond_0
    :goto_0
    return-object v4

    .line 808
    :cond_1
    const/4 v4, 0x0

    .line 810
    .local v4, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    :try_start_0
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 811
    .local v3, "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 812
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 813
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 814
    .local v8, "scheduleName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 815
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v9, v8}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v6

    .line 816
    .local v6, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v9, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->scheduleConfigMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;

    .line 817
    .local v7, "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    if-eqz v6, :cond_3

    if-nez v7, :cond_4

    .line 818
    :cond_3
    const-string/jumbo v9, "SmartScheduleManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSchedules | "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'s run data item or desc is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 831
    .end local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v6    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .end local v7    # "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .end local v8    # "scheduleName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 821
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v6    # "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .restart local v7    # "scheduleConfig":Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;
    .restart local v8    # "scheduleName":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 822
    const-string/jumbo v9, "SmartScheduleManager"

    const-string/jumbo v10, "getRunSchedules | controller gray is forbidden"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 826
    :cond_5
    invoke-static {p1, v8}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 827
    new-instance v5, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    invoke-direct {v5, v7, v6}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;-><init>(Lcom/iflytek/viafly/smartschedule/entity/ScheduleConfig;Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .local v5, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    move-object v4, v5

    .line 828
    .end local v5    # "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    .restart local v4    # "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    goto/16 :goto_0
.end method

.method public handleBackgroundIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 617
    if-nez p1, :cond_1

    .line 618
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "handleBackgroundIntent intent is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.iflytek.cmcc.SMART_SCHEDULE_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 624
    :cond_2
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "handleBackgroundIntent action is not smartschedule"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_3
    const-string/jumbo v3, "com.iflytek.cmcc.SMART_SCHEDULE_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 630
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "handleBackgroundIntent controller name is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_4
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v1

    .line 635
    .local v1, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleBackgroundIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public varargs handleEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 709
    if-nez p1, :cond_1

    .line 710
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, "handleEventChanged event is empty"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 715
    :cond_2
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, "handleEventChanged controller map is empty"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 721
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 722
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 723
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    if-eqz v4, :cond_4

    .line 724
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 725
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 726
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->getRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v4, v5, :cond_4

    .line 727
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v4

    if-nez v4, :cond_4

    .line 728
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleSystemEvent(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 732
    .end local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 733
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleGrayControl(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "grayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 642
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, "handleGrayControl grayMap is empty"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 647
    :cond_2
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, "handleGrayControl controller map is empty"

    invoke-static {v4, v5}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 653
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 655
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    if-eqz v4, :cond_4

    .line 656
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 657
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_4

    .line 658
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleGrayControlChanged(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 662
    .end local v0    # "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SmartScheduleManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->initConfig()V

    .line 112
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->initRunData()V

    .line 114
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->initControllers()V

    .line 116
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->initSharedPerences()V

    .line 117
    return-void
.end method

.method public isForbiddenGray(Ljava/lang/String;)Z
    .locals 3
    .param p1, "controller"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v1

    .line 672
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 674
    .local v0, "mController":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v1

    goto :goto_0
.end method

.method public isRunningController(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "isRunningController name is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    :goto_0
    return v2

    .line 592
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 593
    :cond_2
    const-string/jumbo v3, "SmartScheduleManager"

    const-string/jumbo v4, "isRunningController controller cache is empty"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    .line 599
    invoke-virtual {v3, p1}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    .line 600
    .local v1, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v3

    sget-object v4, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v3, v4, :cond_0

    .line 601
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 602
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->isForbiddenGray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 603
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onGetGrayCtrlSuccess(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->handleGrayControl(Ljava/util/HashMap;)V

    .line 795
    return-void
.end method

.method public onSmartBottomClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 782
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v0

    .line 787
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleBottomBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public onSmartBottomLeftClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 771
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v0

    .line 776
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleBottomLeftBtn(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public onSmartContentClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 760
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v0

    .line 765
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleContent(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public onSmartEditClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 738
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v0

    .line 743
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleEdit(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public onSmartRemoveClick(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V
    .locals 2
    .param p1, "data"    # Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;

    .prologue
    .line 749
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->getRunningController(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    move-result-object v0

    .line 754
    .local v0, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->handleRemove(Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;)V

    goto :goto_0
.end method

.method public openSchedule(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)V
    .locals 8
    .param p1, "item"    # Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .prologue
    .line 434
    if-nez p1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "scheduleName":Ljava/lang/String;
    const-string/jumbo v5, "SmartScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSchedules | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v2

    .line 440
    .local v2, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->controllersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;

    .line 441
    .local v1, "controller":Lcom/iflytek/viafly/smartschedule/SmartScheduleController;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v5, v6, :cond_2

    .line 446
    const-string/jumbo v5, "SmartScheduleManager"

    const-string/jumbo v6, "getSchedules | schedule is opened"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 451
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    sget-object v5, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->open:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 452
    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getStatus()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v5

    sget-object v6, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->delete:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    if-ne v5, v6, :cond_3

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setCreatetime(J)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 455
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v3

    .line 456
    .local v3, "runDataItemNew":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    invoke-virtual {v1, v3}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->setRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 458
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->runDataManager:Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;

    invoke-virtual {v5, v3}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->saveRunDataItem(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V

    .line 459
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->setStatus(I)V

    .line 460
    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/SmartScheduleController;->open()V

    goto :goto_0
.end method

.method public startScheduleDetailActivity(Ljava/lang/String;)V
    .locals 3
    .param p1, "controller"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mScheduleItemsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .line 685
    .local v0, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    if-eqz v0, :cond_0

    .line 686
    const-string/jumbo v1, "SmartScheduleManager"

    const-string/jumbo v2, "updateScheduleState SmartScheduleItem is not null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/iflytek/viafly/smartschedule/ui/ActivityJumper;->startScheduleDetailActivity(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V

    goto :goto_0
.end method

.method public startScheduleDetailActivity(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "controller"    # Ljava/lang/String;
    .param p2, "needCover"    # Z

    .prologue
    .line 692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mScheduleItemsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .line 697
    .local v0, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    if-eqz v0, :cond_0

    .line 698
    const-string/jumbo v1, "SmartScheduleManager"

    const-string/jumbo v2, "updateScheduleState SmartScheduleItem is not null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->context:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/iflytek/viafly/smartschedule/ui/ActivityJumper;->startScheduleDetailActivity(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;Z)V

    goto :goto_0
.end method

.method public updateScheduleState(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "controller"    # Ljava/lang/String;
    .param p2, "isOpenOperation"    # Z

    .prologue
    .line 407
    const-string/jumbo v1, "SmartScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScheduleState controller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isOpenOperation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->mScheduleItemsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;

    .line 414
    .local v0, "item":Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;
    if-nez v0, :cond_1

    .line 415
    const-string/jumbo v1, "SmartScheduleManager"

    const-string/jumbo v2, "updateScheduleState SmartScheduleItem is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_1
    if-eqz p2, :cond_2

    .line 420
    const-string/jumbo v1, "SmartScheduleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScheduleState SmartScheduleItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->openSchedule(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleManager;->closeSchedule(Lcom/iflytek/viafly/smartschedule/entity/SmartScheduleItem;)V

    goto :goto_0
.end method
