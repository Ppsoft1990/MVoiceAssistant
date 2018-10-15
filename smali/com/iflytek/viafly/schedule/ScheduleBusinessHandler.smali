.class public final Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
.super Lcom/iflytek/framework/business/AbsBusinessHandler;
.source "ScheduleBusinessHandler.java"


# static fields
.field private static final COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ScheduleBusinessHandler"


# instance fields
.field mBusinessChannelHandlerHelper:Lauh;

.field private mCount:I

.field mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

.field mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

.field private mNeedChoose:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondConfirmFlag:Z

.field private mSpeechIntent:Landroid/content/Intent;

.field private mTimer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;-><init>()V

    .line 366
    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mNeedChoose:Z

    .line 370
    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSecondConfirmFlag:Z

    .line 562
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$4;-><init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/ui/DisplayComponent;J)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p1, "x1"    # Lcom/iflytek/framework/ui/DisplayComponent;
    .param p2, "x2"    # J

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # J

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    return-void
.end method


# virtual methods
.method public final addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V
    .locals 0
    .param p1, "displayComponent"    # Lcom/iflytek/framework/ui/DisplayComponent;
    .param p2, "delayedTime"    # J

    .prologue
    .line 506
    invoke-super {p0, p1, p2, p3}, Lcom/iflytek/framework/business/AbsBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 507
    return-void
.end method

.method public createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .locals 1
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 501
    invoke-super {p0, p1}, Lcom/iflytek/framework/business/AbsBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    return-object v0
.end method

