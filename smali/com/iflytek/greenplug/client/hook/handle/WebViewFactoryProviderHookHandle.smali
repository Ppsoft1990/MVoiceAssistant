.class public Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "WebViewFactoryProviderHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContentMain:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->fixWebViewAsset(Landroid/content/Context;)V

    return-void
.end method

.method private static fixWebViewAsset(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    :try_start_0
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 40
    invoke-static {}, Lcom/iflytek/greenplug/common/utils/compat/WebViewFactoryCompat;->getProvider()Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "provider":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_1
    const-string/jumbo v3, "org.chromium.content.app.ContentMain"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :goto_0
    :try_start_2
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_0

    .line 51
    :try_start_3
    const-string/jumbo v3, "com.android.org.chromium.content.app.ContentMain"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 56
    :cond_0
    :goto_1
    :try_start_4
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 57
    new-instance v3, Ljava/lang/ClassNotFoundException;

    const-string/jumbo v4, "Can not found class %s or %s in classloader %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "org.chromium.content.app.ContentMain"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "com.android.org.chromium.content.app.ContentMain"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 68
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "provider":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fixWebViewAsset error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 61
    :cond_2
    :try_start_5
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 62
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    .line 63
    sget-object v3, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sContentMain:Ljava/lang/Class;

    const-string/jumbo v4, "initApplicationContext"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 52
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    .restart local v2    # "provider":Ljava/lang/Object;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 46
    :catch_2
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "createWebView"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/WebViewFactoryProviderHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
