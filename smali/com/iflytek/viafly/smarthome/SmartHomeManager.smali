.class public Lcom/iflytek/viafly/smarthome/SmartHomeManager;
.super Ljava/lang/Object;
.source "SmartHomeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartHomeManager"

.field private static mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeManager;


# instance fields
.field private mActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mAppStartObserver:Lcom/iflytek/viafly/smarthome/AppStartObserver;

.field private mAppUrlObserver:Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mLoginListener:Lcom/iflytek/viafly/smarthome/base/LoginListener;

.field private mObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/smarthome/base/SmartObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOsVersionCode:I

.field private mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

.field private mSupportDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mXHomeService:Lcom/iflytek/viafly/smarthome/XHomeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLock:Ljava/lang/Object;

    .line 548
    new-instance v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager$1;-><init>(Lcom/iflytek/viafly/smarthome/SmartHomeManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mConnection:Landroid/content/ServiceConnection;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Lhl;->k()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    .line 81
    iget v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mActions:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mObservers:Ljava/util/Map;

    goto :goto_0
.end method

.method private LaunchSmartHomeService()V
    .locals 4

    .prologue
    .line 573
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 574
    .local v1, "runtime":Ljava/lang/Runtime;
    const-string/jumbo v2, "am startservice com.iflytek.cmcc.xhome/com.iflytek.cmcc.xhome.XHomeService"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 575
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "LaunchSmartHomeService"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v1    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "startSmartHomeApp error"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/smarthome/SmartHomeManager;Lcom/iflytek/viafly/smarthome/XHomeInterface;)Lcom/iflytek/viafly/smarthome/XHomeInterface;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smarthome/SmartHomeManager;
    .param p1, "x1"    # Lcom/iflytek/viafly/smarthome/XHomeInterface;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mXHomeService:Lcom/iflytek/viafly/smarthome/XHomeInterface;

    return-object p1
.end method

