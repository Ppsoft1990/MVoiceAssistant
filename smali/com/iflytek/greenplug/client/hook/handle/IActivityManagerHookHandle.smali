.class public Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.super Lcom/iflytek/greenplug/client/hook/BaseHookHandle;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$al;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$af;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$am;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$q;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$an;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$s;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$e;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ab;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$g;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$p;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$w;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$v;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$i;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ae;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$t;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aa;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ac;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$f;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$r;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$j;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$av;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ad;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bb;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$b;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$c;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ag;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bc;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ai;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ba;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$az;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$x;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ah;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ak;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$o;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$u;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$y;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$z;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$a;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$k;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$l;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$m;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$be;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aj;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$h;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$as;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aw;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ay;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$at;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$au;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ap;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aq;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ar;,
        Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;
    }
.end annotation


# static fields
.field private static IServiceConnectionBindingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->IServiceConnectionBindingMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/iflytek/greenplug/client/hook/BaseHookHandle;-><init>(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000([Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->findFirstIntentIndexInArgs([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->resolveService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->clearPluginApplicationUserData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->queryPluginApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->isPackagePlugin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->selectProxyActivity(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/ActivityManager$RunningServiceInfo;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityManager$RunningServiceInfo;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->tryfixServiceInfo(Landroid/app/ActivityManager$RunningServiceInfo;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600([Ljava/lang/Object;)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->replaceFirstServiceIntentOfArgs([Ljava/lang/Object;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->selectProxyService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->IServiceConnectionBindingMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static clearPluginApplicationUserData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2666
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/greenplug/client/PluginManager;->clearApplicationUserData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2667
    const/4 v0, 0x1

    return v0
.end method

.method private static findFirstIntentIndexInArgs([Ljava/lang/Object;)I
    .locals 5
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2616
    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    .line 2617
    const/4 v1, 0x0

    .line 2618
    .local v1, "i":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 2619
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 2625
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 2622
    .restart local v0    # "arg":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2618
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2625
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static isPackagePlugin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2658
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static queryPluginApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2662
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private static replaceFirstServiceIntentOfArgs([Ljava/lang/Object;)Landroid/content/pm/ServiceInfo;
    .locals 8
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2581
    invoke-static {p0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->findFirstIntentIndexInArgs([Ljava/lang/Object;)I

    move-result v1

    .line 2582
    .local v1, "intentOfArgIndex":I
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    if-ltz v1, :cond_0

    .line 2583
    aget-object v0, p0, v1

    check-cast v0, Landroid/content/Intent;

    .line 2584
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->resolveService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 2585
    .local v4, "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->isPackagePlugin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2587
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    .local v3, "pluginServiceComponent":Landroid/content/ComponentName;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2591
    invoke-static {v4}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->selectProxyService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 2592
    .local v5, "stubComponent":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    .line 2594
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2595
    .local v2, "newIntent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2599
    const-string/jumbo v6, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2602
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2605
    aput-object v2, p0, v1

    .line 2611
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "pluginServiceComponent":Landroid/content/ComponentName;
    .end local v4    # "pluginServiceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "stubComponent":Landroid/content/ComponentName;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static resolveActivity(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2650
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private static resolveService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2654
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/greenplug/client/PluginManager;->resolveServiceInfo(Landroid/content/Intent;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static selectProxyActivity(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "hostContext"    # Landroid/content/Context;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2629
    if-eqz p1, :cond_0

    .line 2630
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/iflytek/greenplug/client/PluginManager;->bindStubActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    .line 2631
    .local v1, "stubName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2632
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    .local v0, "stubComp":Landroid/content/ComponentName;
    sget-object v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectProxyActivity end, activityInfo is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,stubComp is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    .end local v0    # "stubComp":Landroid/content/ComponentName;
    .end local v1    # "stubName":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static selectProxyService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "pluginServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 2641
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/iflytek/greenplug/client/PluginManager;->bindStubService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2642
    .local v0, "stubComp":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 2643
    sget-object v1, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectProxyService end, target service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,stubComp is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    .end local v0    # "stubComp":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    .restart local v0    # "stubComp":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static tryfixServiceInfo(Landroid/app/ActivityManager$RunningServiceInfo;Landroid/content/Context;)V
    .locals 0
    .param p0, "serviceInfo"    # Landroid/app/ActivityManager$RunningServiceInfo;
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 2672
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivityAsUser"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ar;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ar;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivityAsCaller"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aq;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aq;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivityAndWait"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ap;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ap;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivityWithConfig"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$au;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$au;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivityIntentSender"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$at;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$at;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startVoiceActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ay;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ay;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startNextMatchingActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aw;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aw;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startActivityFromRecents"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$as;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$as;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "finishActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$h;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$h;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "registerReceiver"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aj;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aj;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "broadcastIntent"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$d;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "unbroadcastIntent"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$be;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$be;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCallingPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$m;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$m;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getCallingActivity"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$l;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$l;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getAppTasks"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$k;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "addAppTask"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$a;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getTasks"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$z;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$z;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getServices"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$y;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$y;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getProcessesInErrorState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$u;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$u;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getContentProvider"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$n;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getContentProviderExternal"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$o;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$o;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "removeContentProviderExternal"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ak;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ak;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "publishContentProviders"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ah;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ah;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getRunningServiceControlPanel"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$x;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$x;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startService"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ax;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "stopService"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$az;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$az;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "stopServiceToken"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ba;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ba;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setServiceForeground"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$setServiceForeground;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "bindService"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bindService;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "unbindService"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bd;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "publishService"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ai;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ai;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "unbindFinished"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bc;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bc;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "peekService"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ag;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ag;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "bindBackupAgent"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$c;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "backupAgentCreated"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$b;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "unbindBackupAgent"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bb;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$bb;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "killApplicationProcess"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ad;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ad;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "startInstrumentation"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$av;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$av;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getActivityClassForToken"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$j;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPackageForToken"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$r;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$r;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getIntentSender"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$getIntentSender;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "clearApplicationUserData"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$f;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "handleIncomingUser"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ac;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ac;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "grantUriPermission"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aa;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$aa;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPersistedUriPermissions"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$t;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$t;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "killBackgroundProcesses"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ae;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ae;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "forceStopPackage"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$i;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$i;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getRunningAppProcesses"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$v;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$v;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getRunningExternalApplications"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$w;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$w;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getMyMemoryState"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$p;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$p;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "crashApplication"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$g;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$g;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "grantUriPermissionFromOwner"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ab;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ab;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "checkGrantUriPermission"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$e;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$e;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPackageScreenCompatMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$s;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$s;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setPackageScreenCompatMode"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$an;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$an;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "getPackageAskScreenCompat"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$q;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$q;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "setPackageAskScreenCompat"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$am;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$am;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "navigateUpTo"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$af;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$af;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->sHookedMethodHandlers:Ljava/util/Map;

    const-string/jumbo v1, "serviceDoneExecuting"

    new-instance v2, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$al;

    iget-object v3, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->mHostContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$al;-><init>(Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->IServiceConnectionBindingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 149
    return-void
.end method
