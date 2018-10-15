.class public Lcom/iflytek/base/mms/SmsService;
.super Landroid/app/Service;
.source "SmsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/mms/SmsService$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/iflytek/base/mms/SmsService$a;

.field private c:Landroid/os/Looper;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    const-class v0, Lcom/iflytek/base/mms/SmsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 10

    .prologue
    .line 182
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const-string/jumbo v2, "searchUnReadSms"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    .line 189
    invoke-static {}, Lho;->b()J

    move-result-wide v2

    invoke-static {}, Lho;->a()J

    move-result-wide v4

    .line 190
    invoke-static {}, Lho;->c()J

    move-result-wide v6

    const/4 v8, 0x0

    .line 188
    invoke-static/range {v1 .. v8}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->queryUnreadMessageItem(Landroid/content/Context;JJJZ)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    .line 192
    .local v0, "item":Lcom/iflytek/base/mms/entities/SmsItem;
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->findLatestSms(Landroid/content/Context;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v9

    .line 193
    .local v9, "lastItem":Lcom/iflytek/base/mms/entities/SmsItem;
    iget-object v2, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lastestSmsId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    invoke-static {}, Lho;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",latestSmsTime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    invoke-static {}, Lho;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",latestsendTime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-static {}, Lho;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n latestsms "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v9, :cond_0

    .line 197
    invoke-virtual {v9}, Lcom/iflytek/base/mms/entities/SmsItem;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v2, v3, v1}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v0

    .line 197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    invoke-static {}, Lho;->b()J

    move-result-wide v2

    invoke-static {}, Lho;->a()J

    move-result-wide v4

    .line 227
    invoke-static {}, Lho;->c()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p1

    .line 226
    invoke-static/range {v0 .. v8}, Lcom/iflytek/common/adaptation/logcollect/SmsDBUtil;->getIncomingMessageItem(Landroid/content/Context;Landroid/net/Uri;JJJZ)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/base/mms/SmsService;Landroid/net/Uri;)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/mms/SmsService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/base/mms/SmsService;->a(Landroid/net/Uri;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/mms/SmsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/mms/SmsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/mms/SmsService;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/mms/SmsService;
    .param p1, "x1"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/base/mms/SmsService;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V

    return-void
.end method

.method private a(Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 8
    .param p1, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const-string/jumbo v1, "handleArrived | SmsLogCollecter.addReadCount"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->getInstance()Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/logcollect/SmsLogCollecter;->addReadCount()V

    .line 210
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getMsgId()J

    move-result-wide v4

    .line 211
    invoke-virtual {p1}, Lcom/iflytek/base/mms/entities/SmsItem;->getDateSent()J

    move-result-wide v6

    .line 210
    invoke-static/range {v1 .. v7}, Lho;->a(Landroid/content/Context;JJJ)V

    .line 213
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhp;->a(Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 80
    :cond_0
    iget-object v6, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const-string/jumbo v7, "action is null"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    :goto_0
    return v5

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "com.iflytek.cmcc.RECEIVE_SMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 85
    iget-object v7, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    invoke-static {v7}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.SMS_RECEIVE"

    invoke-virtual {v7, v8}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lagm;->d()Z

    move-result v7

    if-nez v7, :cond_3

    .line 95
    iget-object v6, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const-string/jumbo v7, "initIntent | incoming sms adapter flag is refuse"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_3
    iget-object v5, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    invoke-static {v5}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v5

    invoke-virtual {v5}, Lbbp;->d()V

    :cond_4
    :goto_1
    move v5, v6

    .line 137
    goto :goto_0

    .line 100
    :cond_5
    const-string/jumbo v7, "com.iflytek.cmcc.SMS_SEND_FAILED_NOTIFICATION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 101
    const-string/jumbo v5, "com.iflytek.cmcc.SMS_SEND_FAILED_COUNT"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, "failedCount":I
    const-string/jumbo v5, "com.iflytek.cmcc.SMS_SEND_FAILED_THREAD_ID"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 106
    .local v4, "threadId":Ljava/lang/Long;
    sget v5, Lof;->q:I

    invoke-static {p0, v5}, Laoz;->a(Landroid/content/Context;I)V

    .line 109
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v3, "failedIntent":Landroid/content/Intent;
    if-le v2, v6, :cond_6

    .line 111
    invoke-static {}, Lcom/iflytek/base/mms/SmsSendReceiver;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_6

    .line 112
    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :goto_2
    invoke-static {}, Lcom/iflytek/base/mms/SmsSendReceiver;->a()V

    .line 121
    const/high16 v5, 0x34000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/iflytek/base/mms/SmsService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v5, v6

    .line 129
    goto :goto_0

    .line 115
    :cond_6
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v5, "content://mms-sms/conversations/"

    .line 117
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 118
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 130
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "failedCount":I
    .end local v3    # "failedIntent":Landroid/content/Intent;
    .end local v4    # "threadId":Ljava/lang/Long;
    :cond_7
    const-string/jumbo v7, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    .line 131
    invoke-static {v7}, Lhq;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    :cond_8
    const-string/jumbo v5, "com.iflytek.cmcc.FILTER_SMS_FAILED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    iget-object v5, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const-string/jumbo v7, "initIntent | addSmsBroadcastCount"

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->addSmsBroadcastCount()V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/iflytek/base/mms/SmsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/mms/SmsService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/base/mms/SmsService;)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/mms/SmsService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/base/mms/SmsService;->a()Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    iput-object p0, p0, Lcom/iflytek/base/mms/SmsService;->d:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v0, "serviceThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/mms/SmsService;->c:Landroid/os/Looper;

    .line 60
    new-instance v1, Lcom/iflytek/base/mms/SmsService$a;

    iget-object v2, p0, Lcom/iflytek/base/mms/SmsService;->c:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/iflytek/base/mms/SmsService$a;-><init>(Lcom/iflytek/base/mms/SmsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/base/mms/SmsService;->b:Lcom/iflytek/base/mms/SmsService$a;

    .line 61
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/iflytek/base/mms/SmsService;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    const-string/jumbo v2, "action is null or action is not legal"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/base/mms/SmsService;->stopSelf()V

    .line 75
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStart ok | intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->b:Lcom/iflytek/base/mms/SmsService$a;

    invoke-virtual {v1}, Lcom/iflytek/base/mms/SmsService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 72
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/iflytek/base/mms/SmsService;->b:Lcom/iflytek/base/mms/SmsService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/mms/SmsService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
