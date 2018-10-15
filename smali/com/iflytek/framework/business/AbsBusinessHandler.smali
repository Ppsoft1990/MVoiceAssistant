.class public abstract Lcom/iflytek/framework/business/AbsBusinessHandler;
.super Ljava/lang/Object;
.source "AbsBusinessHandler.java"

# interfaces
.implements Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;
.implements Lcom/iflytek/framework/business/interfaces/IBusinessHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;,
        Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;
    }
.end annotation


# static fields
.field protected static final ADD_VIEW_DELAYED_TIME:J = 0x12cL

.field private static final MSG_ADD_DISPLAY:I = 0x1

.field private static final MSG_TTS_SPEAK:I = 0x2

.field private static final MSG_TTS_STOP:I = 0x3

.field protected static final STATUS_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "Business_AbsBusinessHandler"


# instance fields
.field private mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

.field private mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

.field private mContext:Landroid/content/Context;

.field private mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

.field private mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

.field private mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

.field private mRecognizeComponents:Lcom/iflytek/framework/business/components/RecognizeComponents;

.field private mTtsComponents:Lcom/iflytek/framework/business/components/SynthesizeComponents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/ui/DisplayComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/AbsBusinessHandler;
    .param p1, "x1"    # Lcom/iflytek/framework/ui/DisplayComponent;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->addDisplayComponentTask(Lcom/iflytek/framework/ui/DisplayComponent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/framework/business/AbsBusinessHandler;)Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/AbsBusinessHandler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mTtsComponents:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v0
.end method

.method private addDisplayComponentTask(Lcom/iflytek/framework/ui/DisplayComponent;)V
    .locals 1
    .param p1, "displayComponent"    # Lcom/iflytek/framework/ui/DisplayComponent;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/iflytek/viafly/Home;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/framework/ui/container/WidgetContainerInterface;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;)V

    .line 425
    :cond_0
    return-void
.end method

