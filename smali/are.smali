.class public Lare;
.super Ljava/lang/Object;
.source "PluginAutoInstallManager.java"

# interfaces
.implements Larh;
.implements Larn;
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# static fields
.field private static b:Lare;


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lari;

.field private e:Larf;

.field private f:Ljava/util/Random;

.field private g:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lare;->f:Ljava/util/Random;

    .line 50
    iput-object p1, p0, Lare;->c:Landroid/content/Context;

    .line 51
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iput-object v0, p0, Lare;->d:Lari;

    .line 52
    iget-object v0, p0, Lare;->d:Lari;

    const-string/jumbo v1, "PluginAutoInstallManager"

    invoke-virtual {v0, v1, p0}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 53
    new-instance v0, Larg;

    iget-object v1, p0, Lare;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Larg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lare;->e:Larf;

    .line 54
    iget-object v0, p0, Lare;->e:Larf;

    invoke-virtual {v0, p0}, Larf;->a(Larh;)V

    .line 55
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lare;->g:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 56
    iget-object v0, p0, Lare;->g:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lare;->g:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "PluginAutoInstallManager"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lare;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lare;->b:Lare;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lare;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lare;->b:Lare;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lare;

    invoke-direct {v0, p0}, Lare;-><init>(Landroid/content/Context;)V

    sput-object v0, Lare;->b:Lare;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lare;->b:Lare;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JI)V
    .locals 5
    .param p1, "datetime"    # J
    .param p3, "requestCode"    # I

    .prologue
    .line 334
    const-string/jumbo v2, "PluginAutoInstallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlarm() | set="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "| requestCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lare;->g:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "EXTRA_ACTION_CODE"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v3, "PluginAutoInstallManager"

    .line 342
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 343
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 345
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 346
    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 347
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 349
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lare;->g:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 356
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private a([J)Z
    .locals 10
    .param p1, "period"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 139
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 154
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 151
    .local v2, "nowTime":J
    aget-wide v6, p1, v4

    cmp-long v5, v2, v6

    if-ltz v5, :cond_2

    aget-wide v6, p1, v1

    cmp-long v5, v2, v6

    if-gtz v5, :cond_2

    move v0, v1

    .line 152
    .local v0, "isInPeriod":Z
    :goto_1
    const-string/jumbo v5, "PluginAutoInstallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isInPeriod() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|currTime= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |period= ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, p1, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, p1, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "isInPeriod":Z
    :cond_2
    move v0, v4

    .line 151
    goto :goto_1
.end method

.method private declared-synchronized b(I)Z
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeInstallingPluginType()| pluginType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 371
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/4 v1, 0x1

    .line 375
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 368
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized c()V
    .locals 9

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v0

    invoke-virtual {v0}, Lasg;->d()V

    .line 161
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v7, "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    iget-object v0, p0, Lare;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v7}, Lasb;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 163
    invoke-static {v7}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 164
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lase;

    .line 165
    .local v6, "info":Lase;
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6}, Lase;->b()I

    move-result v1

    .line 170
    .local v1, "pluginType":I
    invoke-virtual {v6}, Lase;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not autodownload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v1    # "pluginType":I
    .end local v6    # "info":Lase;
    .end local v7    # "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    .restart local v1    # "pluginType":I
    .restart local v6    # "info":Lase;
    .restart local v7    # "uninstalledPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lase;>;"
    :cond_1
    :try_start_1
    iget-object v0, p0, Lare;->d:Lari;

    invoke-virtual {v0, v1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 176
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is installing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {v1}, Lasb;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has download file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :cond_3
    sget-object v5, Lasc;->e:Lasc;

    .line 188
    .local v5, "mode":Lasc;
    invoke-static {v1}, Lasb;->b(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    invoke-virtual {v6}, Lase;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    sget-object v5, Lasc;->d:Lasc;

    .line 192
    :cond_4
    iget-object v0, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lare;->d:Lari;

    iget-object v2, p0, Lare;->c:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->auto_download:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 196
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoInstallPlugins()| addTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 200
    .end local v1    # "pluginType":I
    .end local v5    # "mode":Lasc;
    .end local v6    # "info":Lase;
    :cond_5
    const-string/jumbo v0, "PluginAutoInstallManager"

    const-string/jumbo v2, "autoInstallPlugins()| no Task to download"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 362
    .local v0, "hasInstallingPlugins":Z
    :goto_0
    const-string/jumbo v1, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasInstallingPlugins()| hasInstallingPlugins: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v0

    .line 361
    .end local v0    # "hasInstallingPlugins":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "SETTING_NEED_AUTO_DOWNLOAD_PLUGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public a(I)V
    .locals 10
    .param p1, "status"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 88
    invoke-static {}, Lard;->a()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4}, Lard;->a(Ljava/lang/String;)[J

    move-result-object v0

    .line 89
    .local v0, "alarmTime":[J
    if-eqz v0, :cond_0

    array-length v4, v0

    if-eq v4, v9, :cond_1

    .line 90
    :cond_0
    const-string/jumbo v4, "PluginAutoInstallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAutoInstallStatusChanged() alarmTime not legal, status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 93
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 135
    :cond_2
    :goto_1
    :pswitch_0
    const-string/jumbo v4, "PluginAutoInstallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onAutoInstallStatusChanged() | status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-direct {p0, v0}, Lare;->a([J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    aget-wide v6, v0, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-int v1, v4

    .line 99
    .local v1, "ramdomNumber":I
    if-eqz v1, :cond_3

    .line 100
    iget-object v4, p0, Lare;->f:Ljava/util/Random;

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 102
    :cond_3
    aget-wide v4, v0, v8

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 103
    .local v2, "dateTime":J
    invoke-direct {p0, v2, v3, v9}, Lare;->a(JI)V

    .line 104
    const-string/jumbo v4, "PluginAutoInstallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "install at time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v2, v3}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v1    # "ramdomNumber":I
    .end local v2    # "dateTime":J
    :pswitch_2
    invoke-direct {p0, v0}, Lare;->a([J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    const-string/jumbo v4, "PluginAutoInstallManager"

    const-string/jumbo v5, "onAutoInstallStatusChanged() | auto install plugins"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v4, p0, Lare;->e:Larf;

    invoke-virtual {v4}, Larf;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 118
    const-string/jumbo v4, "PluginAutoInstallManager"

    const-string/jumbo v5, "onAutoInstallStatusChanged() force download but strategy not effective"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :cond_4
    invoke-direct {p0}, Lare;->c()V

    goto/16 :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "initScene"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-direct {p0}, Lare;->e()Z

    move-result v1

    .line 74
    .local v1, "isNeedAutoDownload":Z
    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Lard;->a()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Lard;->a(Ljava/lang/String;)[J

    move-result-object v0

    .line 77
    .local v0, "alarmTime":[J
    if-eqz v0, :cond_0

    .line 78
    aget-wide v2, v0, v5

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lare;->a(JI)V

    .line 81
    :cond_0
    invoke-virtual {p0, v5}, Lare;->a(Z)V

    .line 83
    .end local v0    # "alarmTime":[J
    :cond_1
    const-string/jumbo v2, "PluginAutoInstallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init() | initScene= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isNeedAutoDownload= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isNeedAutoDownload"    # Z

    .prologue
    .line 380
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "SETTING_NEED_AUTO_DOWNLOAD_PLUGIN"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 381
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v0, "PluginAutoInstallManager"

    const-string/jumbo v1, "onStrategyUnEffected()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string/jumbo v0, "Strategy_Uneffected"

    invoke-virtual {p0, v0}, Lare;->b(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 5
    .param p1, "cancelReason"    # Ljava/lang/String;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelAutoInstallingPlugins()| reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lare;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    .local v0, "pluginType":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 211
    iget-object v2, p0, Lare;->d:Lari;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lari;->a(IZ)Z

    .line 212
    const-string/jumbo v2, "PluginAutoInstallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAutoInstallingPlugins()| removeTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    .end local v0    # "pluginType":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 214
    :cond_1
    :try_start_1
    iget-object v1, p0, Lare;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :goto_1
    monitor-exit p0

    return-void

    .line 216
    :cond_2
    :try_start_2
    const-string/jumbo v1, "PluginAutoInstallManager"

    const-string/jumbo v2, "cancelAutoInstallingPlugins()| no Task to remove"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .param p1, "enviromentChangedSrc"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEnviromentChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lare;->e:Larf;

    invoke-virtual {v0}, Larf;->b()V

    .line 223
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "realTrigger"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 389
    if-eqz p3, :cond_1

    const-string/jumbo v2, "PluginAutoInstallManager"

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    const-string/jumbo v2, "PluginAutoInstallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAlarmTrigger alarmData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 392
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 393
    const-string/jumbo v2, "EXTRA_ACTION_CODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, "status":I
    invoke-virtual {p0, v1}, Lare;->a(I)V

    .line 399
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string/jumbo v2, "PluginAutoInstallManager"

    const-string/jumbo v3, "onAlarmTrigger but alarm data is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadError() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |errorTip= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, p1}, Lare;->b(I)Z

    .line 324
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 310
    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v0

    invoke-virtual {v0}, Lasc;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    invoke-direct {p0, p1}, Lare;->b(I)Z

    .line 313
    const-string/jumbo v0, "PluginAutoInstallManager"

    const-string/jumbo v1, "onDownloadFinish() remove task"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadFinish() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 331
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 304
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadStart() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string/jumbo v1, "PluginAutoInstallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInstallError() | pluginType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |errorTip= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1}, Lare;->b(I)Z

    .line 262
    invoke-static {p1}, Lasb;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "pluginPath":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v1

    sget-object v2, Lasc;->d:Lasc;

    if-eq v1, v2, :cond_0

    .line 265
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v1

    sget-object v2, Lasc;->e:Lasc;

    if-ne v1, v2, :cond_1

    .line 266
    :cond_0
    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 268
    :cond_1
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 279
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallStart() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 272
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallSuccess() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, p1}, Lare;->b(I)Z

    .line 274
    return-void
.end method

.method public onUninstallError(II)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 253
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallError() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 247
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUninstallSuccess() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateError() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |errorTip= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, p1}, Lare;->b(I)Z

    .line 293
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 298
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateStart() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 285
    const-string/jumbo v0, "PluginAutoInstallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateSuccess() | pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method
