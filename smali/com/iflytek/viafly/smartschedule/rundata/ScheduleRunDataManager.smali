.class public Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;
.super Ljava/lang/Object;
.source "ScheduleRunDataManager.java"


# instance fields
.field private final RUN_DATA_FILE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "ScheduleRunDataManager"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->TAG:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "smart_schedule_run_data.dat"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->RUN_DATA_FILE:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->context:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->readRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .line 34
    return-void
.end method

.method private readRunData()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    .locals 6

    .prologue
    .line 37
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->context:Landroid/content/Context;

    const-string/jumbo v4, "smart_schedule_run_data.dat"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 38
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 58
    :goto_0
    return-object v3

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 44
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->context:Landroid/content/Context;

    const-string/jumbo v4, "smart_schedule_run_data.dat"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->parseFrom(Ljava/io/InputStream;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz v2, :cond_2

    .line 51
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ScheduleRunDataManager"

    const-string/jumbo v4, "readData | close inputstream error"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "ScheduleRunDataManager"

    const-string/jumbo v4, "readData | error"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    if-eqz v2, :cond_2

    .line 51
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 52
    :catch_2
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ScheduleRunDataManager"

    const-string/jumbo v4, "readData | close inputstream error"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 51
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 54
    :cond_3
    :goto_2
    throw v3

    .line 52
    :catch_3
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "ScheduleRunDataManager"

    const-string/jumbo v5, "readData | close inputstream error"

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public createDefaultRunData(Ljava/lang/String;I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultstatus"    # I

    .prologue
    .line 140
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 144
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    move-result-object v0

    .line 145
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setName(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setCreatetime(J)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 147
    invoke-static {p2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->valueOf(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    move-result-object v2

    .line 148
    .local v2, "status":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;
    if-nez v2, :cond_1

    .line 149
    sget-object v2, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;->initial:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;

    .line 151
    :cond_1
    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setStatus(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$Status;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 152
    sget-object v3, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->windows:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->setShowlocation(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;

    .line 153
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v1

    .line 154
    .local v1, "runDataItem":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    goto :goto_0
.end method

.method public getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 87
    const-string/jumbo v2, "ScheduleRunDataManager"

    const-string/jumbo v3, "saveRunDataItem"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getRundataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getRundataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .line 99
    .local v0, "item":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    move-object v1, v0

    .line 101
    goto :goto_0
.end method

.method public saveRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)V
    .locals 5
    .param p1, "runData"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 63
    const-string/jumbo v2, "ScheduleRunDataManager"

    const-string/jumbo v3, "saveRunData | rundata is null, delete file"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "smart_schedule_run_data.dat"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 70
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "smart_schedule_run_data.dat"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v1, :cond_0

    .line 77
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ScheduleRunDataManager"

    const-string/jumbo v3, "readData | close outputStream error"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "ScheduleRunDataManager"

    const-string/jumbo v3, "readData | close inputstream error"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v1, :cond_0

    .line 77
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ScheduleRunDataManager"

    const-string/jumbo v3, "readData | close outputStream error"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 77
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 80
    :cond_2
    :goto_1
    throw v2

    .line 78
    :catch_3
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ScheduleRunDataManager"

    const-string/jumbo v4, "readData | close outputStream error"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public saveRunDataItem(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)V
    .locals 6
    .param p1, "runDataItem"    # Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    .prologue
    .line 109
    const-string/jumbo v4, "ScheduleRunDataManager"

    const-string/jumbo v5, "saveRunDataItem"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    const-string/jumbo v4, "ScheduleRunDataManager"

    const-string/jumbo v5, "saveRunDataItem | rundata item is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->getRunDataItem(Ljava/lang/String;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;

    move-result-object v2

    .line 116
    .local v2, "result":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
    if-nez v2, :cond_3

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-static {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    .line 123
    :goto_1
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->addRundata(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    .line 136
    :goto_2
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->saveRunData(Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    goto :goto_1

    .line 126
    .end local v0    # "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    :cond_3
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    invoke-virtual {v4}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->getRundataList()Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "runDataItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;>;"
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;->newBuilder()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    move-result-object v0

    .line 132
    .restart local v0    # "builder":Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->addAllRundata(Ljava/lang/Iterable;)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;

    .line 133
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData$Builder;->build()Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/smartschedule/rundata/ScheduleRunDataManager;->runData:Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunData;

    goto :goto_2
.end method
