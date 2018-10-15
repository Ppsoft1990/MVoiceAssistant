.class public Ltv;
.super Ljava/lang/Object;
.source "MutualActivateHandler.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# instance fields
.field private final a:J

.field private b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Ltv;->a:J

    .line 45
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 46
    iget-object v0, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "MutualActivateHandler"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 49
    :cond_0
    iput-object p1, p0, Ltv;->c:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private a(J)V
    .locals 5
    .param p1, "nextTime"    # J

    .prologue
    .line 92
    iget-object v2, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const/4 v3, 0x2

    .line 95
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "MutualActivateHandler"

    .line 96
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "MutualActivateHandler"

    .line 99
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 102
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 104
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_to"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Ltv;->c:Landroid/content/Context;

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89811"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 71
    const-string/jumbo v0, "MutualActivateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mutual activate time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lbaa;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Ltv;->e()V

    .line 73
    invoke-direct {p0}, Ltv;->f()V

    .line 74
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 77
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_MUTUAL_ACTIVATE_ALARM_TIME"

    invoke-virtual {v2, v3, v6, v7}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 78
    .local v0, "nextTime":J
    const-string/jumbo v2, "MutualActivateHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAlarm next alarm is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lbaa;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and current time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lbaa;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 82
    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    .line 83
    invoke-direct {p0}, Ltv;->c()V

    .line 85
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long v0, v2, v4

    .line 87
    :cond_1
    invoke-direct {p0, v0, v1}, Ltv;->a(J)V

    .line 88
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.IFLY_MUTUAL_ACTIVATE_ALARM_TIME"

    invoke-virtual {v2, v3, v0, v1}, Lil;->a(Ljava/lang/String;J)V

    .line 89
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 115
    iget-object v2, p0, Ltv;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 132
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v2, p0, Ltv;->c:Landroid/content/Context;

    invoke-static {v2}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v2

    const-string/jumbo v3, "com.ophone.reader.ui"

    invoke-virtual {v2, v3}, Lgq;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.ophone.reader.ui"

    const-string/jumbo v3, "com.ophone.reader.ui.DemonService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v2, "p_from"

    iget-object v3, p0, Ltv;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Ltv;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    const-string/jumbo v2, "reader"

    invoke-direct {p0, v2}, Ltv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MutualActivateHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "MutualActivateHandler"

    const-string/jumbo v3, "migu reader is not installed, it\'s package name is com.ophone.reader.ui"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 135
    iget-object v2, p0, Ltv;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v2, p0, Ltv;->c:Landroid/content/Context;

    invoke-static {v2}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v2

    const-string/jumbo v3, "com.newspaper.client"

    invoke-virtual {v2, v3}, Lgq;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.newspaper.client"

    const-string/jumbo v3, "com.eris.lib.msgpush.implbyself.MsgPushService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v2, "p_from"

    iget-object v3, p0, Ltv;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Ltv;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    const-string/jumbo v2, "news"

    invoke-direct {p0, v2}, Ltv;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MutualActivateHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "MutualActivateHandler"

    const-string/jumbo v3, "news paper is not installed, it\'s package name is com.newspaper.client"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Ltv;->c:Landroid/content/Context;

    invoke-static {v1}, Ltu;->a(Landroid/content/Context;)Ltu;

    move-result-object v1

    invoke-virtual {v1}, Ltu;->b()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "state":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Ltv;->c:Landroid/content/Context;

    invoke-static {v1}, Ltu;->a(Landroid/content/Context;)Ltu;

    move-result-object v1

    invoke-virtual {v1}, Ltu;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-direct {p0}, Ltv;->d()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Ltv;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 107
    const-string/jumbo v0, "MutualActivateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelAlarm current time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lbaa;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ltv;->b:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "MutualActivateHandler"

    const-string/jumbo v2, "MutualActivateHandler"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MUTUAL_ACTIVATE_ALARM_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 112
    :cond_0
    return-void
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 7
    .param p1, "l"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 156
    const-string/jumbo v4, "MutualActivateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " alarm trigger : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Lbaa;->d(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Ltv;->a()V

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 161
    .local v1, "currentHour":I
    const/16 v3, 0x8

    .line 162
    .local v3, "start":I
    const/16 v2, 0x16

    .line 163
    .local v2, "end":I
    const-string/jumbo v4, "MutualActivateHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " currentHour : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-ge v1, v2, :cond_0

    if-ge v1, v3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-direct {p0}, Ltv;->c()V

    goto :goto_0
.end method
