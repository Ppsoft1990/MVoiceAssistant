.class public Lcn/richinfo/dm/DMSDK;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG_MODE:Z = false

.field private static LOG_MODE:Z = false

.field public static final PERMISSION_READ_PHONE_STATE:I = 0x3f2

.field public static final PERMISSION_WRITE_EXTERNAL_STORAGE:I = 0x3fc

.field public static TAG:Ljava/lang/String;

.field private static dateFormat:Ljava/text/SimpleDateFormat;

.field public static queues:Lcv;

.field public static singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "DMSDK"

    sput-object v0, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcn/richinfo/dm/DMSDK;->DEBUG_MODE:Z

    sput-boolean v1, Lcn/richinfo/dm/DMSDK;->LOG_MODE:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/richinfo/dm/DMSDK;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH-mm-ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/richinfo/dm/DMSDK;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcn/richinfo/dm/DMSDK;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getQueues()Lcv;
    .locals 1

    sget-object v0, Lcn/richinfo/dm/DMSDK;->queues:Lcv;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcn/richinfo/dm/DMSDK;->isCanReport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn;->a(Landroid/content/Context;)Lcv;

    move-result-object v0

    sput-object v0, Lcn/richinfo/dm/DMSDK;->queues:Lcv;

    invoke-static {}, Lcn/richinfo/dm/util/LogToFile;->init()V

    invoke-static {p0}, Lcn/richinfo/dm/DMSDK;->permissionCheck(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private static isCanReport(Landroid/content/Context;)Z
    .locals 7

    const/16 v6, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    sget-object v3, Lcn/richinfo/dm/DMSDK;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {p0}, Lcn/richinfo/dm/util/SPUtils;->getReportSuccessTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    sget-object v4, Lcn/richinfo/dm/DMSDK;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lastSuccessTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDebugMode()Z
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/DMSDK;->DEBUG_MODE:Z

    return v0
.end method

.method public static isWriteLog()Z
    .locals 1

    sget-boolean v0, Lcn/richinfo/dm/DMSDK;->LOG_MODE:Z

    return v0
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V
    .locals 2
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/16 v0, 0x3f2

    if-ne p0, v0, :cond_2

    aget v0, p2, v1

    if-nez v0, :cond_1

    invoke-static {p3}, Lcn/richinfo/dm/DMSDK;->upLoad(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PERMISSION_READ_PHONE_STATE Denied"

    invoke-static {p3, v0}, Lcn/richinfo/dm/util/DMToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3fc

    if-ne p0, v0, :cond_0

    aget v0, p2, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "PERMISSION_WRITE_EXTERNAL_STORAGE Denied"

    invoke-static {p3, v0}, Lcn/richinfo/dm/util/DMToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static permissionCheck(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    sget-object v0, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WRITE_EXTERNAL_STORAGE check LOG_MODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcn/richinfo/dm/DMSDK;->LOG_MODE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcn/richinfo/dm/DMSDK;->LOG_MODE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "WRITE_EXTERNAL_STORAGE check false-> Apply for it"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3fc

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    sget-object v0, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "READ_PHONE_STATE check"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "READ_PHONE_STATE check false-> Apply for it"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/richinfo/dm/util/DMLog;->isHavePermission:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p0}, Lcn/richinfo/dm/DMSDK;->upLoad(Landroid/app/Activity;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcn/richinfo/dm/DMSDK;->upLoad(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setDebugMode(Z)V
    .locals 0

    return-void
.end method

.method public static setLogMode(Z)V
    .locals 1

    sput-boolean p0, Lcn/richinfo/dm/DMSDK;->LOG_MODE:Z

    sget-boolean v0, Lcn/richinfo/dm/DMSDK;->DEBUG_MODE:Z

    invoke-static {v0}, Lcn/richinfo/dm/util/DMLog;->init(Z)V

    return-void
.end method

.method public static stopReportService(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/richinfo/dm/service/SdkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static upLoad(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcn/richinfo/dm/DMSDK;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Load SdkService"

    invoke-static {v0, v1}, Lcn/richinfo/dm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/richinfo/dm/service/SdkService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
