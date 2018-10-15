.class public Lcom/iflytek/blc/core/DefaultSimInfoObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/core/SimInfoHelper;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Lcom/iflytek/blc/system/ApnManager;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x7c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "DefaultSimInfoObserver"

    iput-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->d:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->b:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/iflytek/blc/system/ApnManager;

    iget-object v1, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->d:Landroid/content/Context;

    new-instance v2, Lcom/iflytek/blc/system/SimInfoManager;

    iget-object v3, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/blc/system/SimInfoManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/system/ApnManager;-><init>(Landroid/content/Context;Lcom/iflytek/blc/system/SimInfoManager;)V

    iput-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->c:Lcom/iflytek/blc/system/ApnManager;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "MANUFACTURER"

    invoke-static {v1}, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "MODEL"

    invoke-static {v1}, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "PRODUCT"

    invoke-static {v1}, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ANDROID"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->d:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "HARDWARE"

    invoke-static {v1}, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->e:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    if-eqz v0, :cond_0

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

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getAccessPoint()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/iflytek/blc/system/ConnectionManager;

    iget-object v1, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/blc/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/blc/system/ConnectionManager;->getCurrentNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->WIFI:Lcom/iflytek/blc/system/ApnAccessorType;

    invoke-virtual {v0}, Lcom/iflytek/blc/system/ApnAccessorType;->name()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->c:Lcom/iflytek/blc/system/ApnManager;

    invoke-virtual {v0}, Lcom/iflytek/blc/system/ApnManager;->getAPNType()Lcom/iflytek/blc/system/ApnAccessorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/blc/system/ApnAccessorType;->name()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DefaultSimInfoObserver"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DefaultSimInfoObserver"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;->e:Ljava/lang/String;

    return-object v0
.end method
