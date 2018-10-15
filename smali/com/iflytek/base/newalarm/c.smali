.class final Lcom/iflytek/base/newalarm/c;
.super Ljava/lang/Object;
.source "AlarmTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/newalarm/c$a;,
        Lcom/iflytek/base/newalarm/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/base/newalarm/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/base/newalarm/c$b;

.field private d:Lcom/iflytek/base/newalarm/b;

.field private e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/iflytek/base/newalarm/entities/AlarmData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/iflytek/base/newalarm/entities/AlarmData;",
            "Lcom/iflytek/base/newalarm/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/base/newalarm/c;->a:Lcom/iflytek/base/newalarm/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/iflytek/base/newalarm/c;->b:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/base/newalarm/b;->a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/b;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/newalarm/c;->d:Lcom/iflytek/base/newalarm/b;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/iflytek/base/newalarm/c;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/iflytek/base/newalarm/c;->a:Lcom/iflytek/base/newalarm/c;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/iflytek/base/newalarm/c;

    invoke-direct {v0, p0}, Lcom/iflytek/base/newalarm/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/base/newalarm/c;->a:Lcom/iflytek/base/newalarm/c;

    .line 46
    :cond_0
    sget-object v0, Lcom/iflytek/base/newalarm/c;->a:Lcom/iflytek/base/newalarm/c;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/newalarm/c;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/c;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/newalarm/c;Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/newalarm/c;
    .param p1, "x1"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/c;->e(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    return-void
.end method

.method static synthetic a(J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 20
    const-wide/16 v2, 0x0

    cmp-long v1, v2, p0

    if-nez v1, :cond_1

    const-string/jumbo v1, "AlarmTrigger"

    const-string/jumbo v2, "isTimeExpired triggerTime not legal"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "AlarmTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "trigger time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " current time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v2, p0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 3
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 124
    const-string/jumbo v1, "AlarmTrigger"

    const-string/jumbo v2, "unRegistReceiver"

    invoke-static {v1, v2}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/iflytek/base/newalarm/c;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 128
    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmTrigger"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private e(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 6
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    const-string/jumbo v2, "AlarmTrigger"

    const-string/jumbo v3, "handleTimeExpired alarmdata not legal"

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "realTriggerTime":J
    const-string/jumbo v2, "AlarmTrigger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleTimeExpired real triggerTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " alarm triggerTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->c:Lcom/iflytek/base/newalarm/c$b;

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->c:Lcom/iflytek/base/newalarm/c$b;

    invoke-interface {v2, v0, v1, p1}, Lcom/iflytek/base/newalarm/c$b;->a(JLcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->d:Lcom/iflytek/base/newalarm/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->d:Lcom/iflytek/base/newalarm/b;

    invoke-static {}, Lcom/iflytek/base/newalarm/b;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->d:Lcom/iflytek/base/newalarm/b;

    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/b;->a()V

    .line 168
    :cond_3
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/c;->d(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/iflytek/base/newalarm/c$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/base/newalarm/c$b;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/base/newalarm/c;->c:Lcom/iflytek/base/newalarm/c$b;

    .line 58
    return-void
.end method

.method protected final a(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 63
    :cond_0
    const-string/jumbo v0, "AlarmTrigger"

    const-string/jumbo v1, "handleWakeupIntent alarm data not legal"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->d:Lcom/iflytek/base/newalarm/b;

    invoke-static {}, Lcom/iflytek/base/newalarm/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->d:Lcom/iflytek/base/newalarm/b;

    const-class v1, Lcom/iflytek/base/newalarm/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/newalarm/b;->a(Ljava/lang/String;)V

    .line 72
    :cond_3
    const-string/jumbo v0, "AlarmTrigger"

    const-string/jumbo v1, "registReceiver"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/iflytek/base/newalarm/c$a;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/base/newalarm/c$a;-><init>(Lcom/iflytek/base/newalarm/c;Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->b:Landroid/content/Context;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/iflytek/base/newalarm/c;->b:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlarmTrigger"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/base/newalarm/util/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected final b(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const-string/jumbo v0, "AlarmTrigger"

    const-string/jumbo v1, "cancelAlarm alarm data not legal"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string/jumbo v0, "AlarmTrigger"

    const-string/jumbo v1, "cancelAlarm"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/c;->d(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method

.method protected final c(Lcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 4
    .param p1, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmTriggerTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const-string/jumbo v0, "AlarmTrigger"

    const-string/jumbo v1, "handleWakeupIntent alarm data not legal"

    invoke-static {v0, v1}, Lcom/iflytek/base/newalarm/util/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/iflytek/base/newalarm/c;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/base/newalarm/c;->e(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    goto :goto_0
.end method