.method private filterResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 3
    .param p1, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 457
    if-nez p1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    iget-object v2, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getResultFilter(Ljava/lang/String;)Lcom/iflytek/yd/speech/RecognizeFilter;

    move-result-object v0

    .line 462
    .local v0, "recognizeFilter":Lcom/iflytek/yd/speech/RecognizeFilter;
    invoke-virtual {v0, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

    .line 464
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

    invoke-virtual {p0, p1, v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onFinishFilter(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 467
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 468
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 470
    :cond_2
    iget-object v1, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-static {v1}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setCacheSpeechResultFocus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 2
    .param p1, "context"    # Lcom/iflytek/framework/business/entities/HandleContext;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    .line 434
    iput-object p2, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 435
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    .line 440
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    instance-of v0, p0, Labx;

    if-eqz v0, :cond_1

    .line 446
    invoke-static {}, Labb;->l()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    .line 449
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mBussinessManager:Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    .line 450
    return-void
.end method

.method private judgeFilterResultLegal(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 4
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 481
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 482
    iget-object v0, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 485
    .local v0, "focus":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "status":Ljava/lang/String;
    const-string/jumbo v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 509
    .end local v0    # "focus":Ljava/lang/String;
    .end local v1    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 494
    .restart local v0    # "focus":Ljava/lang/String;
    .restart local v1    # "status":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onFail(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    invoke-virtual {p0, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTip(Lcom/iflytek/yd/speech/FilterResult;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "tip":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 497
    invoke-virtual {p0, v2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->showStatusError(Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->showNoResult()V

    goto :goto_0

    .line 504
    .end local v1    # "status":Ljava/lang/String;
    .end local v2    # "tip":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->showNoResult()V

    goto :goto_0

    .line 507
    .end local v0    # "focus":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->showNoResult()V

    goto :goto_0
.end method

.method private sendMessge(ILcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;J)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "resultMessage"    # Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    .param p3, "delayedTime"    # J

    .prologue
    .line 412
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    if-nez v1, :cond_0

    .line 413
    new-instance v1, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V

    iput-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 417
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    invoke-virtual {v1, v0, p3, p4}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 419
    return-void
.end method


# virtual methods
.method public final addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V
    .locals 2
    .param p1, "displayComponent"    # Lcom/iflytek/framework/ui/DisplayComponent;
    .param p2, "delayedTime"    # J

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V

    .line 254
    .local v0, "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    iput-object p1, v0, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->mComponent:Lcom/iflytek/framework/ui/DisplayComponent;

    .line 255
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/iflytek/framework/business/AbsBusinessHandler;->sendMessge(ILcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;J)V

    .line 257
    .end local v0    # "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    :cond_0
    return-void
.end method

.method public final addQuestionView(Ljava/lang/String;)V
    .locals 4
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    if-eqz v2, :cond_1

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    new-instance v1, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;

    .end local v1    # "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    iget-object v2, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;-><init>(Landroid/content/Context;)V

    .line 236
    .restart local v1    # "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {v1, p1}, Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;->setText(Ljava/lang/String;)V

    .line 239
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/framework/business/AbsBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "questionView":Lcom/iflytek/framework/ui/question/WidgetCustomerQuestionView;
    :cond_1
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Business_AbsBusinessHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearBusinessData()V
    .locals 2

    .prologue
    .line 323
    const-string/jumbo v0, "Business_AbsBusinessHandler"

    const-string/jumbo v1, "clearBusinessData"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/entities/HandleContext;->release()V

    .line 327
    :cond_0
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    .line 328
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onClearBusiness()V

    .line 329
    return-void
.end method

.method public final createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .locals 3
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 260
    new-instance v0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;-><init>(Landroid/content/Context;Lcom/iflytek/framework/ui/container/WidgetContainerInterface;Lcom/iflytek/yd/speech/FilterResult;)V

    return-object v0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const-string/jumbo v3, "Business_AbsBusinessHandler"

    const-string/jumbo v4, "exec action is empty"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return-object v2

    .line 339
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "args":Lorg/json/JSONArray;
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 341
    .end local v0    # "args":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_AbsBusinessHandler"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mAsrResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    return-object v0
.end method

.method public final getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;
    .locals 2

    .prologue
    .line 202
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mRecognizeComponents:Lcom/iflytek/framework/business/components/RecognizeComponents;

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getComponents()Ljava/util/HashMap;

    move-result-object v0

    .line 205
    .local v0, "comHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/iflytek/framework/business/components/RecognizeComponents;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-class v1, Lcom/iflytek/framework/business/components/RecognizeComponents;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/business/components/RecognizeComponents;

    iput-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mRecognizeComponents:Lcom/iflytek/framework/business/components/RecognizeComponents;

    .line 213
    .end local v0    # "comHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mRecognizeComponents:Lcom/iflytek/framework/business/components/RecognizeComponents;

    return-object v1
.end method

.method public getSpeechIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "local_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method protected final getTip(Lcom/iflytek/yd/speech/FilterResult;)Ljava/lang/String;
    .locals 2
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 217
    const-string/jumbo v0, ""

    .line 218
    .local v0, "tip":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/FilterResult;->getTip()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/FilterResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_0
    return-object v0
.end method

.method protected final getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mTtsComponents:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getComponents()Ljava/util/HashMap;

    move-result-object v0

    .line 185
    .local v0, "comHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    if-eqz v0, :cond_0

    const-class v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-class v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/business/components/SynthesizeComponents;

    iput-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mTtsComponents:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    .line 189
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mTtsComponents:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    invoke-virtual {v1, p0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->setComponentListener(Lcom/iflytek/framework/business/components/SynthesizeComponents$TtsComponentListener;)V

    .line 194
    .end local v0    # "comHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;>;"
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mTtsComponents:Lcom/iflytek/framework/business/components/SynthesizeComponents;

    return-object v1
.end method

.method public final handleSpeechResult(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 1
    .param p1, "context"    # Lcom/iflytek/framework/business/entities/HandleContext;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->init(Lcom/iflytek/framework/business/entities/HandleContext;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->filterResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 92
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

    invoke-direct {p0, p2, v0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->judgeFilterResultLegal(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V

    .line 93
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 558
    return-void
.end method

.method public final isTtsSpeaking()Z
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getTtsComponents()Lcom/iflytek/framework/business/components/SynthesizeComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/SynthesizeComponents;->isSpeaking()Z

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onClearBusiness()V
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public abstract onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end method

.method public abstract onFail(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
.end method

.method public abstract onFinishFilter(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
.end method

.method public abstract onShow(Lcom/iflytek/framework/business/entities/HandleContext;)V
.end method

.method public abstract onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
.end method

.method public varargs abstract onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
.end method

.method public final varargs onSystemEventChanged(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string/jumbo v0, "Business_AbsBusinessHandler"

    const-string/jumbo v1, "onEventChanged event is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string/jumbo v0, "Business_AbsBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEventChanged event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v0, Lcom/iflytek/framework/business/AbsBusinessHandler$1;->$SwitchMap$com$iflytek$framework$business$entities$SystemEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/SystemEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsStop()V

    .line 157
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/RecognizeComponents;->stopRecognize()V

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public varargs abstract onUIEventCallback(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
.end method

.method public final varargs onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "event"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string/jumbo v2, "Business_AbsBusinessHandler"

    const-string/jumbo v3, "onEventChanged event is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string/jumbo v1, "Business_AbsBusinessHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEventChanged event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/UIEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/iflytek/framework/business/AbsBusinessHandler$1;->$SwitchMap$com$iflytek$framework$business$entities$UIEvent:[I

    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/UIEvent;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onUIEventCallback(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsStop()V

    .line 117
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->clearBusinessData()V

    goto :goto_1

    .line 120
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsStop()V

    goto :goto_1

    .line 124
    :pswitch_2
    if-eqz p2, :cond_1

    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_1

    .line 125
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Lcom/iflytek/framework/business/entities/HandleContext;

    iput-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    .line 126
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mContext:Landroid/content/Context;

    .line 127
    iget-object v1, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mHandleContext:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onShow(Lcom/iflytek/framework/business/entities/HandleContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    move v1, v2

    .line 132
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_AbsBusinessHandler"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsStop()V

    .line 135
    invoke-virtual {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->onCancel()V

    move v1, v2

    .line 136
    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final postOnUIHandler(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayed"    # J

    .prologue
    .line 307
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/iflytek/framework/business/AbsBusinessHandler;->mNormalHandler:Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/business/AbsBusinessHandler$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_1
    return-void
.end method

.method public showNoResult()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public showStatusError(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 316
    return-void
.end method

.method public final ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "delayedTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    :try_start_0
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->u()Lqr;

    move-result-object v2

    invoke-virtual {v2}, Lqr;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    new-instance v1, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;-><init>(Lcom/iflytek/framework/business/AbsBusinessHandler;Lcom/iflytek/framework/business/AbsBusinessHandler$1;)V

    .line 278
    .local v1, "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    iput-object p1, v1, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->mTtsContent:Ljava/lang/String;

    .line 279
    iput-object p2, v1, Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;->mTtsParams:Ljava/util/HashMap;

    .line 280
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/iflytek/framework/business/AbsBusinessHandler;->sendMessge(ILcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v1    # "resultMessage":Lcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Business_AbsBusinessHandler"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final ttsStop()V
    .locals 4

    .prologue
    .line 291
    const/4 v0, 0x3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iflytek/framework/business/AbsBusinessHandler;->sendMessge(ILcom/iflytek/framework/business/AbsBusinessHandler$ResultMessage;J)V

    .line 292
    return-void
.end method
