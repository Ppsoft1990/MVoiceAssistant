.class public Lbak;
.super Ljava/lang/Object;
.source "NotificationCheckUpdateManager.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# static fields
.field private static a:Lbak;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lbai;

.field private d:Lbaj;

.field private e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lbak;->a:Lbak;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lbak;->b:Landroid/content/Context;

    .line 49
    new-instance v0, Lbai;

    invoke-direct {v0, p1}, Lbai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbak;->c:Lbai;

    .line 50
    new-instance v0, Lbaj;

    invoke-direct {v0, p1}, Lbaj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbak;->d:Lbaj;

    .line 51
    iget-object v0, p0, Lbak;->c:Lbai;

    iget-object v1, p0, Lbak;->d:Lbaj;

    invoke-virtual {v0, v1}, Lbai;->a(Lbah;)V

    .line 52
    iget-object v0, p0, Lbak;->b:Landroid/content/Context;

    invoke-static {v0}, Lbal;->a(Landroid/content/Context;)Lbal;

    move-result-object v0

    iget-object v1, p0, Lbak;->c:Lbai;

    invoke-virtual {v0, v1}, Lbal;->a(Lbag;)V

    .line 54
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 55
    iget-object v0, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "NotificationCheckUpdateManager"

    invoke-interface {v0, v1, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbak;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lbak;->a:Lbak;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lbak;

    invoke-direct {v0, p0}, Lbak;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbak;->a:Lbak;

    .line 43
    :cond_0
    sget-object v0, Lbak;->a:Lbak;

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .param p1, "nextRequest"    # J

    .prologue
    .line 118
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NEXT_NOTIFICATIOM_REQUEST_CHECK_UPDATE_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lil;->a(Ljava/lang/String;J)V

    .line 119
    return-void
.end method

.method private b(J)V
    .locals 5
    .param p1, "datetime"    # J

    .prologue
    .line 159
    const-string/jumbo v1, "NotificationCheckUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNextAlarm() | set="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, p1, p2}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v2, "NotificationCheckUpdateManager"

    .line 163
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p1, p2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 165
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    const-string/jumbo v2, "10003"

    .line 166
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 167
    invoke-virtual {v1, v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 170
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v1, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v1, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 174
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    :cond_0
    return-void
.end method

.method private c(J)Z
    .locals 9
    .param p1, "dateTime"    # J

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 197
    .local v2, "currentTime":J
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    sub-long v4, p1, v2

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 200
    const/4 v1, 0x1

    .line 203
    :cond_0
    sub-long v4, p1, v2

    const-wide/32 v6, 0x2932e00

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 204
    const/4 v1, 0x1

    .line 206
    :cond_1
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAlarmDated() | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lbak;->b:Landroid/content/Context;

    invoke-static {v0}, Lbal;->a(Landroid/content/Context;)Lbal;

    move-result-object v0

    invoke-virtual {v0}, Lbal;->a()V

    .line 105
    return-void
.end method

.method private g()J
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NEXT_NOTIFICATIOM_REQUEST_CHECK_UPDATE_TIME"

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private h()J
    .locals 10

    .prologue
    const/4 v5, 0x5

    const/16 v6, 0xb

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 127
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x6

    .line 128
    .local v2, "hour":I
    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 129
    rem-int/lit8 v2, v2, 0x18

    .line 130
    const/4 v4, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "add_value":I
    if-ltz v2, :cond_2

    if-gt v2, v5, :cond_2

    .line 135
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "----->> next request range is 00:00~05:59"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    .line 148
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 149
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int/lit8 v4, v4, 0x6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v2, v4, v0

    .line 150
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 151
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNextRamdom() | next ramdom time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lbaa;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4

    .line 137
    .end local v3    # "random":Ljava/util/Random;
    :cond_2
    const/4 v4, 0x6

    if-lt v2, v4, :cond_3

    if-gt v2, v6, :cond_3

    .line 138
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "----->> next request range is 06:00~11:59"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x6

    goto :goto_0

    .line 140
    :cond_3
    const/16 v4, 0xc

    if-lt v2, v4, :cond_4

    const/16 v4, 0x11

    if-gt v2, v4, :cond_4

    .line 141
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "----->> next request range is 12:00~17:59"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v0, 0xc

    goto :goto_0

    .line 143
    :cond_4
    const/16 v4, 0x12

    if-lt v2, v4, :cond_1

    const/16 v4, 0x17

    if-gt v2, v4, :cond_1

    .line 144
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "----->> next request range is 18:00~23:59"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v0, 0x12

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lbak;->e:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "NotificationCheckUpdateManager"

    const-string/jumbo v2, "10003"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 64
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "handleAppStart()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lbak;->g()J

    move-result-wide v2

    .line 67
    .local v2, "requestTime":J
    invoke-direct {p0, v2, v3}, Lbak;->c(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "------->> read next request time is dated -> set next alarm"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lbak;->f()V

    .line 70
    invoke-direct {p0}, Lbak;->i()V

    .line 71
    invoke-direct {p0}, Lbak;->h()J

    move-result-wide v0

    .line 72
    .local v0, "nextRequest":J
    invoke-direct {p0, v0, v1}, Lbak;->a(J)V

    .line 73
    invoke-direct {p0, v0, v1}, Lbak;->b(J)V

    .line 82
    .end local v0    # "nextRequest":J
    :goto_0
    iget-object v4, p0, Lbak;->c:Lbai;

    invoke-virtual {v4}, Lbai;->g()V

    .line 83
    iget-object v4, p0, Lbak;->d:Lbaj;

    invoke-virtual {v4}, Lbaj;->a()V

    .line 84
    return-void

    .line 77
    :cond_0
    const-string/jumbo v4, "NotificationCheckUpdateManager"

    const-string/jumbo v5, "------->> register next alarm"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0}, Lbak;->i()V

    .line 79
    invoke-direct {p0, v2, v3}, Lbak;->b(J)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    iget-object v1, p0, Lbak;->c:Lbai;

    invoke-virtual {v1}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 215
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    iget-object v1, p0, Lbak;->d:Lbaj;

    invoke-virtual {v1, v0, p1}, Lbaj;->a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 90
    const-string/jumbo v2, "NotificationCheckUpdateManager"

    const-string/jumbo v3, "handleRequestAlarm()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lbak;->g()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lbak;->c(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-direct {p0}, Lbak;->h()J

    move-result-wide v0

    .line 93
    .local v0, "nextRequest":J
    invoke-direct {p0, v0, v1}, Lbak;->a(J)V

    .line 94
    invoke-direct {p0, v0, v1}, Lbak;->b(J)V

    .line 96
    .end local v0    # "nextRequest":J
    :cond_0
    invoke-direct {p0}, Lbak;->f()V

    .line 97
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lbak;->c:Lbai;

    invoke-virtual {v0}, Lbai;->i()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lbak;->c:Lbai;

    invoke-virtual {v0}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 231
    const-string/jumbo v1, "NotificationCheckUpdateManager"

    const-string/jumbo v2, "installVersion"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lbak;->c:Lbai;

    invoke-virtual {v1}, Lbai;->h()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 233
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-nez v0, :cond_0

    .line 234
    const-string/jumbo v1, "NotificationCheckUpdateManager"

    const-string/jumbo v2, "installVersion | updateInfo is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string/jumbo v1, "NotificationCheckUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installVersion | install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", filepath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lbak;->d:Lbaj;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbaj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 3
    .param p1, "realTriggerTime"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 244
    if-eqz p3, :cond_0

    .line 245
    const-string/jumbo v0, "NotificationCheckUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmTrigger alarmData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lbak;->b()V

    .line 248
    :cond_0
    return-void
.end method
