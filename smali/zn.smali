.class public Lzn;
.super Ljava/lang/Object;
.source "CAFNotificationManager.java"


# static fields
.field private static volatile n:Lzn;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/RemoteViews;

.field private c:Landroid/app/Notification;

.field private d:Ljava/text/SimpleDateFormat;

.field private e:Ljava/text/SimpleDateFormat;

.field private f:Landroid/app/NotificationManager;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Ljava/util/Timer;

.field private i:I

.field private j:Z

.field private volatile k:Z

.field private l:I

.field private m:Lcom/iflytek/base/newalarm/interfaces/IAlarm;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lzn;->i:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzn;->j:Z

    .line 92
    const-string/jumbo v0, "caf.toolbar"

    invoke-static {v0}, Log;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzn;->l:I

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lzn;->d:Ljava/text/SimpleDateFormat;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lzn;->e:Ljava/text/SimpleDateFormat;

    .line 95
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzn;->a:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lzn;->a:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lzn;->f:Landroid/app/NotificationManager;

    .line 98
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v0

    iput-object v0, p0, Lzn;->m:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 99
    iget-object v0, p0, Lzn;->m:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "CAFNotificationManager"

    new-instance v2, Lzn$1;

    invoke-direct {v2, p0}, Lzn$1;-><init>(Lzn;)V

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 106
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v1, 0x7f0b04a9

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v1, 0x7f0b04aa

    const-string/jumbo v2, "-- \u5143"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v1, 0x7f0b04ac

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v1, 0x7f0b04ad

    const-string/jumbo v2, "-- M"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method

.method private C()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 280
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 281
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 282
    .local v4, "year":I
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 283
    .local v3, "month":I
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 284
    .local v2, "day":I
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 285
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 286
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 287
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 288
    const-string/jumbo v5, "CAFNotificationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wake up time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v5, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v6, "UPDATE_TIME_STATUS_ALARM_ID"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v5

    const-string/jumbo v6, "CAFNotificationManager"

    invoke-virtual {v5, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v6}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 290
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v5, p0, Lzn;->m:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v5, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 291
    const-string/jumbo v5, "CAFNotificationManager"

    const-string/jumbo v6, "start the alarm."

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private declared-synchronized D()V
    .locals 1

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzn;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lzn;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lzn;->h:Ljava/util/Timer;

    .line 413
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzn;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private E()V
    .locals 4

    .prologue
    .line 459
    iget-object v1, p0, Lzn;->c:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lzn;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lzn;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    :try_start_0
    iget-object v1, p0, Lzn;->f:Landroid/app/NotificationManager;

    iget v2, p0, Lzn;->l:I

    iget-object v3, p0, Lzn;->c:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lzn;I)I
    .locals 0
    .param p0, "x0"    # Lzn;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lzn;->i:I

    return p1
.end method