.method public deleteListScheduleById(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 313
    :cond_0
    return-void
.end method

.method public getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 704
    invoke-super {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    return-object v0
.end method

.method public final getRegizeResult()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->getSpeechIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleShortCutSpeechResult(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method protected onCancel()V
    .locals 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSecondConfirmFlag:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSecondConfirmFlag:Z

    .line 328
    sget-object v0, Lcom/iflytek/framework/business/speech/InteractionScene;->select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    .line 329
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 330
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lauy;->a(Z)V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v0

    invoke-virtual {v0}, Lavb;->a()V

    .line 335
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    const-string/jumbo v1, "remindView.showSpeekView(\'0\')"

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    invoke-virtual {v0}, Lauh;->d()V

    .line 351
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/RecognizeComponents;->stopRecognize()V

    .line 352
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsStop()V

    .line 354
    return-void
.end method

.method protected onClearBusiness()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public onDataUpdated(Lcom/iflytek/framework/business/entities/UpdateDataType;)V
    .locals 1
    .param p1, "type"    # Lcom/iflytek/framework/business/entities/UpdateDataType;

    .prologue
    .line 551
    sget-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_log:Lcom/iflytek/framework/business/entities/UpdateDataType;

    if-ne v0, p1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    sget-object v0, Lcom/iflytek/framework/business/entities/UpdateDataType;->schedule_red_hot:Lcom/iflytek/framework/business/entities/UpdateDataType;

    if-ne v0, p1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->updateScheduleRedhot()V

    goto :goto_0
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 358
    const-string/jumbo v0, "ScheduleBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExec action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " args = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    return-object v0
.end method

.method protected onFail(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 1
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishFilter(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 4
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v3, 0x1

    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEntryType()I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 101
    .end local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    :goto_0
    return v3

    .line 95
    .restart local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "questionText":Ljava/lang/String;
    check-cast p2, Lauk;

    .end local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    invoke-virtual {p2}, Lauk;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff08\u5f53\u524d\u6ca1\u6709\u7f51\u7edc\uff0c\u672a\u80fd\u8bc6\u522b\u63d0\u9192\u5185\u5bb9\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addQuestionView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onShow(Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 5
    .param p1, "context"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 281
    const-string/jumbo v2, "ScheduleBusinessHandler"

    const-string/jumbo v3, "onShow"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lauu;->a(Landroid/content/Context;)Lauu;

    move-result-object v2

    invoke-virtual {v2}, Lauu;->a()V

    .line 284
    invoke-static {}, Lauh;->a()Lauh;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    .line 285
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lauh;->a(Lcom/iflytek/framework/business/entities/HandleContext;)V

    .line 287
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.SCHEDULE_ADD_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.ACTION_SCHEDULE_DELETE_FROM_LIST_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.ACTION_SCHEDULE_DELETE_FROM_SCHEDULE_MANAGE_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v4, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 295
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 297
    .local v1, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .line 300
    :cond_1
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v2

    invoke-virtual {v2}, Lauy;->b()V

    .line 302
    return-void
.end method

.method public onSpeechError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 654
    return-void
.end method

.method protected onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 22
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 140
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

    .line 141
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v9

    .local v9, "mIntentType":Lcom/iflytek/framework/business/speech/InteractionScene;
    move-object/from16 v12, p2

    .line 142
    check-cast v12, Lauk;

    .line 144
    .local v12, "scheduleFilterResult":Lauk;
    if-eqz v9, :cond_0

    :try_start_0
    sget-object v18, Lcom/iflytek/framework/business/speech/InteractionScene;->normal:Lcom/iflytek/framework/business/speech/InteractionScene;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_5

    .line 146
    :cond_0
    invoke-virtual {v12}, Lauk;->getOperation()Ljava/lang/String;

    move-result-object v11

    .line 147
    .local v11, "operation":Ljava/lang/String;
    const-string/jumbo v18, "ScheduleBusinessHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "---------------->> operation:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string/jumbo v18, "view"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->showViewUI(Lauk;)V

    .line 225
    .end local v11    # "operation":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v18

    const-string/jumbo v19, "LX_100127"

    invoke-virtual/range {v18 .. v19}, Lwz;->a(Ljava/lang/String;)V

    .line 229
    :goto_1
    return-void

    .line 153
    .restart local v11    # "operation":Ljava/lang/String;
    :cond_2
    const-string/jumbo v18, "create"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEntryType()I

    move-result v18

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v19

    .line 154
    move/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Laui;->a(ILauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v11    # "operation":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 227
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v18, "ScheduleBusinessHandler"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 157
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "operation":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Laun;->h()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v18

    if-nez v18, :cond_1

    .line 159
    invoke-virtual {v12}, Lauk;->getTip()Ljava/lang/String;

    move-result-object v15

    .line 160
    .local v15, "tip":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 161
    const-string/jumbo v15, "\u63d0\u9192\u6dfb\u52a0\u5931\u8d25"

    .line 163
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v8

    .line 164
    .local v8, "mAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-static {v15}, Lpz;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 165
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v8, v1, v2}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 168
    invoke-static {v15}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 169
    .local v14, "speechText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v18

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 170
    const/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    goto/16 :goto_0

    .line 174
    .end local v8    # "mAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .end local v11    # "operation":Ljava/lang/String;
    .end local v14    # "speechText":Ljava/lang/String;
    .end local v15    # "tip":Ljava/lang/String;
    :cond_5
    sget-object v18, Lcom/iflytek/framework/business/speech/InteractionScene;->select_schedule_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_1

    .line 175
    const-string/jumbo v18, "ScheduleBusinessHandler"

    const-string/jumbo v19, "----------------------->>> select today or tomorrow"

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/iflytek/yd/speech/FilterResult;->getRawText()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "answerText":Ljava/lang/String;
    const-string/jumbo v18, "ScheduleBusinessHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "----------------------->>> select "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string/jumbo v18, "\u4eca\u5929"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string/jumbo v18, "\u660e\u5929"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 183
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSecondConfirmFlag:Z

    .line 184
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lauy;->a(Z)V

    .line 187
    invoke-static {}, Laun;->h()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v13

    .line 189
    .local v13, "scheduleItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v18, "\u4eca\u5929"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 190
    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v16

    .line 191
    .local v16, "triggerTime":J
    const-wide/32 v18, 0x5265c00

    sub-long v16, v16, v18

    .line 192
    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 193
    const-string/jumbo v18, "\u4eca\u5929"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateRawtext(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v5

    .line 199
    .local v5, "base":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v5, :cond_7

    instance-of v0, v5, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 200
    move-object v0, v5

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    move-object v10, v0

    .line 201
    .local v10, "once":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    invoke-virtual {v10}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->getOnceDateList()Ljava/util/List;

    move-result-object v6

    .line 202
    .local v6, "dateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_7

    .line 203
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;->addDay(I)V

    .line 210
    .end local v5    # "base":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v6    # "dateList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;>;"
    .end local v10    # "once":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .end local v16    # "triggerTime":J
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getEntryType()I

    move-result v18

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v19

    .line 210
    move/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-static {v0, v13, v12, v1, v2}, Laui;->a(ILcom/iflytek/viafly/schedule/framework/entities/Schedule;Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V

    .line 215
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    goto/16 :goto_0

    .line 206
    :cond_8
    const-string/jumbo v18, "\u660e\u5929"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 207
    const-string/jumbo v18, "\u660e\u5929"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateRawtext(Ljava/lang/String;)V

    goto :goto_2

    .line 219
    .end local v13    # "scheduleItem":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSecondConfirmFlag:Z

    .line 220
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lauy;->a(Z)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v18

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v12, v0, v1}, Laui;->a(Lauk;Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;Lcom/iflytek/framework/business/entities/HandleContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected varargs onSystemEventCallback(Lcom/iflytek/framework/business/entities/SystemEvent;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "systemEvent"    # Lcom/iflytek/framework/business/entities/SystemEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 700
    return-void
.end method

.method public onTtsPlayBegin()V
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "ScheduleBusinessHandler"

    const-string/jumbo v1, "onTtsPlayBegin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 243
    const-string/jumbo v0, "ScheduleBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTtsPlayComplete errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mNeedChoose:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mNeedChoose:Z

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mFilterResult:Lcom/iflytek/yd/speech/FilterResult;

    .line 249
    invoke-virtual {v1}, Lcom/iflytek/yd/speech/FilterResult;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 251
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->u()Lqr;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lqr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSpeechIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/business/components/RecognizeComponents;->startRecognize(Landroid/content/Intent;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    goto :goto_0
.end method

.method public onTtsPlayInterrupt()V
    .locals 2

    .prologue
    .line 264
    const-string/jumbo v0, "ScheduleBusinessHandler"

    const-string/jumbo v1, "onTtsPlayInterrupt"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 269
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected varargs onUIEventCallback(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "businessEvent"    # Lcom/iflytek/framework/business/entities/UIEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 669
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_1

    .line 670
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    if-eqz v3, :cond_0

    .line 671
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    invoke-virtual {v3}, Lauh;->b()V

    .line 693
    :cond_0
    :goto_0
    return v6

    .line 673
    :cond_1
    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    if-ne v3, p1, :cond_0

    .line 674
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    if-eqz v3, :cond_2

    .line 675
    iget-object v3, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mBusinessChannelHandlerHelper:Lauh;

    invoke-virtual {v3}, Lauh;->c()V

    .line 677
    :cond_2
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v3

    invoke-virtual {v3}, Lavs;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 680
    invoke-static {}, Laun;->a()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v2

    .line 681
    .local v2, "manualAddSchedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    if-eqz v2, :cond_0

    .line 682
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_DEFAULT_WEATHER_SCHEDULE_ID"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 683
    .local v0, "defaultWeatherScheduleId":I
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 684
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lavu;->a(Landroid/content/Context;)Lavu;

    move-result-object v3

    invoke-virtual {v3}, Lavu;->a()Z

    move-result v1

    .line 685
    .local v1, "isNeedShowSpeechAddSchedule":Z
    if-eqz v1, :cond_3

    .line 686
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lavu;->a(Landroid/content/Context;)Lavu;

    move-result-object v3

    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lavu;->a(Lqr;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    .line 689
    .end local v1    # "isNeedShowSpeechAddSchedule":Z
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Laun;->a(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V

    goto :goto_0
.end method

.method public setNeedChoose(Z)V
    .locals 0
    .param p1, "isNeedChoose"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mNeedChoose:Z

    .line 379
    return-void
.end method

.method public setSecondConfirmFlag(Z)V
    .locals 0
    .param p1, "secondConfirmFlag"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSecondConfirmFlag:Z

    .line 375
    return-void
.end method

.method public setSpeechIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "mSpeechIntent"    # Landroid/content/Intent;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mSpeechIntent:Landroid/content/Intent;

    .line 81
    return-void
.end method

.method protected showNoResult()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 110
    .local v0, "mAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const-string/jumbo v1, "\u63d0\u9192\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v0, v4, v5}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 112
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    if-eq v1, v2, :cond_0

    .line 113
    const-string/jumbo v1, "\u63d0\u9192\u6dfb\u52a0\u5931\u8d25"

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 115
    :cond_0
    return-void
.end method

.method public showPlayImg()V
    .locals 4

    .prologue
    .line 467
    const-string/jumbo v1, "ScheduleBusinessHandler"

    const-string/jumbo v2, "showPlayImg"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mCount:I

    .line 469
    iget v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mCount:I

    rem-int/lit8 v0, v1, 0x3

    .line 472
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 474
    const-string/jumbo v1, "ScheduleBusinessHandler"

    const-string/jumbo v2, "mContext instanceof Activity"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$3;-><init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const-string/jumbo v1, "ScheduleBusinessHandler"

    const-string/jumbo v2, "showSpeekView"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remindView.showSpeekView(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showStatusError(Ljava/lang/String;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo p1, "\u63d0\u9192\u6dfb\u52a0\u5931\u8d25"

    .line 125
    :cond_0
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createScheduleAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 126
    .local v0, "mAnswerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0, v4, v5}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addScheduleDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    if-eq v1, v2, :cond_1

    .line 129
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 131
    :cond_1
    return-void
.end method

.method protected showViewUI(Lauk;)V
    .locals 6
    .param p1, "scheduleFilterResult"    # Lauk;

    .prologue
    .line 409
    .line 410
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    .line 411
    .local v0, "answerView":Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 412
    const-string/jumbo v1, "\u6b63\u5728\u6253\u5f00\u63d0\u9192\u5217\u8868"

    .line 413
    .local v1, "tip":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 416
    const-string/jumbo v2, "ScheduleBusinessHandler"

    const-string/jumbo v3, "mContext instanceof Activity"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$1;-><init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    :cond_0
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 434
    return-void
.end method

.method public startAnimation()V
    .locals 6

    .prologue
    .line 438
    const-string/jumbo v0, "ScheduleBusinessHandler"

    const-string/jumbo v1, "startAnimation() || speek play"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 442
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler$2;-><init>(Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    .line 448
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mTimer:Ljava/util/Timer;

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 452
    return-void
.end method

.method protected startHandleActivity(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleItem"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 387
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 390
    const-string/jumbo v2, "operation_type"

    sget-object v3, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 391
    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v2, "com.iflytek.cmcc.schedule.EXTRA_SCHEDULE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 395
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 455
    const-string/jumbo v0, "ScheduleBusinessHandler"

    const-string/jumbo v1, "stopAnimation() || speek stop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->mLocalBusinessView:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    const-string/jumbo v1, "remindView.showSpeekView(\'0\')"

    .line 461
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 464
    :cond_1
    return-void
.end method

.method public final ttsScheduleSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V
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
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 512
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/ScheduleBusinessHandler;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 514
    .local v0, "IsTextSearchResult":Z
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_SPEECH_DIALOG_MODE"

    invoke-virtual {v2, v3}, Lil;->c(Ljava/lang/String;)Z

    move-result v1

    .line 516
    .local v1, "isSpeechDialogMode":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 517
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 520
    .end local v0    # "IsTextSearchResult":Z
    .end local v1    # "isSpeechDialogMode":Z
    :cond_0
    return-void

    .line 513
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ttsScheduleStop()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsStop()V

    .line 525
    return-void
.end method

.method public updateScheduleRedhot()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
