.class public Lats;
.super Ljava/lang/Object;
.source "NoticeActionHelper.java"


# static fields
.field private static b:Lats;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lats$1;

    invoke-direct {v0, p0}, Lats$1;-><init>(Lats;)V

    iput-object v0, p0, Lats;->c:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lats;->a:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lats;->a()V

    .line 40
    return-void
.end method

.method static synthetic a(Lats;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lats;

    .prologue
    .line 29
    iget-object v0, p0, Lats;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lats;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lats;->b:Lats;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lats;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lats;->b:Lats;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lats;

    invoke-direct {v0, p0}, Lats;-><init>(Landroid/content/Context;)V

    sput-object v0, Lats;->b:Lats;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lats;->b:Lats;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "3001"

    .line 57
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "3007"

    .line 59
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "3011"

    .line 61
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "3014"

    .line 63
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "3015"

    .line 65
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "3016"

    .line 67
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "3013"

    .line 69
    invoke-static {v1}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lats;->a:Landroid/content/Context;

    iget-object v3, p0, Lats;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lats;Ljava/io/Serializable;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lats;
    .param p1, "x1"    # Ljava/io/Serializable;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lats;->a(Ljava/io/Serializable;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/io/Serializable;Ljava/lang/String;I)V
    .locals 5
    .param p1, "businessData"    # Ljava/io/Serializable;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userMode"    # I

    .prologue
    const/16 v4, 0xc

    .line 124
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lats;->a:Landroid/content/Context;

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, "intentToHome":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmccLAUNCH_HOME_TO_HANDLE_NOTICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const-string/jumbo v2, "EXTRA_CONCRETE_ACTION"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v2, "EXTRA_USER_MODE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v2, "from_where"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    new-instance v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;

    invoke-direct {v0}, Lcom/iflytek/framework/business/entities/StartHomeInfo;-><init>()V

    .line 132
    .local v0, "info":Lcom/iflytek/framework/business/entities/StartHomeInfo;
    iput v4, v0, Lcom/iflytek/framework/business/entities/StartHomeInfo;->mFromWhere:I

    .line 133
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setStartHomeInfo(Lcom/iflytek/framework/business/entities/StartHomeInfo;)V

    .line 134
    const-string/jumbo v2, "EXTRA_NOTICE_BUSINESS_DATA"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lats;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    const-string/jumbo v2, "NoticeActionHelper"

    const-string/jumbo v3, "luanchHomeWithBusinessData()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "intentAction":Ljava/lang/String;
    const-string/jumbo v4, "com.iflytek.cmccLAUNCH_HOME_TO_HANDLE_NOTICE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string/jumbo v4, "EXTRA_CONCRETE_ACTION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "noticeAction":Ljava/lang/String;
    const-string/jumbo v4, "EXTRA_NOTICE_BUSINESS_DATA"

    .line 151
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 153
    .local v0, "businessMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "EXTRA_USER_MODE"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 154
    .local v3, "userMode":I
    iget-object v4, p0, Lats;->a:Landroid/content/Context;

    .line 155
    invoke-static {v4, v3}, Laty;->a(Landroid/content/Context;I)Latw;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Latw;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
