.class public Lcom/iflytek/blc/core/BlcServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/core/BlcService;


# static fields
.field private static b:Lcom/iflytek/blc/core/BlcService;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/iflytek/blc/jni/JniBlc;

.field private d:Lcom/iflytek/blc/core/PlatformInfoProvider;

.field private e:Lcom/iflytek/blc/core/NetworkStateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/blc/core/BlcServiceImpl;

    invoke-direct {v0}, Lcom/iflytek/blc/core/BlcServiceImpl;-><init>()V

    sput-object v0, Lcom/iflytek/blc/core/BlcServiceImpl;->b:Lcom/iflytek/blc/core/BlcService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "BlcServiceImpl"

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<clientconfig>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<aid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</aid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<downfrom>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</downfrom>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</version>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<osid>android</osid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<serverurl>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</serverurl>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<logurl>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</logurl>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<noticeurl>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</noticeurl>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</clientconfig>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/blc/core/SimInfoHelper;)V
    .locals 3

    if-nez p1, :cond_1

    const-string/jumbo v0, "BlcServiceImpl"

    const-string/jumbo v1, "initializeFromAssets()---->context is null"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p2, p3, p4}, Lcom/iflytek/blc/jni/JniBlc;->initializeByContent(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "BlcServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "blcDataFilePath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nblcConfigContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iflytek/blc/core/PlatformInfoProvider;

    invoke-direct {v0, p1, p5}, Lcom/iflytek/blc/core/PlatformInfoProvider;-><init>(Landroid/content/Context;Lcom/iflytek/blc/core/SimInfoHelper;)V

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    iget-object v1, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/jni/JniBlc;->setPlatformInfoProvider(Lcom/iflytek/blc/core/PlatformInfoProvider;)V

    :cond_2
    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->e:Lcom/iflytek/blc/core/NetworkStateProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/blc/core/NetworkStateProvider;

    invoke-direct {v0, p1}, Lcom/iflytek/blc/core/NetworkStateProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->e:Lcom/iflytek/blc/core/NetworkStateProvider;

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    iget-object v1, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->e:Lcom/iflytek/blc/core/NetworkStateProvider;

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/jni/JniBlc;->setNetworkStateProvider(Lcom/iflytek/blc/core/NetworkStateProvider;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/iflytek/blc/core/BlcService;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/core/BlcServiceImpl;->b:Lcom/iflytek/blc/core/BlcService;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0}, Lcom/iflytek/blc/jni/JniBlc;->destroy()V

    return-void
.end method

.method public enterForeground()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0}, Lcom/iflytek/blc/jni/JniBlc;->enterForeground()V

    return-void
.end method

.method public forceLogUpload()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0}, Lcom/iflytek/blc/jni/JniBlc;->forceLogUpload()V

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0}, Lcom/iflytek/blc/jni/JniBlc;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/iflytek/blc/jni/JniBlc;

    invoke-direct {v0}, Lcom/iflytek/blc/jni/JniBlc;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-static/range {p3 .. p8}, Lcom/iflytek/blc/core/BlcServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/blc/core/BlcServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/blc/core/SimInfoHelper;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/blc/core/SimInfoHelper;)V
    .locals 6

    new-instance v0, Lcom/iflytek/blc/jni/JniBlc;

    invoke-direct {v0}, Lcom/iflytek/blc/jni/JniBlc;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-static/range {p3 .. p8}, Lcom/iflytek/blc/core/BlcServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/blc/core/BlcServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/blc/core/SimInfoHelper;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Lcom/iflytek/blc/jni/JniBlc;

    invoke-direct {v0}, Lcom/iflytek/blc/jni/JniBlc;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-static/range {p3 .. p8}, Lcom/iflytek/blc/core/BlcServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p9

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/blc/core/BlcServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/blc/core/SimInfoHelper;)V

    return-void
.end method

.method public saveCachedLogs()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0}, Lcom/iflytek/blc/jni/JniBlc;->saveCachedLogs()V

    return-void
.end method

.method public setAndroidid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setAndroidid(Ljava/lang/String;)V

    return-void
.end method

.method public setCellid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setCellid(Ljava/lang/String;)V

    return-void
.end method

.method public setClientCtrlCodeDefaultValue(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    new-array v4, v0, [I

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aput-object v1, v5, v2

    if-nez v0, :cond_0

    move v0, v3

    :goto_1
    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    move-object v1, v5

    :goto_2
    iget-object v2, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v2, v1, v0}, Lcom/iflytek/blc/jni/JniBlc;->setClientCtrlCodeDefaultValue([Ljava/lang/String;[I)V

    return-void

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method public setConnTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setConnTimeout(I)V

    return-void
.end method

.method public setCpu(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setCpu(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugable(Z)V
    .locals 1

    invoke-static {p1}, Lcom/iflytek/blc/util/Logger;->setDebugable(Z)V

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setDebugable(Z)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setMac(Ljava/lang/String;)V

    return-void
.end method

.method public setRecvTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setRecvTimeout(I)V

    return-void
.end method

.method public setSendTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setSendTimeout(I)V

    return-void
.end method

.method public setSimInfoHelper(Landroid/content/Context;Lcom/iflytek/blc/core/SimInfoHelper;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/blc/core/PlatformInfoProvider;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/blc/core/PlatformInfoProvider;-><init>(Landroid/content/Context;Lcom/iflytek/blc/core/SimInfoHelper;)V

    iput-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    iget-object v1, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    invoke-virtual {v0, v1}, Lcom/iflytek/blc/jni/JniBlc;->setPlatformInfoProvider(Lcom/iflytek/blc/core/PlatformInfoProvider;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->d:Lcom/iflytek/blc/core/PlatformInfoProvider;

    invoke-virtual {v0, p2}, Lcom/iflytek/blc/core/PlatformInfoProvider;->setSimInfoHelper(Lcom/iflytek/blc/core/SimInfoHelper;)V

    goto :goto_0
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/jni/JniBlc;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public triggerLogUpload()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/BlcServiceImpl;->c:Lcom/iflytek/blc/jni/JniBlc;

    invoke-virtual {v0}, Lcom/iflytek/blc/jni/JniBlc;->triggerLogUpload()V

    return-void
.end method
