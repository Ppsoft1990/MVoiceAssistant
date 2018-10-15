.class public Lqr;
.super Ljava/lang/Object;
.source "MicController.java"

# interfaces
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

.field private c:Landroid/app/ProgressDialog;

.field private d:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

.field private e:Laes;

.field private f:Lcom/iflytek/framework/browser/mic/MicHelper;

.field private g:Lqu;

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Laes;

    invoke-direct {v0}, Laes;-><init>()V

    iput-object v0, p0, Lqr;->e:Laes;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lqr;->h:J

    .line 64
    invoke-direct {p0, p1}, Lqr;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lqr;->a:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-direct {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;-><init>()V

    iput-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    .line 71
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-direct {v0, p1, p0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;-><init>(Landroid/content/Context;Lqr;)V

    iput-object v0, p0, Lqr;->d:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    .line 72
    new-instance v0, Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-direct {v0, p1, p0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;-><init>(Landroid/content/Context;Lqr;)V

    iput-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    .line 73
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->d()V

    .line 74
    return-void
.end method

.method private a(ZJ)V
    .locals 10
    .param p1, "error"    # Z
    .param p2, "time"    # J

    .prologue
    const-wide/16 v8, 0x3a98

    const-wide/16 v6, 0x1b58

    const-wide/16 v4, 0x1388

    .line 356
    const-string/jumbo v1, ""

    .line 357
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 358
    const-string/jumbo v1, "fail"

    .line 370
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v2, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v2}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT89901"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 373
    return-void

    .line 360
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    cmp-long v2, v4, p2

    if-lez v2, :cond_2

    .line 361
    const-string/jumbo v1, "lessFive"

    goto :goto_0

    .line 362
    :cond_2
    cmp-long v2, v4, p2

    if-gtz v2, :cond_3

    cmp-long v2, v6, p2

    if-lez v2, :cond_3

    .line 363
    const-string/jumbo v1, "fiveToSeven"

    goto :goto_0

    .line 364
    :cond_3
    cmp-long v2, v6, p2

    if-gtz v2, :cond_4

    cmp-long v2, v8, p2

    if-lez v2, :cond_4

    .line 365
    const-string/jumbo v1, "sevenToFifteen"

    goto :goto_0

    .line 366
    :cond_4
    cmp-long v2, v8, p2

    if-gtz v2, :cond_0

    .line 367
    const-string/jumbo v1, "moreFifteen"

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    if-nez v2, :cond_0

    .line 335
    const-string/jumbo v2, "MicController"

    const-string/jumbo v3, "sendRequestByText | mMicHelper == null"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return v1

    .line 338
    :cond_0
    iget-object v2, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;)V

    .line 343
    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->TEXT:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;)V

    .line 344
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/business/entities/UIEvent;->speech_button_down:Lcom/iflytek/framework/business/entities/UIEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 345
    const-string/jumbo v0, "all"

    .line 346
    .local v0, "focus":Ljava/lang/String;
    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 347
    const-string/jumbo v0, "translation"

    .line 349
    :cond_2
    iget-object v1, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->c()Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "input"

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/iflytek/yd/speech/ISpeechHandler;->startTextSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v1

    const-string/jumbo v2, "1016"

    invoke-virtual {v1, v2}, Lwr;->a(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    const-string/jumbo v2, "LX_400000"

    invoke-virtual {v1, v2}, Lwz;->a(Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/iflytek/framework/browser/mic/MainSpeechView;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    return-object v0
.end method

.method public a(Lcom/iflytek/yd/speech/ISpeechHandler;)V
    .locals 1
    .param p1, "speechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;

    .prologue
    .line 77
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/yd/speech/ISpeechHandler;)V

    .line 78
    invoke-interface {p1, p0}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v1}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT90005"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    invoke-direct {p0, p1}, Lqr;->b(Ljava/lang/String;)Z

    move-result v0

    .line 319
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 320
    iget-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 321
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lqr;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    .line 322
    iget-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 323
    iget-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 324
    iget-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 326
    :cond_0
    iget-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 327
    iget-object v1, p0, Lqr;->c:Landroid/app/ProgressDialog;

    const v2, 0x7f0300e0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 329
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v1

    iget-object v2, p0, Lqr;->e:Laes;

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Laee;)V

    .line 331
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;
    .param p2, "isSearchImmediately"    # Z

    .prologue
    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "search_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v1, "isSearchImmediately"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    return-void
.end method

