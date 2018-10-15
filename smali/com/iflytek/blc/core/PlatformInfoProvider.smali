.class public Lcom/iflytek/blc/core/PlatformInfoProvider;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/blc/core/SimInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;

    invoke-direct {v0, p1}, Lcom/iflytek/blc/core/DefaultSimInfoObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/blc/core/SimInfoHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Lcom/iflytek/blc/core/DefaultSimInfoObserver;

    invoke-direct {v0, p1}, Lcom/iflytek/blc/core/DefaultSimInfoObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    goto :goto_0
.end method


# virtual methods
.method public getAccessPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    invoke-interface {v0}, Lcom/iflytek/blc/core/SimInfoHelper;->getAccessPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    invoke-interface {v0}, Lcom/iflytek/blc/core/SimInfoHelper;->getCaller()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    invoke-interface {v0}, Lcom/iflytek/blc/core/SimInfoHelper;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    invoke-interface {v0}, Lcom/iflytek/blc/core/SimInfoHelper;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    invoke-interface {v0}, Lcom/iflytek/blc/core/SimInfoHelper;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSimInfoHelper(Lcom/iflytek/blc/core/SimInfoHelper;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/iflytek/blc/core/PlatformInfoProvider;->a:Lcom/iflytek/blc/core/SimInfoHelper;

    goto :goto_0
.end method
