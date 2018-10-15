.class public final Lcom/migu/uem/statistics/aplist/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/statistics/aplist/a;


# instance fields
.field private b:Lcom/migu/uem/b/b;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/migu/uem/statistics/aplist/a;
    .locals 2

    sget-object v0, Lcom/migu/uem/statistics/aplist/a;->a:Lcom/migu/uem/statistics/aplist/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/statistics/aplist/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/statistics/aplist/a;->a:Lcom/migu/uem/statistics/aplist/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/statistics/aplist/a;

    invoke-direct {v0}, Lcom/migu/uem/statistics/aplist/a;-><init>()V

    sput-object v0, Lcom/migu/uem/statistics/aplist/a;->a:Lcom/migu/uem/statistics/aplist/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/statistics/aplist/a;->a:Lcom/migu/uem/statistics/aplist/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/migu/uem/statistics/aplist/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/uem/statistics/aplist/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/migu/uem/statistics/aplist/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/migu/uem/statistics/aplist/a;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "app_install_lsetime"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/migu/uem/statistics/aplist/a;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "app_install_lsetime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x25e

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/aplist/bean/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/migu/uem/statistics/aplist/bean/AppInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x25e

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->a(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x25e

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/migu/uem/statistics/deeplink/a;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->c:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static e(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "\u6536\u96c6APP\u5217\u8868\u4fe1\u606f"

    invoke-static {v1}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    new-instance v5, Lcom/migu/uem/statistics/aplist/bean/AppInfo;

    invoke-direct {v5}, Lcom/migu/uem/statistics/aplist/bean/AppInfo;-><init>()V

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/migu/uem/statistics/aplist/bean/AppInfo;->appName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v5, Lcom/migu/uem/statistics/aplist/bean/AppInfo;->appVersionName:Ljava/lang/String;

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, v5, Lcom/migu/uem/statistics/aplist/bean/AppInfo;->appVersionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v5, Lcom/migu/uem/statistics/aplist/bean/AppInfo;->appPackage:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->b:Lcom/migu/uem/b/b;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/migu/uem/b/b;

    invoke-direct {v0}, Lcom/migu/uem/b/b;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->b:Lcom/migu/uem/b/b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/statistics/aplist/a;->b:Lcom/migu/uem/b/b;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/migu/uem/a/a;->a()Lcom/migu/uem/a/a;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/statistics/aplist/b;

    invoke-direct {v1, p0, p1}, Lcom/migu/uem/statistics/aplist/b;-><init>(Lcom/migu/uem/statistics/aplist/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/f;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/migu/uem/statistics/aplist/a;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/migu/uem/statistics/aplist/a;->d(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->b:Lcom/migu/uem/b/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->b:Lcom/migu/uem/b/b;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/statistics/aplist/a;->b:Lcom/migu/uem/b/b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
