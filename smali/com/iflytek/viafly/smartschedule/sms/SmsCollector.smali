.class public Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;
.super Ljava/lang/Object;
.source "SmsCollector.java"

# interfaces
.implements Lhm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;
    }
.end annotation


# static fields
.field private static final SMS_COLLECTOR_CLOSE_TIME:Ljava/lang/String; = "train_schedule_close_time"

.field private static instance:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;


# instance fields
.field private final DAY_IN_MILLIS:I

.field private final DELAY_TIME:I

.field private final OPEN_CHANNELS:[Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private collecterTask:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private lock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "SmsCollector"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "16010023"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "16010003"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->OPEN_CHANNELS:[Ljava/lang/String;

    .line 36
    const v0, 0x5265c00

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->DAY_IN_MILLIS:I

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->lock:Ljava/lang/Object;

    .line 42
    const v0, 0xea60

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->DELAY_TIME:I

    .line 45
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->isOpenChannle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->hasCloseTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->saveCloseTime()V

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->resetCollecterTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;[Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;
    .param p1, "x1"    # [Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->updateSms([Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;)V

    return-void
.end method

.method private filterSMS(Lcom/iflytek/base/mms/entities/SmsItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    const/4 v0, 0x0

    .line 165
    if-nez p1, :cond_0

    .line 184
    :goto_0
    return v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string/jumbo v1, "SmsCollector"

    const-string/jumbo v2, "filterSMS | it\'s a mobile number!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    const-string/jumbo v1, "SmsCollector"

    const-string/jumbo v2, "filterSMS | sms body is empty!"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->instance:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->instance:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->instance:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->instance:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSmsArrived(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 6
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 76
    const-string/jumbo v0, "SmsCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSmsArrived | item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string/jumbo v0, "SmsCollector"

    const-string/jumbo v1, "handleSmsArrived | isForbiddenGray = true"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->removeSmsListener()V

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->filterSMS(Lcom/iflytek/base/mms/entities/SmsItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const-string/jumbo v0, "SmsCollector"

    const-string/jumbo v1, "handleSmsArrived | it\'s not collector"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->collecterTask:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

    if-nez v0, :cond_4

    .line 94
    new-instance v0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;-><init>(Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->collecterTask:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->handler:Landroid/os/Handler;

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->collecterTask:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->collecterTask:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;->addSmsItem(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 101
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasCloseTime()Z
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "train_schedule_close_time"

    invoke-virtual {v2, v3}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 137
    .local v0, "closeTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOpenChannle()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v4, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->context:Landroid/content/Context;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v1

    .line 115
    .local v1, "config":Lcom/iflytek/yd/business/AppConfig;
    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "channelId":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->OPEN_CHANNELS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 121
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    const/4 v3, 0x1

    goto :goto_0

    .line 120
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isOutOfDated()Z
    .locals 6

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 131
    .local v2, "currentTime":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "train_schedule_close_time"

    invoke-virtual {v4, v5}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 132
    .local v0, "closeTime":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private registerSmsListener()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhp;->a(Lhm;)V

    .line 158
    return-void
.end method

.method private removeSmsListener()V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhp;->b(Lhm;)V

    .line 162
    return-void
.end method

.method private resetCollecterTask()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->collecterTask:Lcom/iflytek/viafly/smartschedule/sms/SmsCollector$CollecterTask;

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveCloseTime()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x240c8400

    .line 142
    :try_start_0
    const-string/jumbo v8, "2015-10-10"

    const-string/jumbo v9, "yyyy-MM-dd"

    invoke-static {v8, v9}, Lbaa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 143
    .local v6, "date1":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 144
    .local v2, "closeTime1":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v4, v8, v12

    .line 145
    .local v4, "closeTime2":J
    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    move-wide v0, v4

    .line 146
    .local v0, "closeTime":J
    :goto_0
    const-string/jumbo v8, "SmsCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveCloseTime | closetime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, v10}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "train_schedule_close_time"

    invoke-virtual {v8, v9, v0, v1}, Lil;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "closeTime1":J
    .end local v4    # "closeTime2":J
    .end local v6    # "date1":Ljava/util/Date;
    :goto_1
    return-void

    .end local v0    # "closeTime":J
    .restart local v2    # "closeTime1":J
    .restart local v4    # "closeTime2":J
    .restart local v6    # "date1":Ljava/util/Date;
    :cond_0
    move-wide v0, v2

    .line 145
    goto :goto_0

    .line 148
    .end local v2    # "closeTime1":J
    .end local v4    # "closeTime2":J
    .end local v6    # "date1":Ljava/util/Date;
    :catch_0
    move-exception v7

    .line 149
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SmsCollector"

    const-string/jumbo v9, "saveCloseTime | error"

    invoke-static {v8, v9, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v0, v8, v12

    .line 151
    .restart local v0    # "closeTime":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v8

    const-string/jumbo v9, "train_schedule_close_time"

    invoke-virtual {v8, v9, v0, v1}, Lil;->a(Ljava/lang/String;J)V

    .line 152
    const-string/jumbo v8, "SmsCollector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveCloseTime | closetime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v10, v11}, Lbaa;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateSms([Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;)V
    .locals 5
    .param p1, "smsItems"    # [Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;

    .prologue
    .line 234
    const-string/jumbo v1, "SmsCollector"

    const-string/jumbo v2, "updateSms"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p1}, Lazz;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    return-void

    .line 239
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 240
    .local v0, "item":Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/iflytek/viafly/smartschedule/sms/SmsUploadHelper;->startUpload(Landroid/content/Context;Lcom/iflytek/viafly/smartschedule/sms/SmsCollectData;Lcom/iflytek/viafly/smartschedule/sms/SmsUploadListener;)J

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->registerSmsListener()V

    .line 68
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->isOpenChannle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->isOutOfDated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onArrived(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/sms/SmsCollector;->handleSmsArrived(Lcom/iflytek/base/mms/entities/SmsItem;)V

    .line 73
    return-void
.end method