.method public a(Lqs;)V
    .locals 1
    .param p1, "listener"    # Lqs;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public a(Lqu;)V
    .locals 0
    .param p1, "updateUIListener"    # Lqu;

    .prologue
    .line 282
    iput-object p1, p0, Lqr;->g:Lqu;

    .line 283
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 290
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/iflytek/framework/browser/mic/MicHelper;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->f()V

    .line 264
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->b()Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;->TEXT:Lcom/iflytek/framework/browser/mic/MicHelper$MicMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;
    .locals 3

    .prologue
    .line 276
    const-string/jumbo v0, "MicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurState, currentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    .line 277
    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->a()Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->g()V

    .line 287
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 294
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "resetSpeechMicView"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lqr;->d:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->a()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 5
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v2, 0x0

    .line 154
    const-string/jumbo v3, "MicController"

    const-string/jumbo v4, "handleLastResult"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v3, p1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 156
    iget-object v3, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->d()Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    move-result-object v3

    sget-object v4, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    if-ne v3, v4, :cond_3

    .line 157
    iget-object v3, p0, Lqr;->g:Lqu;

    if-eqz v3, :cond_1

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 160
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 161
    .local v0, "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_0
    iget-object v2, p0, Lqr;->g:Lqu;

    invoke-interface {v2, v1}, Lqu;->handleLastResult(Ljava/util/ArrayList;)V

    .line 177
    .end local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_1
    :goto_1
    iget-object v2, p0, Lqr;->c:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 180
    :cond_2
    return-void

    .line 167
    :cond_3
    iget-object v3, p0, Lqr;->g:Lqu;

    if-eqz v3, :cond_1

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .restart local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    .line 170
    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v0, p1, v2

    .line 171
    .restart local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 174
    .end local v0    # "result":Lcom/iflytek/yd/speech/ViaAsrResult;
    :cond_4
    iget-object v2, p0, Lqr;->g:Lqu;

    invoke-interface {v2, v1}, Lqu;->handleLastResult(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "arg0"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 150
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 184
    const-string/jumbo v2, "MicController"

    const-string/jumbo v3, "updateUIAfterResult"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 186
    iget-object v2, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIAfterResult()V

    .line 187
    iget-object v2, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v2}, Lcom/iflytek/framework/browser/mic/MicHelper;->d()Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    move-result-object v2

    sget-object v3, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    if-eq v2, v3, :cond_1

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lqr;->h:J

    sub-long v0, v2, v4

    .line 190
    .local v0, "temp":J
    iget-wide v2, p0, Lqr;->h:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    .line 191
    const-wide/16 v0, 0x0

    .line 194
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lqr;->a(ZJ)V

    .line 196
    iput-wide v6, p0, Lqr;->h:J

    .line 199
    .end local v0    # "temp":J
    :cond_1
    iget-object v2, p0, Lqr;->g:Lqu;

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lqr;->g:Lqu;

    invoke-interface {v2}, Lqu;->speechViewUpdateAfterResult()V

    .line 202
    :cond_2
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 208
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInCancelState()V

    .line 209
    iget-object v0, p0, Lqr;->g:Lqu;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lqr;->g:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInCancelState()V

    .line 212
    :cond_0
    iget-object v0, p0, Lqr;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lqr;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    :cond_1
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 5
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 219
    const-string/jumbo v0, "MicController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInErrorState() || errId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " || errDetailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 222
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInErrorState(III)V

    .line 223
    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90009"

    invoke-virtual {v0, v1, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100114"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->d()Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    if-eq v0, v1, :cond_1

    .line 227
    const-wide/16 v0, 0x0

    invoke-direct {p0, v3, v0, v1}, Lqr;->a(ZJ)V

    .line 228
    const v0, 0xc350a

    if-eq v0, p3, :cond_0

    const/16 v0, 0x2786

    if-eq v0, p3, :cond_0

    const v0, 0xc3516

    if-ne v0, p3, :cond_1

    .line 229
    :cond_0
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->getBizResultMsgCount()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 232
    iget-object v0, p0, Lqr;->d:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainCommandWordView;->b()V

    .line 233
    iget-object v0, p0, Lqr;->e:Laes;

    iget-object v1, p0, Lqr;->d:Lcom/iflytek/framework/browser/mic/MainCommandWordView;

    invoke-virtual {v0, v1}, Laes;->a(Landroid/view/View;)V

    .line 234
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    iget-object v1, p0, Lqr;->e:Laes;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Laee;)V

    .line 235
    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90004"

    invoke-virtual {v0, v1, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100130"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 89
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInInitState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInInitState(Landroid/content/Intent;)V

    .line 93
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lws;->d(J)V

    .line 94
    iget-object v0, p0, Lqr;->g:Lqu;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lqr;->g:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInInitState()V

    .line 97
    :cond_0
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v0

    iget-object v1, p0, Lqr;->e:Laes;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->b(Laee;)V

    .line 99
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    invoke-virtual {v0}, Lie;->d()V

    .line 100
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lagv;->k()Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->l()Lpp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lpp;->c(Lju;)V

    .line 104
    :cond_1
    invoke-static {}, Larc;->a()Larc;

    move-result-object v0

    invoke-virtual {v0}, Larc;->h()V

    .line 105
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 4

    .prologue
    .line 119
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->recording:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 121
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInRecodingState()V

    .line 122
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 122
    invoke-virtual {v0, v2, v3}, Lws;->e(J)V

    .line 124
    iget-object v0, p0, Lqr;->g:Lqu;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lqr;->g:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInRecodingState()V

    .line 127
    :cond_0
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 131
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInRecodingState(I)V

    .line 133
    return-void
.end method

.method public updateUIInSNState()V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInSNState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->init:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 111
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInSNState()V

    .line 112
    iget-object v0, p0, Lqr;->g:Lqu;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lqr;->g:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInSNState()V

    .line 115
    :cond_0
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInTimeout"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->idle:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 248
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInTimeout()V

    .line 249
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 2

    .prologue
    .line 137
    const-string/jumbo v0, "MicController"

    const-string/jumbo v1, "updateUIInWaitingResultState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;->waiting_result:Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/mic/MicHelper;->a(Lcom/iflytek/framework/browser/mic/MicHelper$SpeakButtonState;)V

    .line 139
    iget-object v0, p0, Lqr;->f:Lcom/iflytek/framework/browser/mic/MicHelper;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MicHelper;->d()Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;->TEXT_SEARCH:Lcom/iflytek/framework/browser/mic/MicHelper$SessionType;

    if-eq v0, v1, :cond_0

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lqr;->h:J

    .line 142
    :cond_0
    iget-object v0, p0, Lqr;->b:Lcom/iflytek/framework/browser/mic/MainSpeechView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/mic/MainSpeechView;->updateUIInWaitingResultState()V

    .line 143
    iget-object v0, p0, Lqr;->g:Lqu;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lqr;->g:Lqu;

    invoke-interface {v0}, Lqu;->speechViewUpdateInWaitingResultState()V

    .line 146
    :cond_1
    return-void
.end method
