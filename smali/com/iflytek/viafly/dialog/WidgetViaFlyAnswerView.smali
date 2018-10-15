.class public Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;
.super Ljava/lang/Object;
.source "WidgetViaFlyAnswerView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;
    }
.end annotation


# instance fields
.field public a:Ladq;

.field private b:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/content/Context;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/framework/ui/container/WidgetContainerInterface;Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerInterface"    # Lcom/iflytek/framework/ui/container/WidgetContainerInterface;
    .param p3, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;->NORMAL:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    iput-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    .line 33
    iput v2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->c:I

    .line 34
    iput-boolean v2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->d:Z

    .line 35
    iput-boolean v2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->e:Z

    .line 36
    iput-boolean v2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->f:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->j:J

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->l:Ljava/lang/String;

    .line 68
    iput v2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->w:I

    .line 73
    iput-object p1, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->r:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->o:Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    .line 81
    invoke-direct {p0, p3}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a(Lcom/iflytek/yd/speech/FilterResult;)V

    .line 82
    return-void
.end method

.method private a(Lcom/iflytek/yd/speech/FilterResult;)V
    .locals 1
    .param p1, "filterResult"    # Lcom/iflytek/yd/speech/FilterResult;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/iflytek/yd/speech/FilterResult;->getFocus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->q:Ljava/lang/String;

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .param p1, "scan"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->w:I

    .line 266
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->g:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->u:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->v:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "showShare"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->f:Z

    .line 234
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isScrollToPreviousElement"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->t:Z

    .line 400
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->m:Ljava/lang/String;

    return-object v0
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public configInfo()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->j:J

    return-wide v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    sget-object v1, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;->WELCOME:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    sget-object v1, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;->MSG_PUSH:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->f:Z

    return v0
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a:Ladq;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    const-string/jumbo v0, "WidgetViaFlyAnswerView"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->t:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->n:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 275
    const/4 v2, 0x0

    .line 277
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 279
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v10, "answerText"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string/jumbo v10, "type"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    invoke-virtual {v11}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string/jumbo v10, "showWelcomeList"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->e()Z

    move-result v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    const-string/jumbo v10, "showEntry"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->u:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string/jumbo v10, "showName"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->v:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string/jumbo v10, "reScan"

    iget v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->w:I

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 286
    iget-object v10, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    sget-object v11, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;->MSG_PUSH:Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView$Type;

    if-ne v10, v11, :cond_2

    .line 287
    iget-object v10, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->i:Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    const-string/jumbo v11, "picurl"

    invoke-virtual {v10, v11}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, "picUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->l:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 289
    const-string/jumbo v10, "isLocalFile"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 290
    const-string/jumbo v10, "picUrl"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->l:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    :goto_0
    const-string/jumbo v10, "id"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->i:Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    invoke-virtual {v11}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string/jumbo v10, "answerText"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->i:Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    invoke-virtual {v11}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string/jumbo v10, "linkText"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->i:Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    const-string/jumbo v12, "btcontent"

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string/jumbo v10, "openUrl"

    iget-object v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->i:Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    const-string/jumbo v12, "openurl"

    invoke-virtual {v11, v12}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    .end local v7    # "picUrl":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->e()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 304
    new-instance v5, Lpp;

    iget-object v10, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->r:Landroid/content/Context;

    invoke-direct {v5, v10}, Lpp;-><init>(Landroid/content/Context;)V

    .line 305
    .local v5, "mSpeechServiceUtil":Lpp;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v4, "listJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "supportOffline"

    invoke-virtual {v5}, Lpp;->a()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 307
    const-string/jumbo v10, "languageMode"

    iget v11, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->c:I

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    const/4 v6, 0x0

    .line 309
    .local v6, "netState":I
    iget-object v10, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->r:Landroid/content/Context;

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    invoke-virtual {v10}, Lhl;->c()Z

    move-result v1

    .line 310
    .local v1, "isHaveNet":Z
    if-eqz v1, :cond_3

    .line 312
    const/4 v6, 0x0

    .line 317
    :goto_2
    const-string/jumbo v10, "netState"

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    invoke-static {}, Lagm;->j()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 319
    const-string/jumbo v10, "isInBlack"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 324
    :goto_3
    const-string/jumbo v10, "offlineSpeechplugin"

    .line 325
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 324
    :goto_4
    invoke-virtual {v4, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 328
    const-string/jumbo v8, "listInfo"

    invoke-virtual {v3, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    .end local v1    # "isHaveNet":Z
    .end local v4    # "listJson":Lorg/json/JSONObject;
    .end local v5    # "mSpeechServiceUtil":Lpp;
    .end local v6    # "netState":I
    :cond_0
    const-string/jumbo v8, "cancelButtonShowTime"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->d()J

    move-result-wide v10

    invoke-virtual {v3, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v8, "showShare"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->g()Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 332
    const-string/jumbo v8, "showProgressBar"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->f()Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v8, "topic"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v8, "focus"

    iget-object v9, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->q:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string/jumbo v8, "speechText"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string/jumbo v8, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string/jumbo v8, "needTaskButton"

    iget-boolean v9, p0, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->s:Z

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 338
    const-string/jumbo v8, "pageUrl"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string/jumbo v8, "urlText"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string/jumbo v8, "isScrollToPreviousElement"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->j()Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object v2, v3

    .line 348
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_5
    return-object v2

    .line 292
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "picUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "isLocalFile"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 293
    const-string/jumbo v10, "picUrl"

    invoke-virtual {v3, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 341
    .end local v7    # "picUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 342
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_6
    const-string/jumbo v8, "WidgetViaFlyAnswerView"

    const-string/jumbo v9, "json\u8f6c\u6362\u51fa\u9519"

    invoke-static {v8, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v2, 0x0

    .line 347
    goto :goto_5

    .line 300
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    const-string/jumbo v10, "picUrl"

    invoke-virtual {p0}, Lcom/iflytek/viafly/dialog/WidgetViaFlyAnswerView;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 344
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 345
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    const/4 v2, 0x0

    goto :goto_5

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "isHaveNet":Z
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "listJson":Lorg/json/JSONObject;
    .restart local v5    # "mSpeechServiceUtil":Lpp;
    .restart local v6    # "netState":I
    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 321
    :cond_4
    :try_start_3
    const-string/jumbo v10, "isInBlack"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :cond_5
    move v8, v9

    .line 325
    goto/16 :goto_4

    .line 344
    .end local v1    # "isHaveNet":Z
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "listJson":Lorg/json/JSONObject;
    .end local v5    # "mSpeechServiceUtil":Lpp;
    .end local v6    # "netState":I
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    goto :goto_7

    .line 341
    :catch_3
    move-exception v0

    goto :goto_6
.end method
