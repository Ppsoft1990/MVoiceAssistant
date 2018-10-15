.class public final Llj;
.super Ljava/lang/Object;


# static fields
.field public static a:[[Ljava/lang/String;

.field private static b:[[Ljava/lang/String;

.field private static c:Lmc;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.manufact"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.model"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.product"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.display"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.host"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.id"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.device"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.board"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.brand"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.user"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.type"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Llj;->a:[[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.cpu"

    aput-object v2, v1, v4

    const-string/jumbo v2, "CPU_ABI"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.cpu2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "CPU_ABI2"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.serial"

    aput-object v2, v1, v4

    const-string/jumbo v2, "SERIAL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.hardware"

    aput-object v2, v1, v4

    const-string/jumbo v2, "HARDWARE"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "os.bootloader"

    aput-object v2, v1, v4

    const-string/jumbo v2, "BOOTLOADER"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "os.radio"

    aput-object v3, v2, v4

    const-string/jumbo v3, "RADIO"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Llj;->b:[[Ljava/lang/String;

    new-instance v0, Lmc;

    invoke-direct {v0}, Lmc;-><init>()V

    sput-object v0, Llj;->c:Lmc;

    sput-boolean v4, Llj;->d:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lmc;
    .locals 7

    const/4 v1, 0x0

    const-class v2, Llj;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Llj;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Llj;->c:Lmc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Llj;->c:Lmc;

    invoke-virtual {v0}, Lmc;->a()V

    sget-object v0, Llj;->c:Lmc;

    const-string/jumbo v3, "os.system"

    const-string/jumbo v4, "Android"

    invoke-virtual {v0, v3, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Llj;->c:Lmc;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const-string/jumbo v5, "app.ver.name"

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "app.ver.code"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "app.pkg"

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "app.path"

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "app.name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v3, Llj;->c:Lmc;

    const-string/jumbo v4, "os.resolution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Llj;->c:Lmc;

    const-string/jumbo v4, "os.density"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v3, Llj;->c:Lmc;

    const-string/jumbo v4, "os.imei"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    sget-object v3, Llj;->c:Lmc;

    const-string/jumbo v4, "os.imsi"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Llj;->c:Lmc;

    const-string/jumbo v4, "os.android_id"

    invoke-virtual {v3, v4, v0}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Llj;->c:Lmc;

    const-string/jumbo v3, "os.version"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Llj;->c:Lmc;

    const-string/jumbo v3, "os.release"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Llj;->c:Lmc;

    const-string/jumbo v3, "os.incremental"

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_4
    sget-object v3, Llj;->a:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Llj;->c:Lmc;

    sget-object v4, Llj;->a:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Llj;->a:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    const-string/jumbo v3, "AppInfoUtil"

    const-string/jumbo v4, "Failed to get did Info"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v0, "AppInfoUtil"

    const-string/jumbo v1, "Failed to get prop Info"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Llj;->d:Z

    :goto_5
    sget-object v0, Llj;->c:Lmc;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v0, "AppInfoUtil"

    const-string/jumbo v3, "Failed to get sbid Info"

    invoke-static {v0, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_9
    const-string/jumbo v0, "AppInfoUtil"

    const-string/jumbo v1, "Failed to get property Info"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Llj;->d:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    :goto_6
    :try_start_a
    sget-object v1, Llj;->b:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Llj;->b:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Llj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Llj;->c:Lmc;

    sget-object v4, Llj;->b:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3
    sget-object v0, Llj;->c:Lmc;

    const-string/jumbo v1, "net.mac"

    invoke-static {p0}, Llj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Llj;->c:Lmc;

    const-string/jumbo v1, "carrier"

    invoke-static {p0}, Llj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lmc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Llj;->c:Lmc;

    invoke-virtual {v0}, Lmc;->d()V

    const/4 v0, 0x1

    sput-boolean v0, Llj;->d:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public static b(Landroid/content/Context;)Lmc;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Llj;->a(Landroid/content/Context;)Lmc;

    move-result-object v0

    new-instance v1, Lmc;

    invoke-direct {v1}, Lmc;-><init>()V

    const-string/jumbo v2, "app.name"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "app.path"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "app.pkg"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "app.ver.name"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "app.ver.code"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.system"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.resolution"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.density"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "net.mac"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.imei"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.imsi"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.version"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.release"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.incremental"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "os.android_id"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    const-string/jumbo v2, "carrier"

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    sget-object v2, Llj;->a:[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    sget-object v2, Llj;->a:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    sget-object v2, Llj;->a:[[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    sget-object v2, Llj;->a:[[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lmc;->a(Lmc;Ljava/lang/String;)V

    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "AppInfoUtil"

    const-string/jumbo v2, "Failed to get mac Info"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
