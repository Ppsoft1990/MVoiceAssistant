.class public Lavj;
.super Ljava/lang/Object;
.source "TriggerLogManager.java"


# static fields
.field private static d:Lavj;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private e:Ljava/lang/Object;

.field private final f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "TriggerLogManager"

    iput-object v0, p0, Lavj;->a:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "schedule_trigger_run_data.dat"

    iput-object v0, p0, Lavj;->c:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavj;->e:Ljava/lang/Object;

    .line 309
    const v0, 0x5265c00

    iput v0, p0, Lavj;->f:I

    .line 34
    iput-object p1, p0, Lavj;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Lavj;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lavj;->d:Lavj;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lavj;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lavj;->d:Lavj;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lavj;

    invoke-direct {v0, p0}, Lavj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lavj;->d:Lavj;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lavj;->d:Lavj;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .locals 7

    .prologue
    .line 49
    iget-object v4, p0, Lavj;->b:Landroid/content/Context;

    const-string/jumbo v5, "schedule_trigger_run_data.dat"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 50
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 67
    :goto_0
    return-object v3

    .line 54
    :cond_1
    const/4 v3, 0x0

    .line 55
    .local v3, "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    iget-object v5, p0, Lavj;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 56
    const/4 v2, 0x0

    .line 58
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lavj;->b:Landroid/content/Context;

    const-string/jumbo v6, "schedule_trigger_run_data.dat"

    invoke-virtual {v4, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 59
    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->parseFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 63
    :try_start_1
    invoke-static {v2}, Lazj;->a(Ljava/io/InputStream;)V

    .line 65
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "TriggerLogManager"

    const-string/jumbo v6, "readData | error"

    invoke-static {v4, v6, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :try_start_3
    invoke-static {v2}, Lazj;->a(Ljava/io/InputStream;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-static {v2}, Lazj;->a(Ljava/io/InputStream;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static synthetic a(Lavj;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lavj;

    .prologue
    .line 24
    iget-object v0, p0, Lavj;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)V
    .locals 3
    .param p1, "runData"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "TriggerLogManager"

    const-string/jumbo v1, "saveRunData"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string/jumbo v0, "TriggerLogManager"

    const-string/jumbo v1, "saveRunData | rundata is null, delete file"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lavj;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v0, p0, Lavj;->b:Landroid/content/Context;

    const-string/jumbo v2, "schedule_trigger_run_data.dat"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 76
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_0
    :try_start_4
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lavj$1;

    invoke-direct {v1, p0, p1}, Lavj$1;-><init>(Lavj;Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lavj;->a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)V

    .line 248
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    move-result-object v0

    .line 245
    .local v0, "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->addAllRundata(Ljava/lang/Iterable;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;

    .line 246
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData$Builder;->build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v1

    .line 247
    .local v1, "runDataNew":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    invoke-direct {p0, v1}, Lavj;->a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;)V

    goto :goto_0
.end method

.method static synthetic b(Lavj;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lavj;

    .prologue
    .line 24
    iget-object v0, p0, Lavj;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 6
    .param p1, "uuid"    # I

    .prologue
    const/4 v1, 0x0

    .line 107
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "TriggerLogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRunDataItem | uuid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 112
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lavj;->a()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v2

    .line 113
    .local v2, "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getRundataList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getRundataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .line 119
    .local v0, "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ne p1, v4, :cond_2

    .line 120
    move-object v1, v0

    .line 121
    goto :goto_0

    .line 107
    .end local v0    # "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .end local v1    # "result":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .end local v2    # "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;JLcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .param p2, "alarmtime"    # J
    .param p4, "alertType"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "TriggerLogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveData | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", alarttime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", alertType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-nez p1, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 183
    :goto_0
    monitor-exit p0

    return-object v1

    .line 173
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    .line 174
    .local v0, "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    invoke-static {p1}, Lavl;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setUuid(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 175
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setScheduleid(I)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 176
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setScheduletriggertime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 177
    invoke-virtual {v0, p2, p3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setAlarmtriggertime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 178
    invoke-virtual {v0, p4}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setAlerttype(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 179
    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->create:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setCreatetime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 181
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    .line 182
    .local v1, "runDataItem":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {p0, v1}, Lavj;->a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v0    # "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    .end local v1    # "runDataItem":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized a(ILcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;)V
    .locals 8
    .param p1, "scheduleId"    # I
    .param p2, "alertType"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "TriggerLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete | scheduleId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", alertType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lavj;->a()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v3

    .line 219
    .local v3, "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getRundataList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 223
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getRundataList()Ljava/util/List;

    move-result-object v4

    .line 224
    .local v4, "runDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .line 229
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getScheduleid()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getAlerttype()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$AlertType;

    move-result-object v5

    if-ne v5, p2, :cond_2

    .line 230
    const-string/jumbo v5, "TriggerLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete | uuid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", scheduleId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", alertType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 212
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    .end local v3    # "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .end local v4    # "runDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 235
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    .restart local v3    # "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .restart local v4    # "runDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    :cond_3
    :try_start_2
    invoke-direct {p0, v2}, Lavj;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)V
    .locals 7
    .param p1, "runDataItem"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "TriggerLogManager"

    const-string/jumbo v6, "saveRunDataItem"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I

    move-result v5

    if-nez v5, :cond_1

    .line 131
    :cond_0
    const-string/jumbo v5, "TriggerLogManager"

    const-string/jumbo v6, "saveRunDataItem | rundata item is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lavj;->a()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;

    move-result-object v3

    .line 136
    .local v3, "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    if-nez v3, :cond_5

    const/4 v4, 0x0

    .line 138
    .local v4, "runDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    invoke-static {v4}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .line 145
    .local v1, "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I

    move-result v5

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->getUuid()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 146
    const-string/jumbo v5, "TriggerLogManager"

    const-string/jumbo v6, "saveRunDataItem | remove same item"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 151
    .end local v1    # "item":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;
    :cond_4
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, v2}, Lavj;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    .end local v3    # "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    .end local v4    # "runDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 137
    .restart local v3    # "runData":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunData;->getRundataList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    .prologue
    .line 297
    monitor-enter p0

    if-nez p1, :cond_0

    .line 298
    :try_start_0
    const-string/jumbo v1, "TriggerLogManager"

    const-string/jumbo v2, "setScheduleFinished | item is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;->newBuilder(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    move-result-object v0

    .line 304
    .local v0, "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;->finish:Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$Status;)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->setFinishtime(J)Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;

    .line 306
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;->build()Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lavj;->a(Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    .end local v0    # "builder":Lcom/iflytek/viafly/schedule/framework/entities/TriggerLog$RunDataItem$Builder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
