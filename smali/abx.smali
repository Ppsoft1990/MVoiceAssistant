.class public abstract Labx;
.super Lcom/iflytek/framework/business/AbsBusinessHandler;
.source "AbsDialBusinessHandler.java"

# interfaces
.implements Lacp;


# static fields
.field protected static final CONTACT_DIR:Ljava/lang/String; = "contact"

.field protected static final CONTACT_ICON_FILE_END:Ljava/lang/String; = ".jpg"

.field public static final HISTROY_RESULT:I = 0x1

.field public static final NORMAL_RESULT:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "AbsDialBusinessHandler"

.field public static mContactFilterResult:Laau;


# instance fields
.field private mCancelReason:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field protected mContactSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mContent:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mLastIntentType:Lcom/iflytek/framework/business/speech/InteractionScene;

.field protected mRawText:Ljava/lang/String;

.field protected mSmsContactUtil:Lhn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;-><init>()V

    return-void
.end method

.method private saveContactIconToRom(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contactIconData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 261
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 262
    :cond_0
    const/4 v2, 0x0

    .line 268
    :goto_0
    return-object v2

    .line 264
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "fileDir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "fileName":Ljava/lang/String;
    array-length v2, p2

    .line 269
    invoke-static {p2, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 268
    invoke-static {v1, v0, v4, v2}, Lcom/iflytek/yd/util/FileManager;->saveDrawableToFile(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public Cancel(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)Z
    .locals 1
    .param p1, "reason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Labx;->setCancelReason(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public addDelayedDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V
    .locals 0
    .param p1, "displayComponent"    # Lcom/iflytek/framework/ui/DisplayComponent;
    .param p2, "delayedTime"    # J

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2, p3}, Labx;->addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;J)V

    .line 87
    return-void
.end method

.method public addWidgetQuestionView(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Labx;->addQuestionView(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public createWidgetAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
    .locals 1
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Labx;->createAnswerView(Lcom/iflytek/yd/speech/FilterResult;)Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;

    move-result-object v0

    return-object v0
.end method

.method public final getDialCancelReason()Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Labx;->mCancelReason:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    return-object v0
.end method

.method public getDialContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Labx;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v0

    return-object v0
.end method

.method protected getInsertNewContactItem(Laau;)Lcom/iflytek/base/contacts/entities/ContactItem;
    .locals 5
    .param p1, "result"    # Laau;

    .prologue
    const/4 v4, 0x0

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 280
    .local v2, "number":Ljava/lang/String;
    sget-object v3, Labx;->mContactFilterResult:Laau;

    invoke-virtual {v3}, Laau;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Labx;->mContactFilterResult:Laau;

    .line 281
    invoke-virtual {v3}, Laau;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 282
    sget-object v3, Labx;->mContactFilterResult:Laau;

    invoke-virtual {v3}, Laau;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 284
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    sget-object v3, Labx;->mContactFilterResult:Laau;

    invoke-virtual {v3}, Laau;->d()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Labx;->mContactFilterResult:Laau;

    .line 285
    invoke-virtual {v3}, Laau;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 286
    sget-object v3, Labx;->mContactFilterResult:Laau;

    invoke-virtual {v3}, Laau;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "number":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 288
    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 289
    .local v0, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v0, v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v2}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 291
    return-object v0
.end method

.method public getViaAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Labx;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract initContactInteraction(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
.end method

.method public abstract isCreateQuestionView()Z
.end method

.method public isHistoryResult()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0}, Labx;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Labx;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getResultType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTTSSpeaking()Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->isTtsSpeaking()Z

    move-result v0

    return v0
.end method

.method public isTextInputResult()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0}, Labx;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p0}, Labx;->getAsrResult()Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTextSearchMode()B

    move-result v1

    if-ne v1, v0, :cond_0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUniqueContact(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactSet;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "setList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    if-nez p1, :cond_0

    move v0, v1

    .line 307
    :goto_0
    return v0

    .line 303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 304
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    .line 305
    goto :goto_0

    :cond_1
    move v0, v1

    .line 307
    goto :goto_0
.end method

.method protected onFinishFilter(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)Z
    .locals 4
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 312
    const/4 v1, 0x1

    .line 314
    .local v1, "isClear":Z
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v3, :cond_2

    .line 319
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "telephone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0}, Labx;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 323
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 346
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-static {v2}, Laay;->a(I)V

    .line 348
    :cond_1
    return v1

    .line 327
    :cond_2
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 328
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getInteractionScene()Lcom/iflytek/framework/business/speech/InteractionScene;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/speech/InteractionScene;->select_contact_name:Lcom/iflytek/framework/business/speech/InteractionScene;

    if-ne v2, v3, :cond_3

    .line 329
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    invoke-virtual {p2}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0}, Labx;->getHandleContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 334
    .restart local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    goto :goto_0

    .line 339
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_3
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "telephone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lww;->a(Landroid/content/Context;)Lww;

    move-result-object v2

    const-string/jumbo v3, "FD01008"

    invoke-virtual {v2, v3}, Lww;->a(Ljava/lang/String;)V

    .line 344
    :cond_4
    :goto_1
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    goto :goto_0

    .line 341
    :cond_5
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->getCacheSpeechResultFocus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lww;->a(Landroid/content/Context;)Lww;

    move-result-object v2

    const-string/jumbo v3, "FD02013"

    invoke-virtual {v2, v3}, Lww;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSuccess(Lcom/iflytek/yd/speech/ViaAsrResult;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 2
    .param p1, "asrResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;
    .param p2, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 189
    iget-object v0, p0, Labx;->mSmsContactUtil:Lhn;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    iput-object v0, p0, Labx;->mSmsContactUtil:Lhn;

    .line 193
    :cond_0
    instance-of v0, p2, Laau;

    if-nez v0, :cond_1

    .line 194
    const-string/jumbo v0, "AbsDialBusinessHandler"

    const-string/jumbo v1, "result is not Contact instance"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Labx;->showNoResult()V

    .line 203
    .end local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    :goto_0
    return-void

    .line 198
    .restart local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    :cond_1
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhc;->a(Landroid/content/Context;)V

    .line 200
    check-cast p2, Laau;

    .end local p2    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    sput-object p2, Labx;->mContactFilterResult:Laau;

    .line 202
    iget-object v0, p0, Labx;->mSmsContactUtil:Lhn;

    sget-object v1, Labx;->mContactFilterResult:Laau;

    invoke-virtual {v1}, Laau;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected queryContactInfo(Z)V
    .locals 7
    .param p1, "isQueryIcon"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Labx;->mContactFilterResult:Laau;

    invoke-static {v3, v4}, Laay;->a(Landroid/content/Context;Laau;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const-string/jumbo v3, "AbsDialBusinessHandler"

    const-string/jumbo v4, "isSpecNumberScene"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Labx;->mContactFilterResult:Laau;

    invoke-static {v3, v4}, Lazk;->a(Landroid/content/Context;Laau;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v1

    .line 215
    .local v1, "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labx;->mContactSetList:Ljava/util/List;

    .line 216
    iget-object v3, p0, Labx;->mContactSetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v1    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    .line 220
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Labx;->mContactFilterResult:Laau;

    .line 221
    invoke-virtual {v5}, Laau;->c()Ljava/util/List;

    move-result-object v5

    sget-object v6, Labx;->mContactFilterResult:Laau;

    .line 222
    invoke-virtual {v6}, Laau;->d()Ljava/util/List;

    move-result-object v6

    .line 220
    invoke-virtual {v3, v4, v5, v6}, Lhe;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Labx;->mContactSetList:Ljava/util/List;

    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v3, p0, Labx;->mContactSetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 245
    .restart local v1    # "set":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhe;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 246
    .local v0, "contactIconData":[B
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Labx;->saveContactIconToRom(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 248
    invoke-virtual {v1, v2}, Lcom/iflytek/base/contacts/entities/ContactSet;->setContactIconUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reStartReco(Landroid/content/Intent;)V
    .locals 2
    .param p1, "pSpeechIntent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->k()V

    .line 164
    invoke-virtual {p0}, Labx;->getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/business/components/RecognizeComponents;->startRecognize(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccSHOW_COVER_LAYER"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public reStartReco(Ljava/lang/String;)V
    .locals 3
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getMicController()Lqr;

    move-result-object v1

    invoke-virtual {v1}, Lqr;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-static {}, Lagv;->j()Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/homehelper/HomeWakeupHelper;->k()V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "speechIntent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string/jumbo v1, "local_scene"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Labx;->getRecognizeComponents()Lcom/iflytek/framework/business/components/RecognizeComponents;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/components/RecognizeComponents;->startRecognize(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Labx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccSHOW_COVER_LAYER"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 147
    .end local v0    # "speechIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setCancelReason(Lcom/iflytek/viafly/dial/business30/DialCancelReason;)V
    .locals 3
    .param p1, "reason"    # Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .prologue
    .line 371
    const-string/jumbo v0, "AbsDialBusinessHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--------------->> setCancelReason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iput-object p1, p0, Labx;->mCancelReason:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 373
    return-void
.end method

.method public speakTts(Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 1
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
    .line 94
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Labx;->isTextInputResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Labx;->ttsSpeak(Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 97
    :cond_0
    return-void
.end method

.method public speakTtsWithCallBack(Ljava/lang/String;Ljava/util/HashMap;JLacs;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "delayedTime"    # J
    .param p5, "pSpeakCallBack"    # Lacs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lacs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public stopTTSAsync()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/iflytek/framework/business/AbsBusinessHandler;->ttsStop()V

    .line 107
    return-void
.end method