.method private bindXHomeService()V
    .locals 5

    .prologue
    .line 561
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mXHomeService:Lcom/iflytek/viafly/smarthome/XHomeInterface;

    if-nez v2, :cond_0

    .line 562
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 563
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.viafly.smarthome.XHomeInterface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.xhome"

    const-string/jumbo v3, "com.iflytek.cmcc.xhome.XHomeService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 567
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 569
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private enrollObserver(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V
    .locals 4
    .param p1, "request"    # Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .param p2, "observer"    # Lcom/iflytek/viafly/smarthome/base/SmartObserver;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mActions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->getCmdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string/jumbo v0, "SmartHomeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register request cmdId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->getCmdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mObservers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->getCmdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    if-nez v0, :cond_1

    .line 97
    const-class v1, Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mInstance:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handelRenameResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string/jumbo v0, "SmartHomeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handelRenameResponse | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method private handleAppStartResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 534
    const-string/jumbo v1, "SmartHomeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetAppCtrlResponse | response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {p1}, Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;->parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;

    move-result-object v0

    .line 537
    .local v0, "response":Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;
    if-nez p1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mAppStartObserver:Lcom/iflytek/viafly/smarthome/AppStartObserver;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mAppStartObserver:Lcom/iflytek/viafly/smarthome/AppStartObserver;

    invoke-interface {v1, v0}, Lcom/iflytek/viafly/smarthome/AppStartObserver;->onAppStartResponse(Lcom/iflytek/viafly/smarthome/protocol/AppStartResponse;)V

    goto :goto_0
.end method

.method private handleGetAppCtrlResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string/jumbo v1, "SmartHomeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetAppCtrlResponse | response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {p1}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;

    move-result-object v0

    .line 481
    .local v0, "response":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;
    if-nez p1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->updateDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mAppUrlObserver:Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mAppUrlObserver:Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;

    invoke-interface {v1, v0}, Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;->onResponse(Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlResponse;)V

    goto :goto_0
.end method

.method private handleGetSupportDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 450
    const-string/jumbo v1, "SmartHomeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetSupportDevice | response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {p1}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;

    move-result-object v0

    .line 453
    .local v0, "response":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;
    if-nez p1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceResponse;->getSupportDevices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mSupportDevices:Ljava/util/List;

    goto :goto_0
.end method

.method private handleJdLoginResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string/jumbo v1, "SmartHomeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleJdLoginResponse | response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, "loginResponse":Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/JdLoginResponse;->isLoginSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const-string/jumbo v1, "SmartHomeManager"

    const-string/jumbo v2, "JD Login success"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->onJdLoginSuccess()V

    .line 653
    :goto_0
    return-void

    .line 650
    :cond_0
    const-string/jumbo v1, "SmartHomeManager"

    const-string/jumbo v2, "JD Login fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLoginResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 621
    const-string/jumbo v2, "SmartHomeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleLoginResponse | response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "loginResponse":Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLoginListener:Lcom/iflytek/viafly/smarthome/base/LoginListener;

    if-nez v2, :cond_0

    .line 639
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/LoginResponse;->getStatus()Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v1

    .line 629
    .local v1, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    if-nez v1, :cond_1

    .line 630
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLoginListener:Lcom/iflytek/viafly/smarthome/base/LoginListener;

    const/16 v3, 0x270f

    const-string/jumbo v4, "failed"

    invoke-interface {v2, v3, v4}, Lcom/iflytek/viafly/smarthome/base/LoginListener;->onLoginFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_1
    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLoginListener:Lcom/iflytek/viafly/smarthome/base/LoginListener;

    invoke-interface {v2}, Lcom/iflytek/viafly/smarthome/base/LoginListener;->onLoginSuccess()V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLoginListener:Lcom/iflytek/viafly/smarthome/base/LoginListener;

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/base/Status;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/iflytek/viafly/smarthome/base/LoginListener;->onLoginFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleScanResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    const-string/jumbo v4, "SmartHomeManager"

    const-string/jumbo v5, "handleScanResponse | deviceId or resp is null"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    if-eqz v4, :cond_0

    .line 216
    new-instance v2, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;

    invoke-direct {v2, p1}, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "scanResp":Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->getStatus()Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v3

    .line 218
    .local v3, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    if-nez v3, :cond_2

    .line 219
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    const/16 v5, -0x3e8

    const-string/jumbo v6, "\u7f51\u7edc\u5f02\u5e38"

    invoke-interface {v4, v5, v6}, Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v5

    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/Status;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->getFoundCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 229
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/protocol/ScanResponse;->getDeviceFounds()Ljava/util/List;

    move-result-object v1

    .line 230
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 231
    .local v0, "device":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    invoke-interface {v5, v0}, Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;->onFound(Lcom/iflytek/viafly/smarthome/base/DeviceItem;)V

    goto :goto_1

    .line 233
    .end local v0    # "device":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :cond_4
    iput-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mDevices:Ljava/util/List;

    .line 235
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smarthome/base/DeviceItem;>;"
    :cond_5
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;->onCompleted(Z)V

    goto :goto_0
.end method

.method private handleStopScanResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string/jumbo v0, "SmartHomeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStopScanResponse | resp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private handleVoiceResponse(Ljava/lang/String;)V
    .locals 8
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-static {p1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->parse(Ljava/lang/String;)Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;

    move-result-object v4

    .line 249
    .local v4, "voiceResp":Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;
    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->getCmdId()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "cmdId":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mObservers:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/smarthome/base/SmartObserver;

    .line 255
    .local v1, "observer":Lcom/iflytek/viafly/smarthome/base/SmartObserver;
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mActions:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;

    .line 256
    .local v3, "voiceReq":Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    if-nez v3, :cond_2

    .line 257
    const-string/jumbo v5, "SmartHomeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleVoiceResponse | it does not find request(cmdId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;->getStatus()Lcom/iflytek/viafly/smarthome/base/Status;

    move-result-object v2

    .line 264
    .local v2, "status":Lcom/iflytek/viafly/smarthome/base/Status;
    if-nez v2, :cond_3

    .line 265
    const/16 v5, -0x3e8

    const-string/jumbo v6, "\u7f51\u7edc\u5f02\u5e38"

    invoke-interface {v1, v5, v6, v3, v4}, Lcom/iflytek/viafly/smarthome/base/SmartObserver;->onFailed(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;)V

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/Status;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v3, v4}, Lcom/iflytek/viafly/smarthome/base/SmartObserver;->onFailed(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;)V

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/Status;->getCode()I

    move-result v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/base/Status;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v3, v4}, Lcom/iflytek/viafly/smarthome/base/SmartObserver;->onSuccess(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/protocol/VoiceResponse;)V

    .line 277
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->removeObserver(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeObserver(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmdId"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mActions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mObservers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 412
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.smarthome.request"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.xhome"

    const-string/jumbo v3, "com.iflytek.cmcc.xhome.XHomeService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string/jumbo v2, "SmartHomeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRequest | request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "sendRequest | request fail intent not handed"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startGetSupportDevices()V
    .locals 3

    .prologue
    .line 438
    const-string/jumbo v1, "SmartHomeManager"

    const-string/jumbo v2, "getSupportDevices | start get support devices"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;-><init>()V

    .line 440
    .local v0, "request":Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/GetSupportDeviceRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private updateDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {p2}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    :cond_0
    return-void

    .line 498
    :cond_1
    const/4 v2, -0x1

    .line 500
    .local v2, "id":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 505
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .line 506
    .local v3, "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceId()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 507
    invoke-virtual {v3}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->getDeviceCtrl()Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;

    move-result-object v0

    .line 508
    .local v0, "ctrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;->setDownloadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 501
    .end local v0    # "ctrl":Lcom/iflytek/viafly/smarthome/base/DeviceCtrl;
    .end local v3    # "item":Lcom/iflytek/viafly/smarthome/base/DeviceItem;
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "SmartHomeManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public clearFoundDevices()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public execute(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V
    .locals 3
    .param p1, "voiceRequest"    # Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;
    .param p2, "observer"    # Lcom/iflytek/viafly/smarthome/base/SmartObserver;

    .prologue
    .line 147
    iget v1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->enrollObserver(Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;Lcom/iflytek/viafly/smarthome/base/SmartObserver;)V

    .line 156
    invoke-virtual {p1}, Lcom/iflytek/viafly/smarthome/protocol/VoiceRequest;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "request":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFoundDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 320
    :goto_0
    return-object v2

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mXHomeService:Lcom/iflytek/viafly/smarthome/XHomeInterface;

    if-nez v2, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->bindXHomeService()V

    .line 302
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mXHomeService:Lcom/iflytek/viafly/smarthome/XHomeInterface;

    if-nez v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mDevices:Ljava/util/List;

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "getFoundDevices | Thread.sleep exception"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 313
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mXHomeService:Lcom/iflytek/viafly/smarthome/XHomeInterface;

    invoke-interface {v2}, Lcom/iflytek/viafly/smarthome/XHomeInterface;->getDevices()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "jsonDevices":Ljava/lang/String;
    const-string/jumbo v2, "SmartHomeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFoundDevices | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {v1}, Lcom/iflytek/viafly/smarthome/base/DeviceItem;->parser(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mDevices:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    .end local v1    # "jsonDevices":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mDevices:Ljava/util/List;

    goto :goto_0

    .line 316
    :catch_1
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getSupportDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smarthome/base/SupportDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mSupportDevices:Ljava/util/List;

    return-object v0
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string/jumbo v3, "SmartHomeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleResponse | resp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v3, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_0

    .line 195
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    sget-object v3, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->FOUND_ACTION_RESP:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleScanResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "SmartHomeManager"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->STOP_SCAN_RESPONSE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleStopScanResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    const-string/jumbo v3, "RenameResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handelRenameResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string/jumbo v3, "VoiceResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleVoiceResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    const-string/jumbo v3, "GetSupportDeviceResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleGetSupportDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_5
    const-string/jumbo v3, "GetAppCtrlResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 181
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleGetAppCtrlResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_6
    const-string/jumbo v3, "AppStartResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleAppStartResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_7
    const-string/jumbo v3, "LoginResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 185
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleLoginResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_8
    const-string/jumbo v3, "JdLoginResponse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 187
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->handleJdLoginResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_9
    const-string/jumbo v3, "SmartHomeManager"

    const-string/jumbo v4, "handleResponse | no handle"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public initController(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iget v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 93
    :cond_0
    return-void
.end method

.method public loginMideaAccount(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/LoginListener;)V
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginListener"    # Lcom/iflytek/viafly/smarthome/base/LoginListener;

    .prologue
    const/16 v9, 0x270f

    .line 589
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 590
    invoke-static {p2}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 591
    :cond_0
    if-eqz p3, :cond_1

    .line 592
    const-string/jumbo v5, "failed"

    invoke-interface {p3, v9, v5}, Lcom/iflytek/viafly/smarthome/base/LoginListener;->onLoginFailed(ILjava/lang/String;)V

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 598
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->LaunchSmartHomeService()V

    .line 600
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mLoginListener:Lcom/iflytek/viafly/smarthome/base/LoginListener;

    .line 601
    new-instance v2, Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;

    invoke-direct {v2}, Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;-><init>()V

    .line 602
    .local v2, "loginRequest":Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 603
    .local v6, "time":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, "strTime":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->MIDEA_SECRET_KEY:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v5, v8}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;->setUsername(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v5, v8}, Lcom/iflytek/yd/util/security/DESEncrypter;->desEncrypt([B[B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;->setPassword(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2, v6, v7}, Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;->setTime(J)V

    .line 609
    invoke-virtual {v2}, Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "request":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "loginRequest":Lcom/iflytek/viafly/smarthome/protocol/LoginRequest;
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "strTime":Ljava/lang/String;
    .end local v6    # "time":J
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SmartHomeManager"

    const-string/jumbo v8, "loginMideaAccount error"

    invoke-static {v5, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    if-eqz p3, :cond_1

    .line 614
    const-string/jumbo v5, "failed"

    invoke-interface {p3, v9, v5}, Lcom/iflytek/viafly/smarthome/base/LoginListener;->onLoginFailed(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onGetAppUrl(Ljava/lang/String;Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;)V
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;

    .prologue
    .line 466
    iget v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 475
    :goto_0
    return-void

    .line 470
    :cond_0
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mAppUrlObserver:Lcom/iflytek/viafly/smarthome/GetAppUrlObserver;

    .line 472
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "appCtrlReq":Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/GetAppCtrlRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "aliace"    # Ljava/lang/String;

    .prologue
    .line 330
    iget v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 342
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    :cond_1
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "saveDeviceAliace | identity or aliace is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v0, "renameReq":Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/RenameRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendConnectBC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "wifiName"    # Ljava/lang/String;
    .param p2, "wifiPW"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v5, "SmartHomeManager"

    const-string/jumbo v6, "sendConnectBC"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v5, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_0

    .line 374
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v4, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;

    invoke-direct {v4}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;-><init>()V

    .line 357
    .local v4, "request":Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;
    const-string/jumbo v5, "connectDevice"

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->setAction(Ljava/lang/String;)V

    .line 358
    sget-object v5, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->IFLY_VOICE_BOX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->setDeviceId(Ljava/lang/String;)V

    .line 360
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "wifiName"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v5, "wifiPW"

    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v0, Lcom/iflytek/viafly/smarthome/base/Command;

    const-string/jumbo v5, "connectDevice"

    invoke-direct {v0, v5, v2}, Lcom/iflytek/viafly/smarthome/base/Command;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    .local v0, "command":Lcom/iflytek/viafly/smarthome/base/Command;
    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->setCommand(Lcom/iflytek/viafly/smarthome/base/Command;)V

    .line 366
    new-instance v1, Landroid/content/Intent;

    sget-object v5, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->BC_ACTION_REQ:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Lcom/iflytek/viafly/smarthome/protocol/DeviceRequest;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "req":Ljava/lang/String;
    sget-object v5, Lcom/iflytek/viafly/smarthome/base/SmartDefine;->REQUEST:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v5, "SmartHomeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendConnectBC | request = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    const-string/jumbo v5, "SmartHomeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendConnectBC | request = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startApp(ILjava/lang/String;Lcom/iflytek/viafly/smarthome/AppStartObserver;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "equipment"    # Ljava/lang/String;
    .param p3, "observer"    # Lcom/iflytek/viafly/smarthome/AppStartObserver;

    .prologue
    .line 522
    iget v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 531
    :goto_0
    return-void

    .line 526
    :cond_0
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mAppStartObserver:Lcom/iflytek/viafly/smarthome/AppStartObserver;

    .line 527
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;-><init>(ILjava/lang/String;)V

    .line 529
    .local v0, "appStartReq":Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/AppStartRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLoginJd(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    .prologue
    .line 108
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "startLoginJd"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    .line 110
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/JDLoginRequest;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/protocol/JDLoginRequest;-><init>()V

    .line 111
    .local v0, "req":Lcom/iflytek/viafly/smarthome/protocol/JDLoginRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/JDLoginRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public startScan(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    .prologue
    .line 117
    iget v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mScanObserver:Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    .line 122
    const-string/jumbo v2, "SmartHomeManager"

    const-string/jumbo v3, "startScan"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->LaunchSmartHomeService()V

    .line 125
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;-><init>()V

    .line 126
    .local v0, "req":Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/ScanRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->startGetSupportDevices()V

    .line 133
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->bindXHomeService()V

    goto :goto_0
.end method

.method public stopScan(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;

    .prologue
    .line 137
    iget v2, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->mOsVersionCode:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;-><init>()V

    .line 142
    .local v0, "req":Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/protocol/StopScanRequest;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->sendRequest(Ljava/lang/String;)V

    goto :goto_0
.end method