.method static synthetic a(Lzn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lzn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lzn;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lzn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lzn;

    .prologue
    .line 54
    iget-object v0, p0, Lzn;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lzn;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lzn;->n:Lzn;

    if-nez v0, :cond_1

    .line 111
    const-class v1, Lzn;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lzn;->n:Lzn;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lzn;

    invoke-direct {v0}, Lzn;-><init>()V

    sput-object v0, Lzn;->n:Lzn;

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    sget-object v0, Lzn;->n:Lzn;

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v1, 0x7f0b04b2

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .param p1, "callfees"    # Ljava/lang/String;
    .param p2, "flow"    # Ljava/lang/String;
    .param p3, "updateTime"    # J

    .prologue
    .line 214
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_0

    .line 215
    const-string/jumbo v6, "CAFNotificationManager"

    const-string/jumbo v7, "inflate caf data to notification."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 220
    :try_start_0
    const-string/jumbo v6, "\u4e07\u5143"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 221
    const/4 v4, 0x2

    .line 222
    .local v4, "offset":I
    const-string/jumbo v5, "\u4e07\u5143"

    .line 230
    .local v5, "unit":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "numberPart":Ljava/lang/String;
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04a9

    invoke-virtual {v6, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04aa

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 234
    .local v2, "number":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_3

    .line 235
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04ab

    const-string/jumbo v8, "\u70b9\u51fb\u5145\u8bdd\u8d39"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "numberPart":Ljava/lang/String;
    .end local v2    # "number":D
    .end local v4    # "offset":I
    .end local v5    # "unit":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_6

    .line 249
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 250
    .restart local v1    # "numberPart":Ljava/lang/String;
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04ac

    invoke-virtual {v6, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 251
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04ad

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 252
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 253
    .restart local v2    # "number":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_5

    .line 254
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04ae

    const-string/jumbo v8, "\u70b9\u51fb\u8d2d\u6d41\u91cf"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    .end local v1    # "numberPart":Ljava/lang/String;
    .end local v2    # "number":D
    :goto_2
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04b2

    invoke-virtual {p0, p3, p4}, Lzn;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 268
    iget-object v7, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v8, 0x7f0b04b1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ic_notification_refresh_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v6, p0, Lzn;->j:Z

    if-eqz v6, :cond_7

    const-string/jumbo v6, "white"

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lzn;->b(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 270
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-eqz v6, :cond_0

    .line 271
    invoke-direct {p0}, Lzn;->C()V

    .line 274
    :cond_0
    return-void

    .line 223
    :cond_1
    :try_start_2
    const-string/jumbo v6, "\u4ebf\u5143"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    const/4 v4, 0x2

    .line 225
    .restart local v4    # "offset":I
    const-string/jumbo v5, "\u4ebf\u5143"

    .restart local v5    # "unit":Ljava/lang/String;
    goto/16 :goto_0

    .line 227
    .end local v4    # "offset":I
    .end local v5    # "unit":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    .line 228
    .restart local v4    # "offset":I
    const-string/jumbo v5, "\u5143"

    .restart local v5    # "unit":Ljava/lang/String;
    goto/16 :goto_0

    .line 237
    .restart local v1    # "numberPart":Ljava/lang/String;
    .restart local v2    # "number":D
    :cond_3
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04ab

    const-string/jumbo v8, "\u5269\u4f59\u8bdd\u8d39"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 239
    .end local v1    # "numberPart":Ljava/lang/String;
    .end local v2    # "number":D
    .end local v4    # "offset":I
    .end local v5    # "unit":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CAFNotificationManager"

    const-string/jumbo v7, "the callfees data is invalid, so puzzled."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-direct {p0}, Lzn;->A()V

    goto/16 :goto_1

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v6, "CAFNotificationManager"

    const-string/jumbo v7, "the callfees data is invalid, set the callfees area to --\u5143."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lzn;->A()V

    goto/16 :goto_1

    .line 256
    .restart local v1    # "numberPart":Ljava/lang/String;
    .restart local v2    # "number":D
    :cond_5
    :try_start_3
    iget-object v6, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v7, 0x7f0b04ae

    const-string/jumbo v8, "\u5269\u4f59\u6d41\u91cf"

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 258
    .end local v1    # "numberPart":Ljava/lang/String;
    .end local v2    # "number":D
    :catch_1
    move-exception v0

    .line 259
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CAFNotificationManager"

    const-string/jumbo v7, "the flow data is invalid, so puzzled."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lzn;->B()V

    goto/16 :goto_2

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v6, "CAFNotificationManager"

    const-string/jumbo v7, "the flow data is invalid, set the flow area to --M."

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lzn;->B()V

    goto/16 :goto_2

    .line 268
    :cond_7
    const-string/jumbo v6, "dark"

    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lzn;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    iget-object v2, p0, Lzn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lzn;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Lzn;

    .prologue
    .line 54
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic c(Lzn;)Z
    .locals 1
    .param p0, "x0"    # Lzn;

    .prologue
    .line 54
    iget-boolean v0, p0, Lzn;->j:Z

    return v0
.end method

.method static synthetic d(Lzn;)I
    .locals 1
    .param p0, "x0"    # Lzn;

    .prologue
    .line 54
    iget v0, p0, Lzn;->i:I

    return v0
.end method

.method static synthetic e(Lzn;)V
    .locals 0
    .param p0, "x0"    # Lzn;

    .prologue
    .line 54
    invoke-direct {p0}, Lzn;->E()V

    return-void
.end method

.method static synthetic f(Lzn;)I
    .locals 2
    .param p0, "x0"    # Lzn;

    .prologue
    .line 54
    iget v0, p0, Lzn;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lzn;->i:I

    return v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "set the caf notification to empty, like --\u5143     --M"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lzn;->A()V

    .line 174
    invoke-direct {p0}, Lzn;->B()V

    .line 175
    invoke-direct {p0}, Lzn;->z()V

    .line 176
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v0

    invoke-virtual {v0}, Lzp;->h()V

    .line 177
    const-string/jumbo v0, "\u5c1a\u672a\u66f4\u65b0"

    invoke-direct {p0, v0}, Lzn;->a(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method private z()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v2, 0x7f0b04b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ic_notification_refresh_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lzn;->j:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "white"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzn;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 184
    :cond_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v0, "dark"

    goto :goto_0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 23
    .param p1, "updateTime"    # J

    .prologue
    .line 318
    const-wide/16 v18, -0x1

    cmp-long v18, p1, v18

    if-nez v18, :cond_0

    .line 319
    const-string/jumbo v18, "\u66f4\u65b0\u5931\u8d25"

    .line 360
    :goto_0
    return-object v18

    .line 322
    :cond_0
    const/4 v12, 0x0

    .line 323
    .local v12, "prefix":Ljava/lang/String;
    const/4 v13, 0x0

    .line 324
    .local v13, "suffix":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 325
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 326
    .local v6, "currentTimeInMillis":J
    cmp-long v18, v6, p1

    if-lez v18, :cond_4

    .line 327
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 328
    .local v4, "currentDay":I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 329
    .local v8, "currentYear":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v5, v18, 0x1

    .line 330
    .local v5, "currentMonth":I
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 331
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 332
    .local v9, "day":I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 333
    .local v17, "year":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v11, v18, 0x1

    .line 335
    .local v11, "month":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lzn;->e:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 336
    .local v3, "current":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzn;->e:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 337
    .local v16, "update":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/32 v20, 0x5265c00

    div-long v14, v18, v20

    .line 338
    .local v14, "temp":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-eqz v18, :cond_3

    .line 339
    const-wide/16 v18, 0x1

    cmp-long v18, v14, v18

    if-nez v18, :cond_2

    .line 340
    const-string/jumbo v12, "\u6628\u5929"

    .line 341
    const-string/jumbo v13, "\u66f4\u65b0"
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v3    # "current":Ljava/util/Date;
    .end local v4    # "currentDay":I
    .end local v5    # "currentMonth":I
    .end local v8    # "currentYear":I
    .end local v9    # "day":I
    .end local v11    # "month":I
    .end local v14    # "temp":J
    .end local v16    # "update":Ljava/util/Date;
    .end local v17    # "year":I
    :goto_1
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    if-nez v13, :cond_1

    .line 357
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lzn;->d:Ljava/text/SimpleDateFormat;

    move-object/from16 v19, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u66f4\u65b0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 359
    :cond_1
    const-string/jumbo v18, "CAFNotificationManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the update time is  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    .line 343
    .restart local v3    # "current":Ljava/util/Date;
    .restart local v4    # "currentDay":I
    .restart local v5    # "currentMonth":I
    .restart local v8    # "currentYear":I
    .restart local v9    # "day":I
    .restart local v11    # "month":I
    .restart local v14    # "temp":J
    .restart local v16    # "update":Ljava/util/Date;
    .restart local v17    # "year":I
    :cond_2
    :try_start_1
    const-string/jumbo v12, "\u51e0\u5929\u524d"

    .line 344
    const-string/jumbo v13, "\u66f4\u65b0"

    goto :goto_1

    .line 347
    :cond_3
    const-string/jumbo v12, ""
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 349
    .end local v3    # "current":Ljava/util/Date;
    .end local v14    # "temp":J
    .end local v16    # "update":Ljava/util/Date;
    :catch_0
    move-exception v10

    .line 350
    .local v10, "e":Ljava/text/ParseException;
    const-string/jumbo v18, "CAFNotificationManager"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 353
    .end local v4    # "currentDay":I
    .end local v5    # "currentMonth":I
    .end local v8    # "currentYear":I
    .end local v9    # "day":I
    .end local v10    # "e":Ljava/text/ParseException;
    .end local v11    # "month":I
    .end local v17    # "year":I
    :cond_4
    const-string/jumbo v12, ""

    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "callfees"    # Ljava/lang/String;
    .param p2, "flow"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "updateTime"    # J

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "the newer caf data coming."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lzn;->D()V

    .line 370
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0}, Lth;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "user has logout, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lzn;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    :cond_1
    :try_start_1
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v0

    iget-object v6, p0, Lzn;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lzp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;)V

    .line 377
    invoke-virtual {p0}, Lzn;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzn;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, p1, p2, p4, p5}, Lzn;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 379
    invoke-direct {p0}, Lzn;->E()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 571
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_CAF_NOTIFICATION_SWITCH"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 572
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lzn;->c:Landroid/app/Notification;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 125
    const-string/jumbo v3, "CAFNotificationManager"

    const-string/jumbo v4, "init caf notification."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lzn;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0300b4

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    .line 135
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.iflytek.viafly.cafnotification.ACTION_UPDATE_CAF_DATA_MANUAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "updateIntent":Landroid/content/Intent;
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04b0

    iget-object v5, p0, Lzn;->a:Landroid/content/Context;

    invoke-static {v5, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lzn;->a:Landroid/content/Context;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "detailIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.iflytek.viafly.cafnotification.ACTION_GO_TO_DETAIL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v3, 0x34000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04a8

    iget-object v5, p0, Lzn;->a:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 145
    invoke-virtual {p0}, Lzn;->v()Z

    move-result v3

    iput-boolean v3, p0, Lzn;->j:Z

    .line 147
    iget-boolean v3, p0, Lzn;->j:Z

    if-eqz v3, :cond_0

    .line 148
    const-string/jumbo v3, "CAFNotificationManager"

    const-string/jumbo v4, "the notification bar is dark."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const v1, 0x7f0200f4

    .line 152
    .local v1, "drawable":I
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04b2

    const-string/jumbo v5, "#d6d6d6"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 155
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04a9

    const-string/jumbo v5, "#d6d6d6"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 156
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04aa

    const-string/jumbo v5, "#d6d6d6"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 157
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04ac

    const-string/jumbo v5, "#d6d6d6"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 158
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04ad

    const-string/jumbo v5, "#d6d6d6"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 159
    iget-object v3, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04af

    const-string/jumbo v5, "setBackgroundColor"

    const/16 v6, 0x4d

    invoke-static {v6, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 164
    :goto_0
    new-instance v3, Landroid/app/Notification;

    const-string/jumbo v4, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lzn;->c:Landroid/app/Notification;

    .line 165
    iget-object v3, p0, Lzn;->c:Landroid/app/Notification;

    iget-object v4, p0, Lzn;->b:Landroid/widget/RemoteViews;

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 166
    return-void

    .line 161
    .end local v1    # "drawable":I
    :cond_0
    const v1, 0x7f0200f5

    .line 162
    .restart local v1    # "drawable":I
    const-string/jumbo v3, "CAFNotificationManager"

    const-string/jumbo v4, "the notification bar is white."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 298
    iget-object v1, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v4, "the update time in caf notification has updated."

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v1

    invoke-virtual {v1}, Lzp;->g()J

    move-result-wide v2

    .line 302
    .local v2, "updateTime":J
    iget-object v1, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v4, 0x7f0b04b2

    invoke-virtual {p0, v2, v3}, Lzn;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 303
    invoke-direct {p0}, Lzn;->E()V

    .line 304
    invoke-direct {p0}, Lzn;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v2    # "updateTime":J
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v4, ""

    invoke-static {v1, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 6

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzn;->k:Z

    .line 389
    iget-object v0, p0, Lzn;->h:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lzn;->h:Ljava/util/Timer;

    .line 392
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lzn;->i:I

    .line 393
    iget-object v0, p0, Lzn;->h:Ljava/util/Timer;

    new-instance v1, Lzn$2;

    invoke-direct {v1, p0}, Lzn$2;-><init>(Lzn;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_1
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lzn;->k:Z

    return v0
.end method

.method public declared-synchronized g()V
    .locals 4

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lzn;->D()V

    .line 425
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v1, 0x7f0b04b2

    const-string/jumbo v2, "\u66f4\u65b0\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lzn;->b:Landroid/widget/RemoteViews;

    const v2, 0x7f0b04b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ic_notification_refresh_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lzn;->j:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "white"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzn;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 428
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lzp;->a(J)V

    .line 429
    iget-object v0, p0, Lzn;->m:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v2, "UPDATE_TIME_STATUS_ALARM_ID"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->cancelAlarm(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "update fail, cancel the alarm."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct {p0}, Lzn;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_0
    monitor-exit p0

    return-void

    .line 427
    :cond_1
    :try_start_1
    const-string/jumbo v0, "dark"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lzn;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzn;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzn;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lzn;->l()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v0

    invoke-virtual {v0}, Lzp;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/app/Notification;
    .locals 9

    .prologue
    .line 527
    iget-object v5, p0, Lzn;->c:Landroid/app/Notification;

    if-nez v5, :cond_0

    .line 528
    invoke-virtual {p0}, Lzn;->c()V

    .line 531
    :cond_0
    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    iget-object v8, p0, Lzn;->a:Landroid/content/Context;

    invoke-static {v5, v8}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "currentImsi":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 533
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v5

    invoke-virtual {v5}, Lzp;->e()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "cacheImsi":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 535
    const-string/jumbo v5, "CAFNotificationManager"

    const-string/jumbo v8, "load caf cache."

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v5

    invoke-virtual {v5}, Lzp;->c()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "callfees":Ljava/lang/String;
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v5

    invoke-virtual {v5}, Lzp;->d()Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, "flow":Ljava/lang/String;
    invoke-static {}, Lzp;->a()Lzp;

    move-result-object v5

    invoke-virtual {v5}, Lzp;->g()J

    move-result-wide v6

    .line 540
    .local v6, "updateTime":J
    invoke-direct {p0, v1, v3, v6, v7}, Lzn;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 553
    .end local v0    # "cacheImsi":Ljava/lang/String;
    .end local v1    # "callfees":Ljava/lang/String;
    .end local v3    # "flow":Ljava/lang/String;
    .end local v6    # "updateTime":J
    :goto_0
    iget-object v5, p0, Lzn;->c:Landroid/app/Notification;

    return-object v5

    .line 542
    .restart local v0    # "cacheImsi":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lzn;->y()V

    .line 544
    const-string/jumbo v5, "CAFNotificationManager"

    const-string/jumbo v8, "there is no caf cache for this imsi, request caf data from network."

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.iflytek.viafly.cafnotification.ACTION_UPDATE_CAF_DATA_MANUAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "is_manual"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 547
    iget-object v5, p0, Lzn;->a:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 550
    .end local v0    # "cacheImsi":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v5, "CAFNotificationManager"

    const-string/jumbo v8, "current imsi is null, so puzzled."

    invoke-static {v5, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public l()Z
    .locals 3

    .prologue
    .line 560
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_CAF_NOTIFICATION_SWITCH"

    invoke-virtual {p0}, Lzn;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_IS_ENABLE_QUICK_NOTIFICATION_TOOL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Laqs;->a()Laqs;

    move-result-object v0

    invoke-virtual {v0}, Laqs;->b()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 4

    .prologue
    .line 585
    invoke-static {}, Lhl;->k()I

    move-result v0

    .line 586
    .local v0, "osVersion":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 587
    const-string/jumbo v1, "CAFNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the os version code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", support custom notification."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v1, 0x1

    .line 591
    :goto_0
    return v1

    .line 590
    :cond_0
    const-string/jumbo v1, "CAFNotificationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the os version code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", don\'t support custom notification."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 721
    if-nez p1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v2, "Notification get login change event"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    invoke-direct {p0}, Lzn;->y()V

    .line 734
    :cond_2
    invoke-virtual {p0}, Lzn;->t()V

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lmz;->l()Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lzn;->l:I

    return v0
.end method

.method public r()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 653
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "getCafNotification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Lzn;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzn;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "showCafNotification"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lzn;->k()Landroid/app/Notification;

    move-result-object v0

    .line 664
    :goto_0
    return-object v0

    .line 660
    :cond_0
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "close Notifiation"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()V
    .locals 3

    .prologue
    .line 668
    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v2, "close notification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lzn;->a:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 670
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lzn;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 673
    :cond_0
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    .line 676
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzn;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    iget-object v1, p0, Lzn;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 679
    return-void
.end method

.method public u()V
    .locals 3

    .prologue
    .line 682
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzn;->a:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/mutiprocess/ProcessCommunicateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 683
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_CLOSE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Lzn;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 685
    return-void
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lzn;->a:Landroid/content/Context;

    invoke-static {v0}, Loh;->a(Landroid/content/Context;)Loh;

    move-result-object v0

    invoke-virtual {v0}, Loh;->f()Z

    move-result v0

    return v0
.end method

.method public w()V
    .locals 4

    .prologue
    .line 700
    const-string/jumbo v1, "CAFNotificationManager"

    const-string/jumbo v2, "handle imsi changed."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lzn;->g:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 702
    new-instance v1, Lzn$3;

    invoke-direct {v1, p0}, Lzn$3;-><init>(Lzn;)V

    iput-object v1, p0, Lzn;->g:Landroid/content/BroadcastReceiver;

    .line 709
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 710
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lzn;->a:Landroid/content/Context;

    iget-object v3, p0, Lzn;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 713
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 716
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lzn;->a:Landroid/content/Context;

    iget-object v2, p0, Lzn;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 717
    return-void
.end method
