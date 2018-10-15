.class final Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;,
        Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;,
        Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;,
        Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;,
        Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;,
        Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$SingletionHolder;
    }
.end annotation


# static fields
.field private static final MSG_APK_EXIST_PLUGIN_INSTALL:I = 0xb

.field private static final MSG_APK_PLUGIN_DELETE:I = 0x7

.field private static final MSG_APK_PLUGIN_INSTALL:I = 0x6

.field private static final MSG_NOTICE_REGISTRAR:I = 0x8

.field private static final MSG_PLUGIN_DELETE:I = 0x2

.field private static final MSG_PLUGIN_ENTER:I = 0xa

.field private static final MSG_PLUGIN_INSTALL:I = 0x1

.field private static final MSG_PLUGIN_LOAD:I = 0x9

.field private static final MSG_PLUGIN_NETCHECK:I = 0x5

.field private static final MSG_PLUGIN_START:I = 0x3

.field private static final MSG_PLUGIN_STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PluginManagerImpl"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLoadFinish:Z

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

.field private mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

.field private mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

.field private mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

.field private mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

.field private mPluginUpdater:Lcom/iflytek/framework/plugin/internal/PluginUpdater;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLoadFinish:Z

    .line 124
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 139
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->initPluginHandler()V

    .line 140
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->getInstance()Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    .line 141
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginPool;

    invoke-direct {v0}, Lcom/iflytek/framework/plugin/internal/PluginPool;-><init>()V

    .line 142
    .local v0, "pluginPool":Lcom/iflytek/framework/plugin/internal/PluginPool;
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginLoader;

    sget-object v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;-><init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginPool;)V

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .line 143
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    sget-object v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;-><init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginPool;)V

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    .line 144
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginUpdater;

    sget-object v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginUpdater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginUpdater:Lcom/iflytek/framework/plugin/internal/PluginUpdater;

    .line 145
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processInstallPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStartPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processDeletePlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processNetCheck(Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processLoadPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processApkDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processAppInstallEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processInstallExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->loadPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "x3"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->installApkImpl(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    return-void
.end method

.method private checkApkPluginInstall(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1547
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v2, :cond_1

    .line 1548
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryApkPluginResolveInfo()Ljava/util/List;

    move-result-object v1

    .line 1549
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1550
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1551
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1552
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    const/4 v2, 0x1

    .line 1559
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkInstallVersion(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    .prologue
    .line 1532
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getCachePluginVersion(I)I

    move-result v0

    .line 1533
    .local v0, "cacheVersion":I
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v1, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1534
    const/4 v1, 0x0

    .line 1537
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$SingletionHolder;->mInstance:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    return-object v0
.end method

.method private getNoticeObserver(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;
    .locals 2
    .param p1, "event"    # I
    .param p2, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 650
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 651
    .local v0, "observer":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;
    iput p1, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->event:I

    .line 652
    iput-object p2, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;->plugin:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 654
    return-object v0
.end method

.method public static initManager(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sput-object p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method private initPluginHandler()V
    .locals 2

    .prologue
    .line 658
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PluginManagerImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 659
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 660
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 661
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    .line 662
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    invoke-direct {v0, p0, p0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;)V

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    .line 663
    return-void
.end method

.method private installAndCreateGPPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Ljava/lang/String;)I
    .locals 7
    .param p1, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p2, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 892
    sget-object v5, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 893
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 894
    .local v0, "info":Landroid/content/pm/PackageInfo;
    new-instance v1, Lmu;

    sget-object v5, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v0, p2}, Lmu;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 896
    .local v1, "item":Lmu;
    invoke-virtual {v1}, Lmu;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/greenplug/client/GreenPlug;->installPackage(Ljava/lang/String;)I

    move-result v4

    .line 898
    .local v4, "re":I
    if-eqz v4, :cond_0

    .line 902
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v5, p1}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->deleteRomPluginCache(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I

    .line 903
    const v5, 0x8100

    .line 915
    :goto_0
    return v5

    .line 907
    :cond_0
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v5, p1}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createGPPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v2

    .line 908
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v2, :cond_1

    .line 909
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 910
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v5, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 912
    const v5, 0x8000

    goto :goto_0

    .line 915
    :cond_1
    const v5, 0x8015

    goto :goto_0
.end method

.method private installAndCreatePlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I
    .locals 7
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "pluginPath"    # Ljava/lang/String;
    .param p4, "pluginType"    # I
    .param p5, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const v2, 0x8000

    .line 922
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    if-eqz v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v3, p3, p2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->handleInstallPlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I

    move-result v0

    .line 924
    .local v0, "error":I
    if-eq v0, v2, :cond_0

    .line 926
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v2, p2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->deleteRomPluginCache(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I

    .line 945
    .end local v0    # "error":I
    :goto_0
    return v0

    .line 931
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    if-eqz v3, :cond_2

    .line 932
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    new-instance v4, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    sget-object v5, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-direct {v4, v5, v6, p1}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;-><init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginLoader;Ljava/lang/String;)V

    invoke-virtual {v3, p2, v4}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/yd/plugin/IPluginContext;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v1

    .line 934
    .local v1, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v1, :cond_1

    .line 935
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 936
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    move v0, v2

    .line 937
    goto :goto_0

    .line 940
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v2, p2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->deleteRomPluginLoader(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I

    .line 941
    const v0, 0x8015

    goto :goto_0

    .line 945
    .end local v1    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_2
    const v0, 0x8100

    goto :goto_0
.end method

.method private installApkImpl(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 8
    .param p1, "pluginType"    # I
    .param p2, "pluginData"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const v2, 0x8004

    const/4 v3, 0x0

    const/16 v1, 0x3e8

    .line 1460
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1461
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v4, "processApkInstall version check error"

    invoke-static {v0, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v4, p1

    move-object v5, p3

    .line 1462
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    .line 1468
    .local v6, "cachePlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v6, :cond_3

    .line 1470
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkInstallVersion(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1471
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin cache version > install version"

    invoke-static {v0, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v4, p1

    move-object v5, p3

    .line 1472
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 1478
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createApkPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v7

    .line 1483
    .local v7, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v7, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1485
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v7}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1486
    const v2, 0x8000

    move-object v0, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1488
    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStartPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0
.end method

.method private loadApkPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 5
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .param p2, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 1151
    const-string/jumbo v2, "PluginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadApkPlugin :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgq;->a(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.framework.action.remote"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    new-instance v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$2;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    invoke-virtual {v2, v0, v3}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadInstalledApkPluginInfo(Landroid/content/Intent;Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;)V

    .line 1165
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private loadGPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I
    .locals 9
    .param p1, "sqlInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .param p2, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "isApk"    # Z
    .param p4, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const v2, 0x8011

    const v8, 0x8004

    const/4 v3, 0x0

    const/16 v1, 0x3ec

    const/4 v4, 0x0

    .line 1236
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v5, "loadGPluginImpl"

    invoke-static {v0, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    if-nez p2, :cond_0

    move-object v0, p0

    move-object v5, p4

    .line 1239
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1242
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deleteSqlPluginCache(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1288
    :goto_0
    return v2

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v2, v8

    move-object v5, p4

    .line 1251
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1253
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deleteSqlPluginCache(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    move v2, v8

    .line 1257
    goto :goto_0

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p2, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkSqlPluginInfo(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1261
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluignState()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updateSqlPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;I)V

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    if-eqz v0, :cond_3

    .line 1265
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createGPPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    .line 1267
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    if-eqz v6, :cond_4

    .line 1268
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v1, "loadGPluginImpl gp-plugin is not null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluignState()I

    move-result v7

    .line 1270
    .local v7, "pluginstate":I
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v7, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1271
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1272
    const/4 v0, 0x3

    if-ne v7, v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->registPluginAbilities(Lcom/iflytek/framework/plugin/internal/Plugin;)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 1288
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    .end local v7    # "pluginstate":I
    :cond_3
    const v2, 0x8000

    goto :goto_0

    .line 1277
    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    :cond_4
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v2, "loadGPluginImpl gp-plugin is null"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const v2, 0x8015

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1280
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deleteSqlPluginCache(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1284
    const v2, 0x8015

    goto/16 :goto_0
.end method

.method private loadPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I
    .locals 10
    .param p1, "sqlInfo"    # Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .param p2, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "isApk"    # Z
    .param p4, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const v2, 0x8011

    const v8, 0x8004

    const/4 v3, 0x0

    const/16 v1, 0x3ec

    const/4 v4, 0x0

    .line 1174
    if-nez p2, :cond_1

    move-object v0, p0

    move-object v5, p4

    .line 1175
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1178
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deleteSqlPluginCache(Ljava/lang/String;)V

    .line 1179
    if-nez p3, :cond_0

    .line 1180
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1226
    :cond_0
    :goto_0
    return v2

    .line 1186
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move v2, v8

    move-object v5, p4

    .line 1187
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1189
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deleteSqlPluginCache(Ljava/lang/String;)V

    .line 1190
    if-nez p3, :cond_2

    .line 1191
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    :cond_2
    move v2, v8

    .line 1193
    goto :goto_0

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p2, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkSqlPluginInfo(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1197
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluignState()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updateSqlPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;I)V

    .line 1200
    :cond_4
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    if-eqz v0, :cond_5

    .line 1201
    const/4 v6, 0x0

    .line 1202
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    if-eqz p3, :cond_6

    .line 1203
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v0, p2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createApkPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    .line 1208
    :goto_1
    if-eqz v6, :cond_7

    .line 1209
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluignState()I

    move-result v7

    .line 1210
    .local v7, "pluginstate":I
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v7, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1211
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1212
    const/4 v0, 0x3

    if-ne v7, v0, :cond_5

    .line 1213
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->registPluginAbilities(Lcom/iflytek/framework/plugin/internal/Plugin;)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 1226
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    .end local v7    # "pluginstate":I
    :cond_5
    const v2, 0x8000

    goto :goto_0

    .line 1205
    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    :cond_6
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    new-instance v2, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    sget-object v5, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .line 1206
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v5, v8, v9}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;-><init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginLoader;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v0, p2, v2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/yd/plugin/IPluginContext;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    goto :goto_1

    .line 1216
    :cond_7
    const v2, 0x8015

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1218
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deleteSqlPluginCache(Ljava/lang/String;)V

    .line 1219
    if-nez p3, :cond_8

    .line 1220
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1222
    :cond_8
    const v2, 0x8015

    goto/16 :goto_0
.end method

.method private noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "errorCode"    # I
    .param p3, "pluginId"    # Ljava/lang/String;
    .param p4, "pluginType"    # I
    .param p5, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 615
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 616
    .local v0, "eventMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;
    iput p1, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->event:I

    .line 617
    iput p2, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->errorCode:I

    .line 618
    iput-object p3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginId:Ljava/lang/String;

    .line 619
    iput p4, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginType:I

    .line 620
    iput-object p5, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 622
    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainNoticeMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;)Landroid/os/Message;

    move-result-object v1

    .line 623
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    invoke-virtual {v2, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    return-void
.end method

.method private noticeEventMessage(IILjava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "errorCode"    # I
    .param p3, "pluginId"    # Ljava/lang/String;
    .param p4, "pluginKind"    # Ljava/lang/String;
    .param p5, "pluginType"    # I
    .param p6, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 638
    new-instance v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 639
    .local v0, "eventMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;
    iput p1, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->event:I

    .line 640
    iput p2, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->errorCode:I

    .line 641
    iput-object p3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginId:Ljava/lang/String;

    .line 642
    iput p5, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->pluginType:I

    .line 643
    iput-object p6, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainNoticeMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;)Landroid/os/Message;

    move-result-object v1

    .line 646
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    invoke-virtual {v2, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    return-void
.end method

.method private notifyLoadPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 9
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const/16 v1, 0x3ec

    .line 1099
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getAllPlugins()Ljava/util/List;

    move-result-object v6

    .line 1100
    .local v6, "allCaches":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1101
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 1102
    .local v7, "cache":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    const-string/jumbo v2, "PluginManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processLoadPlugins plugin type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " plugin state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1103
    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v8, 0x0

    .line 1105
    .local v8, "state":I
    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1106
    const/4 v8, 0x1

    .line 1108
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    const/16 v3, 0x8

    .line 1109
    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    .line 1110
    invoke-direct {p0, v1, v7}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->getNoticeObserver(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;

    move-result-object v5

    .line 1108
    invoke-virtual {v2, v3, v8, v4, v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1110
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1113
    .end local v7    # "cache":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v8    # "state":I
    :cond_1
    const v2, 0x8000

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1115
    return-void
.end method

.method private obtainNoticeMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "eventMessage"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$EventMessage;

    .prologue
    .line 598
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 600
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    return-object v0
.end method

.method private obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "pluginMessage"    # Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .prologue
    .line 591
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 592
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 593
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    return-object v0
.end method

.method private processApkDelete(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.iflytek.cmcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1497
    :cond_0
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v1, "processApkDelete packageName is empty or com.iflytek.cmcc"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_1
    :goto_0
    return-void

    .line 1501
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_1

    .line 1502
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryPlugin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1503
    .local v7, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1504
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 1506
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 1507
    .local v5, "callback":Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1512
    const/16 v1, 0x3eb

    const v2, 0x8000

    const/4 v3, 0x0

    .line 1513
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    move-object v0, p0

    .line 1512
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1515
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1516
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deletePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1517
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->finalizePlugin()V

    goto :goto_1

    .line 1520
    .end local v5    # "callback":Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private processAppInstallEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1421
    const-string/jumbo v2, "PluginManagerImpl"

    const-string/jumbo v3, "processApkInstall packageName is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v2, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryApkPluginResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1427
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 1428
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1429
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.framework.action.remote"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v1, "pluginIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    new-instance v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$3;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadInstalledApkPluginInfo(Landroid/content/Intent;Lcom/iflytek/framework/plugin/internal/PluginLoader$onGetApkPluginCallback;)V

    goto :goto_0
.end method

.method private processDeletePlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 9
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const v2, 0x8000

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v1, 0x3eb

    .line 1331
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v7

    .line 1334
    .local v7, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-nez v7, :cond_1

    .line 1335
    const v2, 0x8012

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1375
    .end local v7    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_0
    :goto_0
    return-void

    .line 1340
    .restart local v7    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    const-string/jumbo v0, "gp_apk"

    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1342
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1345
    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/greenplug/client/GreenPlug;->deletePackage(Ljava/lang/String;)I

    move-result v8

    .line 1346
    .local v8, "ret":I
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v0}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v0

    if-ne v0, v8, :cond_2

    const/4 v6, 0x1

    .line 1348
    .local v6, "isSuccess":Z
    :goto_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v5, v7}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1349
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v7}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deletePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1351
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v0

    sget-object v4, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/util/TestHelper;->sendPluginUninstallBroadcast(Landroid/content/Context;)V

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 1352
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 1346
    .end local v6    # "isSuccess":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 1359
    .end local v8    # "ret":I
    :cond_3
    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getIsAPkPlugin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1360
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    sget-object v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-interface {v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lns;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1365
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1367
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v5, v7}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1368
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v7}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->deletePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1371
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v0

    sget-object v4, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/util/TestHelper;->sendPluginUninstallBroadcast(Landroid/content/Context;)V

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 1372
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0
.end method

.method private processInstallExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pluginType"    # I
    .param p3, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x3e8

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v2, "processInstallExistApkPlugin packageName is empty"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const v2, 0x8020

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 715
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkApkPluginInstall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v2, "processInstallExistApkPlugin apk not install"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const v2, 0x8021

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 711
    :cond_1
    if-eqz p3, :cond_2

    .line 712
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processAppInstallEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processInstallPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 22
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "pluginType"    # I
    .param p3, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 727
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 728
    const/16 v3, 0x12d

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    .line 729
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v21

    .line 730
    .local v21, "tempPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-nez v21, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginPackageWithType(I)Ljava/lang/String;

    move-result-object v13

    .line 733
    .local v13, "pkgName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "com.cmcc.viafly.headset"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 734
    sget-object v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x12d

    invoke-static {v3, v4}, Lms;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v15

    .line 735
    .local v15, "pluginCopyPath":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 736
    const/16 v4, 0x3e8

    const v5, 0x8100

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 888
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v15    # "pluginCopyPath":Ljava/lang/String;
    .end local v21    # "tempPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_0
    :goto_1
    return-void

    .line 730
    .restart local v21    # "tempPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 740
    .restart local v13    # "pkgName":Ljava/lang/String;
    .restart local v15    # "pluginCopyPath":Ljava/lang/String;
    :cond_2
    move-object/from16 p1, v15

    .line 746
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v15    # "pluginCopyPath":Ljava/lang/String;
    .end local v21    # "tempPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin pluginPath is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/16 v4, 0x3e8

    const v5, 0x8001

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_1

    .line 752
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v3, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadZipPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v5

    .line 754
    .local v5, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    if-nez v5, :cond_5

    .line 755
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin plugin info is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/16 v4, 0x3e8

    const v5, 0x8003

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 758
    .end local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    .restart local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v3, v5}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkPluginVersion(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 763
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin version check error"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/16 v4, 0x3e8

    const v5, 0x8004

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 766
    .end local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    .restart local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v5}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkPluginInfo(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 771
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin check plugin info error"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v4, 0x3e8

    const v5, 0x8003

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 774
    .end local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 778
    .restart local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_7
    invoke-virtual {v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v20

    .line 779
    .local v20, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 782
    .local v16, "pluginPackageName":Ljava/lang/String;
    const-string/jumbo v3, "gp_apk"

    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 784
    const/16 v19, 0x0

    .line 786
    .local v19, "signCheck":Z
    :try_start_0
    sget-object v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginSignCheck;->checkJarSign(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 793
    :goto_2
    const/16 v17, -0x1

    .line 794
    .local v17, "re":I
    if-eqz v19, :cond_9

    .line 796
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->installAndCreateGPPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Ljava/lang/String;)I

    move-result v17

    .line 801
    :goto_3
    if-eqz v17, :cond_8

    const v3, 0x8000

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    .line 802
    :cond_8
    const/16 v4, 0x3ed

    const v5, 0x8000

    const/4 v6, 0x0

    const-string/jumbo v7, "gp_apk"

    .end local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    move-object/from16 v3, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 806
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStartPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 813
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 787
    .end local v17    # "re":I
    .restart local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :catch_0
    move-exception v12

    .line 788
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "gp_apk sign check"

    invoke-static {v3, v4, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/16 v19, 0x1

    goto :goto_2

    .line 798
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v17    # "re":I
    :cond_9
    const-string/jumbo v3, "PluginManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plugin sign check failed --  pluginType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 808
    :cond_a
    const/16 v4, 0x3e8

    const v5, 0x8100

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_4

    .line 819
    .end local v17    # "re":I
    .end local v19    # "signCheck":Z
    :cond_b
    const-string/jumbo v3, "com.iflytek.cmcc"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->checkZipSign(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 822
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin plugin sign is not legal"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v4, 0x3e8

    const v5, 0x8016

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 825
    .end local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-static/range {p1 .. p1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    .restart local v5    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v3, :cond_e

    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v14

    .line 831
    .local v14, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v14, :cond_e

    .line 833
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkInstallVersion(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 834
    invoke-interface {v14}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 835
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin cache version >= install version"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v4, 0x3e8

    const v5, 0x8004

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_1

    .line 842
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 847
    .end local v14    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_e
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFileHelper;->isRomAvailSpaceEnough()Z

    move-result v3

    if-nez v3, :cond_f

    .line 848
    const-string/jumbo v3, "PluginManagerImpl"

    const-string/jumbo v4, "processInstallPlugin rom space not enough"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/16 v4, 0x3e8

    const v5, 0x8002

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_1

    .line 854
    :cond_f
    const/16 v18, 0x0

    .line 856
    .local v18, "retryCount":I
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v18

    if-gt v0, v3, :cond_0

    .line 857
    invoke-virtual/range {v20 .. v20}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->installAndCreatePlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I

    move-result v8

    .line 859
    .local v8, "error":I
    const v3, 0x8000

    if-ne v8, v3, :cond_10

    .line 860
    const/16 v7, 0x3e8

    const v8, 0x8000

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 863
    .end local v8    # "error":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processStartPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_1

    .line 867
    .restart local v8    # "error":I
    :cond_10
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_11

    .line 868
    const/16 v7, 0x3e8

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->deleteInstallPlugin(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;)I

    .line 872
    :cond_11
    add-int/lit8 v18, v18, 0x1

    .line 874
    goto :goto_5

    .line 880
    .end local v8    # "error":I
    .end local v18    # "retryCount":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mApkEventCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkApkPluginInstall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 882
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processInstalledApk(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_1

    .line 884
    :cond_13
    sget-object v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lns;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private processInstalledApk(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 8
    .param p1, "installPath"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p3, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 1384
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v4

    .line 1385
    .local v4, "pluginType":I
    invoke-virtual {p2}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1387
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .line 1388
    invoke-virtual {v0, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1389
    invoke-direct {p0, v6}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processAppInstallEvent(Ljava/lang/String;)V

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v7

    .line 1396
    .local v7, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v7, :cond_0

    .line 1398
    invoke-direct {p0, v4, p2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkInstallVersion(ILcom/iflytek/framework/plugin/internal/entities/PluginInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1399
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v1, "processInstalledApk cache version >= install version"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/16 v1, 0x3e8

    const v2, 0x8004

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 1408
    :cond_2
    sget-object v0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, p1}, Lns;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processLoadBasicPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I
    .locals 11
    .param p1, "info"    # Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .param p2, "callback"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const/4 v3, 0x0

    const v8, 0x8015

    const v2, 0x8011

    const/16 v1, 0x3ec

    const/4 v4, 0x0

    .line 1297
    if-nez p1, :cond_0

    move-object v0, p0

    move-object v5, p2

    .line 1298
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1321
    :goto_0
    return v2

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    if-eqz v0, :cond_1

    .line 1305
    invoke-virtual {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v7

    .line 1306
    .local v7, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v7, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    new-instance v2, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    sget-object v5, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    .line 1308
    invoke-virtual {v7}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v5, v9, v10}, Lcom/iflytek/framework/plugin/internal/PluginContextImpl;-><init>(Landroid/content/Context;Lcom/iflytek/framework/plugin/internal/PluginLoader;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, p1, v2}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->createBasicPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/yd/plugin/IPluginContext;)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    .line 1309
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    if-eqz v6, :cond_2

    .line 1310
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1311
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->addPluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1312
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->registBusinessPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1321
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    .end local v7    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :cond_1
    const v2, 0x8000

    goto :goto_0

    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    .restart local v7    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :cond_2
    move-object v0, p0

    move v2, v8

    move-object v5, p2

    .line 1314
    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    move v2, v8

    .line 1316
    goto :goto_0
.end method

.method private processLoadPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 13
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 1034
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v10, :cond_7

    .line 1035
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1038
    :try_start_0
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getBasicPlugin()Ljava/util/ArrayList;

    move-result-object v1

    .line 1039
    .local v1, "busPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1040
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1041
    .local v4, "iniName":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v11, v4}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadBusPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v0

    .line 1042
    .local v0, "busPluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-direct {p0, v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->processLoadBasicPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1086
    .end local v0    # "busPluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .end local v1    # "busPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "iniName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v10

    .line 1046
    .restart local v1    # "busPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v10}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryPluginSqlInfo()Ljava/util/List;

    move-result-object v3

    .line 1047
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1049
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    .line 1050
    .local v2, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1051
    .local v5, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v11, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadPluginInfo(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v8

    .line 1053
    .local v8, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "com.iflytek.cmcc"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1055
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1056
    invoke-virtual {v8}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getType()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 1057
    const-string/jumbo v11, "PluginManagerImpl"

    const-string/jumbo v12, "processLoadPlugins not load carmode plugin"

    invoke-static {v11, v12}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1060
    :cond_1
    const/4 v11, 0x0

    invoke-direct {p0, v2, v8, v11, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->loadPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I

    goto :goto_1

    .line 1063
    :cond_2
    const-string/jumbo v11, "gp_apk"

    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPluginKind()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1065
    sget-object v11, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iflytek/greenplug/common/PluginDirHelper;->getPluginApkFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1066
    .local v9, "pluginPath":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->setPluginPath(Ljava/lang/String;)V

    .line 1067
    iget-object v11, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v11, v9}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadZipPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v6

    .line 1068
    .local v6, "pluginGPInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    move-object v7, v6

    .line 1069
    .local v7, "pluginGPInfo2":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    const/4 v11, 0x0

    invoke-direct {p0, v2, v6, v11, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->loadGPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I

    goto :goto_1

    .line 1072
    .end local v6    # "pluginGPInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .end local v7    # "pluginGPInfo2":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .end local v9    # "pluginPath":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->loadApkPlugin(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_1

    .line 1077
    .end local v2    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_4
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/16 v11, 0xc8

    invoke-virtual {v10, v11}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryPluginSqlinfo(I)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "com.iflytek.xiri.mobile"

    .line 1078
    invoke-virtual {p0, v10}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkApkPluginExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1079
    const-string/jumbo v10, "com.iflytek.xiri.mobile"

    const/16 v11, 0xc8

    invoke-virtual {p0, v10, v11, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->installExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1081
    :cond_5
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/16 v11, 0xcc

    invoke-virtual {v10, v11}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryPluginSqlinfo(I)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "com.iflytek.vbox.android"

    .line 1082
    invoke-virtual {p0, v10}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkApkPluginExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1083
    const-string/jumbo v10, "com.iflytek.vbox.android"

    const/16 v11, 0xcc

    invoke-virtual {p0, v10, v11, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->installExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    :cond_6
    iget-object v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1089
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->notifyLoadPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1090
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLoadFinish:Z

    .line 1092
    .end local v1    # "busPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;>;"
    :cond_7
    return-void
.end method

.method private processNetCheck(Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginUpdater:Lcom/iflytek/framework/plugin/internal/PluginUpdater;

    if-eqz v2, :cond_1

    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, "pluginTypes":[Ljava/lang/Integer;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 675
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Integer;

    .line 676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 677
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    aput-object v2, v1, v0

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginUpdater:Lcom/iflytek/framework/plugin/internal/PluginUpdater;

    invoke-virtual {v2, v1, p2}, Lcom/iflytek/framework/plugin/internal/PluginUpdater;->updatePluginRes([Ljava/lang/Integer;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V

    .line 682
    .end local v1    # "pluginTypes":[Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private processStartPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 7
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v1, 0x3e9

    .line 955
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    .line 958
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    if-nez v6, :cond_1

    .line 959
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v2, "processStartPlugin no cache plugin"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const v2, 0x8012

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 989
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    :cond_0
    :goto_0
    return-void

    .line 965
    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/Plugin;
    :cond_1
    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 966
    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 967
    :cond_2
    const v2, 0x8009

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 972
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v4, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 973
    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/Plugin;->getIsAPkPlugin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 974
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updatePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 982
    :goto_1
    const v2, 0x8000

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 984
    invoke-static {}, Lcom/iflytek/viafly/util/TestHelper;->getInstance()Lcom/iflytek/viafly/util/TestHelper;

    move-result-object v0

    sget-object v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/util/TestHelper;->sendPluginInstallBroadcast(Landroid/content/Context;)V

    .line 985
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    const/16 v2, 0x8

    const/4 v3, 0x1

    .line 986
    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginType()I

    move-result v4

    .line 987
    invoke-direct {p0, v1, v6}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->getNoticeObserver(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;

    move-result-object v1

    .line 985
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 976
    :cond_4
    const-string/jumbo v0, "gp_apk"

    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/Plugin;->getPluginKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 977
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updatePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    goto :goto_1

    .line 980
    :cond_5
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginInstaller:Lcom/iflytek/framework/plugin/internal/PluginInstaller;

    invoke-virtual {v2, v6}, Lcom/iflytek/framework/plugin/internal/PluginInstaller;->registPluginAbilities(Lcom/iflytek/framework/plugin/internal/Plugin;)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updatePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    goto :goto_1
.end method

.method private processStopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 7
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x3ea

    .line 998
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginCache(I)Lcom/iflytek/framework/plugin/internal/Plugin;

    move-result-object v6

    .line 1001
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-nez v6, :cond_1

    .line 1002
    const-string/jumbo v0, "PluginManagerImpl"

    const-string/jumbo v2, "processStartPlugin no cache plugin"

    invoke-static {v0, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const v2, 0x8012

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1026
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_0
    :goto_0
    return-void

    .line 1008
    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 1009
    const v2, 0x8009

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->setPluginState(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    .line 1015
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getIsAPkPlugin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1016
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v0, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updatePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    .line 1020
    :goto_1
    const v2, 0x8000

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->noticeEventMessage(IILjava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    .line 1022
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mNoticeHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1023
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v4

    .line 1024
    invoke-direct {p0, v1, v6}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->getNoticeObserver(ILcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeObserver;

    move-result-object v1

    .line 1022
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$NoticeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1018
    :cond_3
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v2, v6}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->unRegistPluginAbilities(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->updatePluginCache(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)Z

    goto :goto_1
.end method

.method private syncProcessLoadPlugin(I)I
    .locals 5
    .param p1, "pluginType"    # I

    .prologue
    .line 1123
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v3, :cond_2

    .line 1125
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v3, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->queryPluginSqlinfo(I)Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;

    move-result-object v0

    .line 1126
    .local v0, "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    if-nez v0, :cond_0

    .line 1127
    const v3, 0x8010

    .line 1141
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :goto_0
    return v3

    .line 1130
    .restart local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.iflytek.cmcc"

    .line 1133
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1134
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadPluginInfo(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v2

    .line 1135
    .local v2, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->loadPluginImpl(Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;ZLcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)I

    move-result v3

    goto :goto_0

    .line 1138
    .end local v2    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_1
    const v3, 0x8019

    goto :goto_0

    .line 1141
    .end local v0    # "info":Lcom/iflytek/framework/plugin/internal/entities/PluginSqlInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    const v3, 0x8100

    goto :goto_0
.end method


# virtual methods
.method public checkApkPluginExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginPackageName"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->checkApkPluginInstall(Ljava/lang/String;)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkNeedUpdatePlugin(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;Ljava/lang/String;)Z
    .locals 8
    .param p1, "netPlugin"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 171
    if-nez p1, :cond_1

    .line 172
    const-string/jumbo v6, "PluginManagerImpl"

    const-string/jumbo v7, "checkNeedUpdatePlugin net info is empty"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return v5

    .line 176
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 177
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v7, "checkNeedUpdatePlugin local path is empty"

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 178
    goto :goto_0

    .line 181
    :cond_2
    iget-object v7, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v7, :cond_0

    .line 182
    iget-object v7, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v7, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadZipPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v3

    .line 183
    .local v3, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    if-nez v3, :cond_3

    .line 184
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v7, "checkNeedUpdatePlugin local path pluginInfo is empty"

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 185
    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v4

    .line 189
    .local v4, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-nez v4, :cond_4

    .line 190
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v7, "checkNeedUpdatePlugin local path plugin summary is empty"

    invoke-static {v5, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 191
    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getId()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "pluginId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "netVersion":I
    invoke-virtual {v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getVersion()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-le v1, v7, :cond_0

    move v5, v6

    .line 200
    goto :goto_0

    .line 202
    .end local v1    # "netVersion":I
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "PluginManagerImpl"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkNetPluginUpdate(Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "pluginTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 492
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 493
    iput-object p2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    .line 494
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 496
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v2, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    :cond_0
    return-void
.end method

.method public checkPluginGrayControl(I)Z
    .locals 4
    .param p1, "pluginType"    # I

    .prologue
    .line 309
    const/4 v1, 0x1

    .line 311
    .local v1, "grayControlFlag":Z
    packed-switch p1, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 313
    :pswitch_1
    invoke-static {}, Lagm;->j()Z

    move-result v1

    .line 314
    goto :goto_0

    .line 316
    :pswitch_2
    invoke-static {}, Lagm;->k()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "adaptValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "2"

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const/4 v1, 0x0

    goto :goto_0

    .line 323
    .end local v0    # "adaptValue":Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lagm;->p()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "oralGame":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "2"

    .line 325
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    .end local v2    # "oralGame":Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v3

    invoke-virtual {v3}, Laaj;->c()Z

    move-result v1

    .line 331
    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public enterPlugin(I)I
    .locals 10
    .param p1, "pluginType"    # I

    .prologue
    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, "errorCode":I
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 368
    :try_start_0
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v8, :cond_0

    .line 369
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v8, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 370
    .local v6, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-nez v6, :cond_2

    .line 371
    const v3, 0x8017

    .line 434
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 435
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 439
    :cond_1
    return v3

    .line 373
    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginPackageName()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginVersion()I

    move-result v7

    .line 376
    .local v7, "version":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "com.iflytek.cmcc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 378
    const-string/jumbo v8, "gp_apk"

    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 379
    invoke-static {v5}, Lcom/iflytek/greenplug/client/GreenPlug;->startPackage(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v7    # "version":I
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 435
    iget-object v9, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v8

    .line 382
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .restart local v7    # "version":I
    :cond_4
    const/4 v8, 0x4

    if-ne p1, v8, :cond_5

    const/4 v8, 0x1

    if-gt v8, v7, :cond_5

    const/4 v8, 0x2

    if-gt v7, v8, :cond_5

    .line 384
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string/jumbo v8, "enter"

    const-string/jumbo v9, "lx_menu"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const/high16 v8, 0x14000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    const-string/jumbo v8, "com.iflytek.lockscreen"

    const-string/jumbo v9, "com.iflytek.lockscreen.business.setting.PasswordChooseActivity"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    sget-object v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v8

    const-string/jumbo v9, "LX_100034"

    invoke-virtual {v8, v9}, Lwz;->a(Ljava/lang/String;)V

    .line 396
    sget-object v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 397
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 398
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "PluginManagerImpl"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 401
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v8, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    new-instance v9, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;

    invoke-direct {v9, p0, p1, v5}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILjava/lang/String;)V

    invoke-virtual {v8, v5, v9}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadEnterApkPluginIntent(Ljava/lang/String;Lcom/iflytek/framework/plugin/internal/PluginLoader$onEnterApkPluginIntentCallback;)V

    goto/16 :goto_0

    .line 423
    :cond_6
    invoke-interface {v6}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v0

    .line 424
    .local v0, "abilities":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 425
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/plugin/IPluginAbility;

    .line 426
    .local v1, "ability":Lcom/iflytek/yd/plugin/IPluginAbility;
    if-eqz v1, :cond_0

    .line 427
    sget-object v8, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-interface {v1, v8}, Lcom/iflytek/yd/plugin/IPluginAbility;->enterPlugin(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public getLocalPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    .locals 4
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    const-string/jumbo v2, "PluginManagerImpl"

    const-string/jumbo v3, "getLocalPluginInfo pluginPath is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v2, :cond_2

    .line 478
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v2, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->loadZipPluginInfo(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;

    move-result-object v0

    .line 479
    .local v0, "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    if-nez v0, :cond_0

    .line 480
    const-string/jumbo v2, "PluginManagerImpl"

    const-string/jumbo v3, "getLocalPluginInfo local path pluginInfo is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 481
    goto :goto_0

    .end local v0    # "pluginInfo":Lcom/iflytek/framework/plugin/internal/entities/PluginInfo;
    :cond_2
    move-object v0, v1

    .line 486
    goto :goto_0
.end method

.method public getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 286
    :cond_1
    return-object v0

    .line 280
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v1
.end method

.method public getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;
    .locals 3
    .param p1, "pluginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/iflytek/yd/plugin/IPluginAbility;",
            ">;)",
            "Lcom/iflytek/yd/plugin/IPluginAbility;"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "abilityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/iflytek/yd/plugin/IPluginAbility;>;"
    const/4 v0, 0x0

    .line 256
    .local v0, "ability":Lcom/iflytek/yd/plugin/IPluginAbility;
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    :cond_1
    return-object v0

    .line 262
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v1
.end method

.method public getPluginEntryType(I)I
    .locals 6
    .param p1, "pluginType"    # I

    .prologue
    .line 444
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v4, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v2

    .line 448
    .local v2, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v2, :cond_1

    .line 449
    invoke-interface {v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v1

    .line 450
    .local v1, "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    if-eqz v1, :cond_1

    .line 451
    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginSummary()Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;

    move-result-object v3

    .line 452
    .local v3, "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getEntryType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 453
    invoke-virtual {v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;->getEntryType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 461
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 467
    .end local v1    # "info":Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;
    .end local v2    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v3    # "summary":Lcom/iflytek/framework/plugin/internal/entities/PluginSummary;
    :cond_0
    :goto_0
    return v4

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 462
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 467
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "PluginManagerImpl"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 462
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 462
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v4
.end method

.method public getPluginSkinClass(I)Ljava/lang/String;
    .locals 5
    .param p1, "pluginType"    # I

    .prologue
    .line 340
    const/4 v2, 0x0

    .line 341
    .local v2, "skinClass":Ljava/lang/String;
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v3, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v0

    .line 345
    .local v0, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginInfo()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;

    move-result-object v3

    .line 347
    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginInfo;->getPluginInterface()Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v1

    .line 348
    .local v1, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->getSkinClassPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 354
    .end local v0    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v1    # "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    :cond_1
    return-object v2

    .line 354
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v3
.end method

.method public getPluginState(I)I
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 291
    const/4 v0, -0x1

    .line 292
    .local v0, "state":I
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPluginState(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    :cond_1
    return v0

    .line 298
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v1
.end method

.method public getPlugins(I)Ljava/util/List;
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;>;"
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginLoader:Lcom/iflytek/framework/plugin/internal/PluginLoader;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/plugin/internal/PluginLoader;->getPlugins(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 249
    :cond_1
    return-object v0

    .line 243
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw v1
.end method

.method public handleAppChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    new-instance v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 571
    .local v2, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p2, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 574
    :pswitch_0
    const/4 v3, 0x6

    invoke-direct {p0, v3, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "addMessage":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 576
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 580
    .end local v0    # "addMessage":Landroid/os/Message;
    :pswitch_1
    const/4 v3, 0x7

    invoke-direct {p0, v3, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v1

    .line 581
    .local v1, "deleteMessage":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 582
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public installExistApkPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pluginType"    # I
    .param p3, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 517
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 518
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p3, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 519
    iput-object p1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v2, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iput-object v2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 523
    const/16 v3, 0xb

    invoke-direct {p0, v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 525
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    :cond_0
    return-void
.end method

.method public installPlugin(Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 4
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "pluginType"    # I
    .param p3, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 502
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 503
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p3, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 504
    iput-object p1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginPath:Ljava/lang/String;

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iput-object v2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 508
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 510
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    :cond_0
    return-void
.end method

.method public isLoadFinish()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mLoadFinish:Z

    return v0
.end method

.method public loadAllPlugins(Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 3
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 221
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 222
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p1, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 223
    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 225
    iget-object v2, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v2, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :cond_0
    return-void
.end method

.method public registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "observer"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->registPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 531
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 532
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v2, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iput-object v2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 536
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 537
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 538
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    :cond_0
    return-void
.end method

.method public stopPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 544
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 545
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v2, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    iput-object v2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 549
    const/4 v3, 0x4

    invoke-direct {p0, v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 551
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    :cond_0
    return-void
.end method

.method public syncLoadPlugin(I)I
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->syncProcessLoadPlugin(I)I

    move-result v0

    return v0
.end method

.method public unRegistPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "observer"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginRegister:Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/plugin/internal/PluginRegisterImpl;->unRegistPluginStateObserver(ILcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uninstallPlugin(ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "listener"    # Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .prologue
    .line 557
    new-instance v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;-><init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$1;)V

    .line 558
    .local v1, "pluginMessage":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iput-object p2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 559
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v2, "pluginTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iput-object v2, v1, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 562
    const/4 v3, 0x2

    invoke-direct {p0, v3, v1}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->obtainPluginMessage(ILcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;)Landroid/os/Message;

    move-result-object v0

    .line 563
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 564
    iget-object v3, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->mPluginHandler:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;

    invoke-virtual {v3, v0}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    :cond_0
    return-void
.end method
