.class public Lcn/richinfo/dm/service/SdkService;
.super Landroid/app/Service;


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SdkService"

    sput-object v0, Lcn/richinfo/dm/service/SdkService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.system.action.dm.live"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.system.permission.RECEIVER_LIVE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcn/richinfo/dm/service/SdkService;->a:Ljava/lang/String;

    const-string/jumbo v1, "SdkService onCreate"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    sget-object v0, Lcn/richinfo/dm/service/SdkService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onStartCommand() executed"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p0}, Lcn/richinfo/dm/service/SdkService;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/richinfo/dm/DMSDK;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/richinfo/dm/service/SdkService$1;

    invoke-direct {v1, p0}, Lcn/richinfo/dm/service/SdkService$1;-><init>(Lcn/richinfo/dm/service/SdkService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
