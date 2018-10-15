.class public Lcom/migu/uem/comm/AgentService;
.super Landroid/app/Service;


# static fields
.field private static final CONFIG_TIME_DELAYED:Ljava/lang/Long;

.field private static final MSG_CONFIG_REQUEST:I = 0x2

.field private static final MSG_LAUNCH_UPLOAD:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_TIME_DELAYED:Ljava/lang/Long;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private newOcinfoId:Ljava/lang/String;

.field private retryUploadCount:I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/migu/uem/comm/AgentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/migu/uem/comm/AgentService;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/migu/uem/comm/AgentService;->CONFIG_TIME_DELAYED:Ljava/lang/Long;

    const-wide/32 v0, 0x493e0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/migu/uem/comm/AgentService;->UPLOAD_TIME_DELAYED:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/comm/AgentService;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/migu/uem/comm/AgentService;->retryUploadCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/migu/uem/comm/AgentService;->newOcinfoId:Ljava/lang/String;

    new-instance v0, Lcom/migu/uem/comm/c;

    invoke-direct {v0, p0}, Lcom/migu/uem/comm/c;-><init>(Lcom/migu/uem/comm/AgentService;)V

    iput-object v0, p0, Lcom/migu/uem/comm/AgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/migu/uem/comm/AgentService;)I
    .locals 1

    iget v0, p0, Lcom/migu/uem/comm/AgentService;->retryUploadCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/migu/uem/comm/AgentService;)I
    .locals 2

    iget v0, p0, Lcom/migu/uem/comm/AgentService;->retryUploadCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/migu/uem/comm/AgentService;->retryUploadCount:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/migu/uem/comm/AgentService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/migu/uem/comm/AgentService;->UPLOAD_TIME_DELAYED:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/migu/uem/comm/AgentService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/comm/AgentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/migu/uem/comm/AgentService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/comm/AgentService;->newOcinfoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/migu/uem/comm/AgentService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/comm/AgentService;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/migu/uem/comm/AgentService;)V
    .locals 0

    invoke-direct {p0}, Lcom/migu/uem/comm/AgentService;->initInfo()V

    return-void
.end method

.method private initInfo()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.migu.uem.noti_to_main"

    invoke-virtual {p0}, Lcom/migu/uem/comm/AgentService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "data_int"

    const/16 v3, 0xca

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/migu/uem/comm/AgentService;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "uploadFailedNumber_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "uploadFailedNumber_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "uploadFailedNumber_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastQuestTime_all"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastQuestTime_page"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastQuestTime_event"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    const-string/jumbo v0, " start service "

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/migu/uem/a/a/b;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/migu/uem/a/e;->a(Landroid/content/Context;)Lcom/migu/uem/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/e;->a()V

    invoke-static {}, Lcom/migu/uem/c/f;->a()Lcom/migu/uem/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/migu/uem/c/f;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/migu/uem/c/f;->a()Lcom/migu/uem/c/f;

    invoke-static {p0}, Lcom/migu/uem/c/f;->c(Landroid/content/Context;)V

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/migu/uem/comm/AgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/migu/uem/c/f;->a()Lcom/migu/uem/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/migu/uem/c/f;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/migu/uem/a/e;->a(Landroid/content/Context;)Lcom/migu/uem/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/migu/uem/a/e;->b(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0}, Lcom/migu/uem/a/c;->a(Landroid/content/Context;)Lcom/migu/uem/a/c;

    invoke-static {}, Lcom/migu/uem/statistics/aplist/a;->a()Lcom/migu/uem/statistics/aplist/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/migu/uem/comm/AgentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/aplist/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/migu/uem/statistics/aplist/a;->a()Lcom/migu/uem/statistics/aplist/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/migu/uem/comm/AgentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/aplist/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/migu/uem/statistics/aplist/a;->a()Lcom/migu/uem/statistics/aplist/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/migu/uem/comm/AgentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/statistics/aplist/a;->a(Landroid/content/Context;Z)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/migu/uem/c/f;->a()Lcom/migu/uem/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/migu/uem/c/f;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/migu/uem/a/e;->a(Landroid/content/Context;)Lcom/migu/uem/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/migu/uem/a/e;->a()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/migu/uem/comm/AgentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/migu/uem/comm/AgentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/migu/uem/comm/AgentService;->startTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/uem/comm/AgentService;->startTime:J

    :cond_0
    if-nez p1, :cond_2

    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/migu/uem/comm/AgentService;->startTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_deeplink"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_deeplink_session"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "appKey"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "UEM_CHANNEL"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ocinfo_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/uem/comm/AgentService;->newOcinfoId:Ljava/lang/String;

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v5, "keyValue"

    invoke-virtual {v1, v5, v4}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "UEM_CHANNEL"

    invoke-static {p0, v1}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_5

    :goto_1
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v5, "channelValue"

    invoke-virtual {v1, v5, v0}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/comm/AgentService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/uem/comm/AgentService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/migu/uem/comm/AgentService;->CONFIG_TIME_DELAYED:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Lcom/migu/uem/a/c/a;

    invoke-direct {v0, p0}, Lcom/migu/uem/a/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/migu/uem/a/c/a;->a()V

    invoke-static {}, Lcom/migu/uem/a/a;->a()Lcom/migu/uem/a/a;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/comm/d;

    invoke-direct {v1, p0}, Lcom/migu/uem/comm/d;-><init>(Lcom/migu/uem/comm/AgentService;)V

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/f;)Z

    invoke-static {p0}, Lcom/migu/uem/a/a/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "network not available ...\uff0c\u5ef6\u65f6\u53d1\u9001\u542f\u52a8\u6570\u636e"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/comm/AgentService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/migu/uem/comm/AgentService;->UPLOAD_TIME_DELAYED:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method
