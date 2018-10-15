.class public Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;
.super Landroid/os/Handler;
.source "ScheduleBusinessRequest.java"

# interfaces
.implements Ljt;


# static fields
.field private static final MSG_ON_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScheduleBizHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSchedule:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field private mServiceUtil:Lpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mSchedule:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 44
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lpp;

    invoke-direct {v0, p1}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->sendRequest(Ljava/lang/String;)V

    return-void
.end method

.method private checkResultLegal(Lcom/iflytek/yd/speech/ViaAsrResult;)Z
    .locals 7
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, "ret":Z
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v4

    iget-object v5, p1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->getResultFilter(Ljava/lang/String;)Lcom/iflytek/yd/speech/RecognizeFilter;

    move-result-object v2

    .line 134
    .local v2, "recognizeFilter":Lcom/iflytek/yd/speech/RecognizeFilter;
    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v2, p1}, Lcom/iflytek/yd/speech/RecognizeFilter;->filterRecognizeResult(Lcom/iflytek/yd/speech/ViaAsrResult;)Lcom/iflytek/yd/speech/FilterResult;

    move-result-object v0

    .line 136
    .local v0, "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    if-eqz v0, :cond_2

    const-string/jumbo v4, "success"

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/FilterResult;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "focus":Ljava/lang/String;
    const-string/jumbo v4, "ScheduleBizHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkResultLegal() | result focus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v4, "message"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "telephone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    :cond_0
    const/4 v3, 0x1

    .line 146
    .end local v0    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    .end local v1    # "focus":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 143
    .restart local v0    # "filterResult":Lcom/iflytek/yd/speech/FilterResult;
    :cond_2
    const-string/jumbo v4, "ScheduleBizHandler"

    const-string/jumbo v5, "checkResultLegal() | result is failed!"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "ScheduleBizHandler"

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    invoke-virtual {v0}, Lpp;->c()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    .line 115
    :cond_0
    return-void
.end method

.method public static handleBussiness(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lawf;->a(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    .line 245
    .local v1, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v1, :cond_0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTimeStamp(Ljava/lang/String;)V

    .line 252
    move-object v0, p0

    .line 260
    .local v0, "mContext":Landroid/content/Context;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;

    invoke-direct {v3, v0, v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$2;-><init>(Landroid/content/Context;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    const-wide/16 v4, 0x4b0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    .end local v0    # "mContext":Landroid/content/Context;
    .end local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    return-void
.end method

.method public static hasBussiness(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "ret":Z
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lawf;->a(Ljava/lang/String;)Lcom/iflytek/yd/speech/ViaAsrResult;

    move-result-object v1

    .line 221
    .local v1, "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v3, "telephone"

    iget-object v4, v1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    new-instance v0, Lcom/iflytek/framework/business/components/CallAndSmsComponents;

    invoke-direct {v0}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;-><init>()V

    .line 224
    .local v0, "callAndSmsComponents":Lcom/iflytek/framework/business/components/CallAndSmsComponents;
    invoke-virtual {v0, v1, p0}, Lcom/iflytek/framework/business/components/CallAndSmsComponents;->hasContacts(Lcom/iflytek/yd/speech/ViaAsrResult;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    const/4 v2, 0x1

    .line 234
    .end local v0    # "callAndSmsComponents":Lcom/iflytek/framework/business/components/CallAndSmsComponents;
    .end local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    :goto_0
    const-string/jumbo v3, "ScheduleBizHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasBussiness() ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v2

    .line 227
    .restart local v0    # "callAndSmsComponents":Lcom/iflytek/framework/business/components/CallAndSmsComponents;
    .restart local v1    # "recognizerResult":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_1
    const-string/jumbo v3, "ScheduleBizHandler"

    const-string/jumbo v4, "-------->> check contact list... -> has not this contact"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    .end local v0    # "callAndSmsComponents":Lcom/iflytek/framework/business/components/CallAndSmsComponents;
    :cond_2
    const-string/jumbo v3, "message"

    iget-object v4, v1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isTextContaionKeyword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "search_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "is_play_result_tone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "search_entry"

    const-string/jumbo v2, "schedule"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    invoke-virtual {v1, v0, p0}, Lpp;->b(Landroid/content/Intent;Ljt;)V

    .line 82
    const-string/jumbo v1, "ScheduleBizHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRequest() | searchText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 105
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 90
    .local v0, "recognizerResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 92
    .local v1, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->checkResultLegal(Lcom/iflytek/yd/speech/ViaAsrResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mSchedule:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v1}, Lawf;->a(Lcom/iflytek/yd/speech/ViaAsrResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAction(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "ScheduleBizHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage() | start update... | action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mSchedule:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDataOperationHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mSchedule:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/IScheduleDataOperation;->modifySchedule(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 99
    .end local v1    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->destroy()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 153
    return-void
.end method

.method public onDownloadCustomData([BI)V
    .locals 0
    .param p1, "result_data"    # [B
    .param p2, "errorCode"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onPartialResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    return-void
.end method

.method public onSearchResults(Ljava/util/List;I)V
    .locals 4
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const-string/jumbo v1, "ScheduleBizHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSearchResults() errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public onSpeechTimeout()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onUploadCustomData(Ljava/lang/String;II)V
    .locals 0
    .param p1, "dataID"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "languageMode"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 171
    return-void
.end method

.method public searchContent(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 6
    .param p1, "schedule"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mServiceUtil:Lpp;

    if-nez v1, :cond_1

    .line 53
    const-string/jumbo v1, "ScheduleBizHandler"

    const-string/jumbo v2, "searchContent() return | Recognize Service bind error!"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->destroy()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "content":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->isTextContaionKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;->mSchedule:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 64
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest$1;-><init>(Lcom/iflytek/viafly/schedule/framework/data/ScheduleBusinessRequest;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
