.class public Lcn/richinfo/dm/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Lcn/richinfo/dm/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lcn/richinfo/dm/bean/RegisiterMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "RegisterMsgReport"

    sput-object v0, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/richinfo/dm/a/b;->d:Lcn/richinfo/dm/bean/RegisiterMsg;

    iput-object p1, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/richinfo/dm/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/content/Context;)Lcn/richinfo/dm/a/b;
    .locals 2

    const-class v1, Lcn/richinfo/dm/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/richinfo/dm/a/b;->c:Lcn/richinfo/dm/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/richinfo/dm/a/b;

    invoke-direct {v0, p0}, Lcn/richinfo/dm/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/richinfo/dm/a/b;->c:Lcn/richinfo/dm/a/b;

    :cond_0
    sget-object v0, Lcn/richinfo/dm/a/b;->c:Lcn/richinfo/dm/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcn/richinfo/dm/a/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/richinfo/dm/a/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMsgReport: params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/richinfo/dm/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&appkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/richinfo/dm/util/MobileUtil;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerMsgReport appkey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcn/richinfo/dm/util/MobileUtil;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-instance v2, Lcn/richinfo/dm/a/b$1;

    invoke-direct {v2, p0}, Lcn/richinfo/dm/a/b$1;-><init>(Lcn/richinfo/dm/a/b;)V

    new-instance v3, Lcn/richinfo/dm/a/b$2;

    invoke-direct {v3, p0}, Lcn/richinfo/dm/a/b$2;-><init>(Lcn/richinfo/dm/a/b;)V

    invoke-static {v1, v0, p1, v2, v3}, Lcn/richinfo/dm/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Lcw$b;Lcw$a;)Lcn/richinfo/dm/b/a/a;

    move-result-object v0

    invoke-static {}, Lcn/richinfo/dm/DMSDK;->getQueues()Lcv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcv;->a(Lcn/a/a/n;)Lcn/a/a/n;

    return-void
.end method

.method static synthetic b(Lcn/richinfo/dm/a/b;)Lcn/richinfo/dm/bean/RegisiterMsg;
    .locals 1

    iget-object v0, p0, Lcn/richinfo/dm/a/b;->d:Lcn/richinfo/dm/bean/RegisiterMsg;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.dmyk.android.action.REPORT_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendRegisterMsg"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/richinfo/dm/bean/RegisiterMsg;->getRegisiterMsg(Landroid/content/Context;)Lcn/richinfo/dm/bean/RegisiterMsg;

    move-result-object v0

    iput-object v0, p0, Lcn/richinfo/dm/a/b;->d:Lcn/richinfo/dm/bean/RegisiterMsg;

    iget-object v0, p0, Lcn/richinfo/dm/a/b;->d:Lcn/richinfo/dm/bean/RegisiterMsg;

    invoke-virtual {v0}, Lcn/richinfo/dm/bean/RegisiterMsg;->getReportMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/richinfo/dm/util/Md5Utils;->stringMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "md5 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/richinfo/dm/util/SPUtils;->getRegMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last md5 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcn/richinfo/dm/util/SPUtils;->getRegMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/richinfo/dm/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/richinfo/dm/util/SPUtils;->getRegMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "cancle md5 equals"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    sget-object v1, Lcn/richinfo/dm/a/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "Last md5 : null"

    invoke-static {v1, v2}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/richinfo/dm/a/b;->d:Lcn/richinfo/dm/bean/RegisiterMsg;

    invoke-virtual {v0}, Lcn/richinfo/dm/bean/RegisiterMsg;->asJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/richinfo/dm/a/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
