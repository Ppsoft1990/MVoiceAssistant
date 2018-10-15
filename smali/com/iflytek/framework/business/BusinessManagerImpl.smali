.class final Lcom/iflytek/framework/business/BusinessManagerImpl;
.super Ljava/lang/Object;
.source "BusinessManagerImpl.java"

# interfaces
.implements Lcom/iflytek/framework/business/interfaces/IBussinessManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;,
        Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;,
        Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_DATA_UPDATE:I = 0x7

.field private static final MSG_INIT:I = 0x5

.field private static final MSG_REGISTPLUGIN:I = 0x4

.field private static final MSG_SPEECHHANDLE:I = 0x6

.field private static final MSG_SYSTEM_EVENT:I = 0x2

.field private static final MSG_UI_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BusinessManagerImpl"


# instance fields
.field private mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMainHandler:Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

.field private mPluginManager:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

.field private mPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

.field private mTranslateBusinessHelper:Layc;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;-><init>(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/BusinessManagerImpl$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mMainHandler:Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

    .line 105
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->sendHandlerMessage(ILjava/lang/Object;I)V

    .line 106
    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->handleUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->handleSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/framework/business/BusinessManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iflytek/framework/business/BusinessManagerImpl;->init()V

    return-void
.end method

.method static synthetic access$500(Lcom/iflytek/framework/business/BusinessManagerImpl;Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->handleDataUpdated(Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->handleSpeech(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/BusinessManagerImpl;
    .param p1, "x1"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->handleRegistPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V

    return-void
.end method

.method private getBusinessContext(Ljava/lang/String;Landroid/content/Context;)Lcom/iflytek/framework/business/entities/HandleContext;
    .locals 5
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    .line 328
    .local v0, "container":Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 330
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 331
    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 332
    .local v1, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    new-instance v3, Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    invoke-direct {v3, p2}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->setContainer(Lcom/iflytek/framework/ui/container/WidgetContainerInterface;)Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    move-result-object v3

    .line 333
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getLxBaseComponents()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->setComponents(Ljava/util/HashMap;)Lcom/iflytek/framework/business/entities/HandleContext$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext$Builder;->build()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    .line 337
    .end local v1    # "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getDefaultSpeechIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    return-object v0
.end method

.method private handleDataUpdated(Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 5
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "dataType"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleDataUpdated focus is empty"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string/jumbo v2, "BusinessManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDataUpdated dataType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/iflytek/framework/business/entities/UpdateDataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getBusinessFocus()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "cacheFocus":Ljava/lang/String;
    const/4 v0, 0x0

    .line 518
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 523
    :goto_1
    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0, p2}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onDataUpdated(Lcom/iflytek/framework/business/entities/UpdateDataType;)V

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    goto :goto_1
.end method

.method private handleRegistPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 4
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 566
    const-string/jumbo v1, "BusinessManagerImpl"

    const-string/jumbo v2, "registBusinessPlugin plugin is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    .line 571
    invoke-virtual {v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 572
    :cond_2
    const-string/jumbo v1, "BusinessManagerImpl"

    const-string/jumbo v2, "registBusinessPlugin plugin kind is not basic"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_3
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 577
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/plugin/IPluginAbility;

    .line 578
    .local v0, "pluginAbility":Lcom/iflytek/yd/plugin/IPluginAbility;
    instance-of v1, v0, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    .end local v0    # "pluginAbility":Lcom/iflytek/yd/plugin/IPluginAbility;
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;->getFocus()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 580
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleSpeech(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 530
    if-nez p1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 535
    :cond_0
    const-string/jumbo v2, "translation"

    iget-object v3, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    iget-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mTranslateBusinessHelper:Layc;

    if-nez v2, :cond_1

    .line 537
    new-instance v2, Layc;

    iget-object v3, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Layc;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mTranslateBusinessHelper:Layc;

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mTranslateBusinessHelper:Layc;

    invoke-virtual {v2, p1}, Layc;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 545
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-nez v0, :cond_3

    .line 546
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "handleSpeechResult businesshandler is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :cond_3
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheBusinessHandler(Lcom/iflytek/framework/business/interfaces/IBusinessHandler;)V

    .line 554
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v2

    iget-object v3, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 555
    invoke-virtual {v2, v3, p1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Ljava/lang/String;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 558
    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getBusinessContext(Ljava/lang/String;Landroid/content/Context;)Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    .line 561
    .local v1, "handleContext":Lcom/iflytek/framework/business/entities/HandleContext;
    invoke-interface {v0, v1, p1}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->handleSpeechResult(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    goto :goto_0
.end method

.method private varargs handleSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 452
    const-string/jumbo v7, "BusinessManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleSystemEventChanged event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v1

    .line 455
    .local v1, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v1, :cond_1

    .line 456
    invoke-interface {v1, p1, p2}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v7

    invoke-virtual {v7}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 462
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v7

    .line 463
    invoke-virtual {v7}, Lqh;->a()Lcom/iflytek/framework/browser/BrowserFrameworkContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/framework/browser/BrowserFrameworkContainer;->getCurrentMainView()Landroid/view/View;

    move-result-object v5

    .line 464
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "baseComHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    instance-of v7, v5, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 467
    check-cast v6, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .line 468
    .local v6, "webPage":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    invoke-virtual {v6}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->getLxBaseComponents()Ljava/util/HashMap;

    move-result-object v0

    .line 469
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;)V

    .line 471
    .end local v6    # "webPage":Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;
    :cond_2
    if-eqz v0, :cond_0

    .line 472
    const-class v7, Lcom/iflytek/framework/business/components/EventComponents;

    .line 473
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/business/components/EventComponents;

    .line 474
    .local v2, "eventComponents":Lcom/iflytek/framework/business/components/EventComponents;
    const-class v7, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 475
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 476
    .local v4, "synthesizeComponents":Lcom/iflytek/framework/business/components/SynthesizeComponents;
    const-class v7, Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    .line 477
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/framework/business/components/MediaPlayerComponents;

    .line 480
    .local v3, "mediaPlayerComponents":Lcom/iflytek/framework/business/components/MediaPlayerComponents;
    sget-object v7, Lcom/iflytek/framework/business/BusinessManagerImpl$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 496
    :goto_1
    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/framework/business/components/EventComponents;->onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 484
    :pswitch_0
    if-eqz v4, :cond_3

    .line 485
    invoke-virtual {v4}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->stop()V

    .line 487
    :cond_3
    if-eqz v3, :cond_4

    .line 488
    invoke-virtual {v3}, Lcom/iflytek/framework/business/components/MediaPlayerComponents;->stopPlayMedia()V

    .line 490
    :cond_4
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v7

    invoke-virtual {v7}, Lahp;->i()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v7

    invoke-interface {v7}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 491
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->h()V

    goto :goto_1

    .line 502
    .end local v0    # "baseComHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    .end local v2    # "eventComponents":Lcom/iflytek/framework/business/components/EventComponents;
    .end local v3    # "mediaPlayerComponents":Lcom/iflytek/framework/business/components/MediaPlayerComponents;
    .end local v4    # "synthesizeComponents":Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .end local v5    # "view":Landroid/view/View;
    :cond_5
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 503
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;)V

    goto/16 :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private varargs handleUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 413
    const-string/jumbo v4, "BusinessManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleEventChanged event = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/UIEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :try_start_0
    sget-object v4, Lcom/iflytek/framework/business/BusinessManagerImpl$1;->$SwitchMap$com$iflytek$framework$business$entities$UIEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/UIEvent;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 418
    :pswitch_0
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 419
    const/4 v4, 0x0

    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    .line 420
    .local v3, "focus":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v1, p2, v4

    check-cast v1, Landroid/content/Context;

    .line 421
    .local v1, "context":Landroid/content/Context;
    iput-object v1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    const-string/jumbo v4, "BusinessManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show_local_business focus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0, v3}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 425
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_0

    .line 426
    invoke-static {v0}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheBusinessHandler(Lcom/iflytek/framework/business/interfaces/IBusinessHandler;)V

    .line 427
    invoke-static {v3}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setBusinessFocus(Ljava/lang/String;)V

    .line 428
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v6}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getBusinessContext(Ljava/lang/String;Landroid/content/Context;)Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, p1, v4}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    .end local v0    # "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "focus":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BusinessManagerImpl"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 435
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 436
    .restart local v0    # "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->reset()V

    .line 438
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, p1, v4}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 1

    .prologue
    .line 408
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mPluginManager:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    .line 409
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 410
    return-void
.end method

.method private onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;)V
    .locals 3
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;

    .prologue
    .line 603
    sget-object v1, Lcom/iflytek/framework/business/BusinessManagerImpl$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 605
    :pswitch_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v0

    .line 607
    .local v0, "isNetConnected":Z
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 608
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Z)V

    .line 610
    :cond_1
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 611
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqh;->a(Z)V

    goto :goto_0

    .line 615
    .end local v0    # "isNetConnected":Z
    :pswitch_1
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->l()V

    goto :goto_0

    .line 620
    :pswitch_2
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->m()V

    goto :goto_0

    .line 625
    :pswitch_3
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 626
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->n()V

    goto/16 :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private sendEventHandlerMessage(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 398
    iget-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mMainHandler:Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 399
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 400
    new-instance v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;-><init>(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/BusinessManagerImpl$1;)V

    .line 401
    .local v0, "eventObj":Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;
    iput-object p2, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->mEvent:Ljava/lang/Object;

    .line 402
    iput-object p3, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$EventObj;->mObjects:[Ljava/lang/Object;

    .line 403
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    iget-object v2, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mMainHandler:Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

    invoke-virtual {v2, v1}, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    return-void
.end method

.method private sendHandlerMessage(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    .line 390
    iget-object v1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mMainHandler:Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 391
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 392
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 394
    iget-object v1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mMainHandler:Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/BusinessManagerImpl$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method


# virtual methods
.method public getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .locals 8
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    const-string/jumbo v6, "BusinessManagerImpl"

    const-string/jumbo v7, "getBusinessHandler focus is empty"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-object v5

    .line 124
    :cond_1
    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 126
    .local v4, "pluginType":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 127
    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mPluginManager:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v3

    .line 128
    .local v3, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v3, :cond_2

    .line 129
    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "kind":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    :try_start_0
    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    .line 134
    .local v0, "ability":Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;
    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;->getBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 137
    .end local v0    # "ability":Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BusinessManagerImpl"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "kind":Ljava/lang/String;
    .end local v3    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v4    # "pluginType":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v6, "smarthome"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    invoke-static {}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->getBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v5

    goto :goto_0
.end method

.method public getPreHandler()Lcom/iflytek/framework/business/interfaces/IResultPreHandler;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultPreHandler;

    invoke-direct {v0}, Lcom/iflytek/framework/business/speech/ResultPreHandler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mPreHandler:Lcom/iflytek/framework/business/interfaces/IResultPreHandler;

    return-object v0
.end method

.method public getResultFilter(Ljava/lang/String;)Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 8
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    const-string/jumbo v6, "BusinessManagerImpl"

    const-string/jumbo v7, "getResultFilter focus is empty"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    :goto_0
    return-object v5

    .line 177
    :cond_1
    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_2

    .line 178
    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mBusinessPluginMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 179
    .local v4, "pluginType":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 180
    iget-object v6, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mPluginManager:Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v3

    .line 181
    .local v3, "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v3, :cond_2

    .line 182
    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "kind":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    invoke-virtual {v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 186
    :try_start_0
    invoke-interface {v3}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginAbilities()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    .line 187
    .local v0, "ability":Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;
    if-eqz v0, :cond_2

    .line 188
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;->getResultFilter()Lcom/iflytek/yd/speech/RecognizeFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 190
    .end local v0    # "ability":Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BusinessManagerImpl"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "kind":Ljava/lang/String;
    .end local v3    # "plugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .end local v4    # "pluginType":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v6, "smarthome"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    invoke-static {}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->getRecognizeFilter()Lcom/iflytek/yd/speech/RecognizeFilter;

    move-result-object v5

    goto :goto_0
.end method

.method public handleSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 249
    const-string/jumbo v0, "BusinessManagerImpl"

    const-string/jumbo v1, "handleSpeechResult asrResult is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/iflytek/framework/business/BusinessManagerImpl;->mContext:Landroid/content/Context;

    .line 253
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->sendHandlerMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public judgeFocusExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessConstants;->getFocusHashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDataUpdated(Ljava/lang/String;Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 3
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "updateType"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 303
    if-nez p2, :cond_0

    .line 304
    const-string/jumbo v1, "BusinessManagerImpl"

    const-string/jumbo v2, "onDataUpdated updateType is null"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;-><init>(Lcom/iflytek/framework/business/BusinessManagerImpl;Lcom/iflytek/framework/business/BusinessManagerImpl$1;)V

    .line 309
    .local v0, "dataObj":Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;
    iput-object p1, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;->mFocus:Ljava/lang/String;

    .line 310
    iput-object p2, v0, Lcom/iflytek/framework/business/BusinessManagerImpl$DataObj;->mUpdateDataType:Lcom/iflytek/framework/business/entities/UpdateDataType;

    .line 311
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->sendHandlerMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public varargs onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    const-string/jumbo v0, "BusinessManagerImpl"

    const-string/jumbo v1, "onSystemEventChanged systemEvent is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->sendEventHandlerMessage(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    .locals 4
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 268
    if-nez p1, :cond_1

    .line 269
    const-string/jumbo v2, "BusinessManagerImpl"

    const-string/jumbo v3, "onEventChanged event is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->show_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne p1, v3, :cond_3

    .line 276
    :cond_2
    const-string/jumbo v1, "BusinessManagerImpl"

    const-string/jumbo v3, "onUIEventChanged event is controlView changed"

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, v2, p1, p2}, Lcom/iflytek/framework/business/BusinessManagerImpl;->sendEventHandlerMessage(ILjava/lang/Object;[Ljava/lang/Object;)V

    move v1, v2

    .line 278
    goto :goto_0

    .line 282
    :cond_3
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 283
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v1, "BusinessManagerImpl"

    const-string/jumbo v2, "onUIEventChanged have local businessHandler"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-interface {v0, p1, p2}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public parseSpeechIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/framework/business/interfaces/IBusinessHandler;->getSpeechIntent()Landroid/content/Intent;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getDefaultSpeechIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public registBaseComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)Ljava/util/HashMap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iflytek/mmp/core/webcore/BrowserCore;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/mmp/core/componentsManager/Components;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p2, :cond_1

    .line 210
    const-string/jumbo v7, "BusinessManagerImpl"

    const-string/jumbo v8, "registBusinessComponents browserCore is null"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x0

    .line 233
    :cond_0
    return-object v1

    .line 214
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v1, "componentHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessConstants;->getBaseComponentNames()Ljava/util/HashMap;

    move-result-object v3

    .line 216
    .local v3, "componentsNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 217
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 218
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 221
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/framework/business/components/AbsComponents;

    .line 224
    .local v2, "components":Lcom/iflytek/framework/business/components/AbsComponents;
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/framework/business/components/AbsComponents;->initComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    .line 225
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 226
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "components":Lcom/iflytek/framework/business/components/AbsComponents;
    :catch_0
    move-exception v4

    .line 228
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BusinessManagerImpl"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v4}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registBusinessComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .param p3, "focus"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0, p3}, Lcom/iflytek/framework/business/BusinessManagerImpl;->getBusinessHandler(Ljava/lang/String;)Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    move-result-object v0

    .line 240
    .local v0, "businessHandler":Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p2, v1, v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 244
    :cond_0
    return-void
.end method

.method public registBusinessPlugin(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 2
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string/jumbo v0, "BusinessManagerImpl"

    const-string/jumbo v1, "registBusinessPlugin plugin is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/iflytek/framework/business/BusinessManagerImpl;->sendHandlerMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method
