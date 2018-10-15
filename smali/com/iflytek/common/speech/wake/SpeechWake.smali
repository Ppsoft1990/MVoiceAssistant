.class public Lcom/iflytek/common/speech/wake/SpeechWake;
.super Ljava/lang/Object;
.source "SpeechWake.java"

# interfaces
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/speech/wake/SpeechWake$b;,
        Lcom/iflytek/common/speech/wake/SpeechWake$a;,
        Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

.field private static c:Lqa;

.field private static g:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private static h:Lcom/iflytek/common/speech/wake/SpeechWake;

.field private static i:Landroid/os/HandlerThread;

.field private static j:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;


# instance fields
.field private b:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

.field private d:Lcom/iflytek/common/speech/wake/SpeechWake$b;

.field private e:Z

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->h:Lcom/iflytek/common/speech/wake/SpeechWake;

    .line 67
    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->i:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_OFF_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    iput-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->b:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->e:Z

    .line 92
    iput-object p1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->b()V

    .line 94
    return-void
.end method

.method private a(I)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 160
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 162
    return-object v0
.end method

.method private a(III)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 152
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 154
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 155
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 156
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/common/speech/wake/SpeechWake;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->h:Lcom/iflytek/common/speech/wake/SpeechWake;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/iflytek/common/speech/wake/SpeechWake;

    invoke-direct {v0, p0}, Lcom/iflytek/common/speech/wake/SpeechWake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->h:Lcom/iflytek/common/speech/wake/SpeechWake;

    .line 101
    :cond_0
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->h:Lcom/iflytek/common/speech/wake/SpeechWake;

    return-object v0
.end method

.method static synthetic a()Lqa;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    return-object v0
.end method

.method private a(II)V
    .locals 3
    .param p1, "extraFrom"    # I
    .param p2, "extraScene"    # I

    .prologue
    .line 227
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "startWake"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v1}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v1

    invoke-virtual {v1}, Lbbp;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "startWake | !CarModeManager.isCarModeBackWakeOpen() | return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->c()Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_START_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    if-ne v1, v2, :cond_2

    .line 233
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "wake engine already start | return"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    invoke-virtual {v1}, Lqa;->a()V

    goto :goto_0

    .line 237
    :cond_2
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->j:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    if-nez v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v1}, Lqc;->a(Landroid/content/Context;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    move-result-object v1

    sput-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->j:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    .line 242
    :cond_3
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/speech/wake/SpeechWake;->j:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;)V

    .line 244
    new-instance v1, Lcom/iflytek/common/speech/wake/SpeechWake$b;

    invoke-direct {v1, p0}, Lcom/iflytek/common/speech/wake/SpeechWake$b;-><init>(Lcom/iflytek/common/speech/wake/SpeechWake;)V

    iput-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->d:Lcom/iflytek/common/speech/wake/SpeechWake$b;

    .line 245
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->d:Lcom/iflytek/common/speech/wake/SpeechWake$b;

    iput p1, v1, Lcom/iflytek/common/speech/wake/SpeechWake$b;->b:I

    .line 246
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->d:Lcom/iflytek/common/speech/wake/SpeechWake$b;

    iput p2, v1, Lcom/iflytek/common/speech/wake/SpeechWake$b;->a:I

    .line 247
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_START_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    invoke-direct {p0, v1}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;)V

    .line 248
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 251
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 254
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "wake scence call"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string/jumbo v1, "wake_scene"

    const-string/jumbo v2, "telephone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    :goto_1
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v1, v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :cond_5
    if-nez p2, :cond_6

    .line 257
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "wake scence default"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string/jumbo v1, "wake_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 260
    :cond_6
    const-string/jumbo v1, "wake_scene"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private a(Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;)V
    .locals 0
    .param p1, "state"    # Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->b:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    .line 145
    return-void
.end method

.method private a(Lcom/iflytek/common/speech/wake/SpeechWake$b;Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 5
    .param p1, "info"    # Lcom/iflytek/common/speech/wake/SpeechWake$b;
    .param p2, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v4, 0x1

    .line 335
    if-nez p1, :cond_1

    .line 336
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "onSuccessHandle | info is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget v1, p1, Lcom/iflytek/common/speech/wake/SpeechWake$b;->a:I

    if-ne v1, v4, :cond_3

    .line 341
    const-string/jumbo v1, "SpeechWake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSuccessHandle | id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    invoke-virtual {v1}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 344
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 345
    iget-object v1, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    const-string/jumbo v2, "\u63a5\u542c"

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 351
    :goto_1
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 349
    :cond_2
    iput v4, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 352
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    iget v1, p1, Lcom/iflytek/common/speech/wake/SpeechWake$b;->a:I

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v1}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v1

    invoke-virtual {v1}, Lig;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    .line 355
    invoke-static {v1}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v1

    invoke-virtual {v1}, Lig;->isKeyGuardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    :cond_4
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendEmptyMessage(I)Z

    .line 358
    :cond_5
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.lockscreen.ACTION_UNLOCK_IFLY_SCREEN"

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 360
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/common/speech/wake/SpeechWake;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/wake/SpeechWake;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->d()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/speech/wake/SpeechWake;II)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/wake/SpeechWake;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(II)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v0

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 107
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p0}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 108
    new-instance v0, Lqa;

    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lqa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SpeechWake_worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->i:Landroid/os/HandlerThread;

    .line 110
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Lcom/iflytek/common/speech/wake/SpeechWake$a;

    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/common/speech/wake/SpeechWake$a;-><init>(Lcom/iflytek/common/speech/wake/SpeechWake;Landroid/os/Looper;)V

    sput-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    .line 112
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->i:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 113
    return-void
.end method

.method static synthetic b(Lcom/iflytek/common/speech/wake/SpeechWake;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/wake/SpeechWake;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->h()V

    return-void
.end method

.method private c()Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->b:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/common/speech/wake/SpeechWake;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/common/speech/wake/SpeechWake;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->g()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/common/speech/wake/SpeechWake;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/speech/wake/SpeechWake;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 267
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const-string/jumbo v0, "SpeechWake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWake speech handler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 271
    :cond_0
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_OFF_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    invoke-direct {p0, v0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;)V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->d:Lcom/iflytek/common/speech/wake/SpeechWake$b;

    .line 273
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    invoke-virtual {v0}, Lqa;->b()V

    .line 274
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    const v1, 0x3000001a

    const-class v2, Lcom/iflytek/common/speech/wake/SpeechWake;

    .line 367
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {v0, v1, v2}, Lig;->acquireWakeLock(ILjava/lang/String;)V

    .line 368
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v0}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    invoke-virtual {v0}, Lig;->releaseWakeLock()V

    .line 372
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->e()V

    .line 379
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v1}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    .line 386
    .local v0, "powerManager":Lcom/iflytek/yd/base/IPowerManager;
    invoke-interface {v0}, Lcom/iflytek/yd/base/IPowerManager;->isKeyGuardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "unLockScreen | screen is locked, release wakelock, set unlockflag = false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-boolean v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->e:Z

    if-eqz v1, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->h()V

    .line 392
    :cond_0
    const-class v1, Lcom/iflytek/common/speech/wake/SpeechWake;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/base/IPowerManager;->disableKeyGuardLock(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->e:Z

    .line 398
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "unLockScreen | already unlocked"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/iflytek/common/speech/wake/SpeechWake;->f()V

    .line 405
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v1}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v0

    .line 414
    .local v0, "powerManager":Lcom/iflytek/yd/base/IPowerManager;
    iget-boolean v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->e:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/iflytek/yd/base/IPowerManager;->isKeyGuardLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 415
    :cond_0
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "lockScreen | screen is unlocked, release wakelock, set unlockflag = false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v0}, Lcom/iflytek/yd/base/IPowerManager;->reenableKeyGuardLock()V

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->e:Z

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_1
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "lockScreen | already locked or no need to lock"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 117
    const-string/jumbo v5, "SpeechWake"

    const-string/jumbo v6, "filterIntent | intent is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v5, "SpeechWake"

    const-string/jumbo v6, "filterIntent | action is null"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_2
    const-string/jumbo v5, "extra_delay_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 126
    .local v2, "extraDelayTime":J
    const-string/jumbo v5, "com.iflytek.cmccstart_wake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    const-string/jumbo v5, "extra_from"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 129
    .local v1, "extraFrom":I
    const-string/jumbo v5, "extra_scene"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 131
    .local v4, "extraScene":I
    sget-object v5, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    invoke-direct {p0, v8, v1, v4}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 133
    .end local v1    # "extraFrom":I
    .end local v4    # "extraScene":I
    :cond_3
    const-string/jumbo v5, "com.iflytek.cmccstop_wake"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    sget-object v5, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 135
    :cond_4
    const-string/jumbo v5, "com.iflytek.cmcclock_screen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    sget-object v5, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 137
    :cond_5
    const-string/jumbo v5, "com.iflytek.cmccunlock_screen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    sget-object v5, Lcom/iflytek/common/speech/wake/SpeechWake;->a:Lcom/iflytek/common/speech/wake/SpeechWake$a;

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Lcom/iflytek/common/speech/wake/SpeechWake$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 4
    .param p1, "arg0"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    const/4 v3, 0x0

    .line 292
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "handleLastResult"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_SUCCESS_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    invoke-direct {p0, v1}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;)V

    .line 294
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 295
    aget-object v1, p1, v3

    iget-object v0, v1, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    .line 296
    .local v0, "focus":Ljava/lang/String;
    const-string/jumbo v1, "wake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->d:Lcom/iflytek/common/speech/wake/SpeechWake$b;

    aget-object v2, p1, v3

    invoke-direct {p0, v1, v2}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake$b;Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 306
    .end local v0    # "focus":Ljava/lang/String;
    :goto_0
    return-void

    .line 299
    .restart local v0    # "focus":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "handle result focus is not wake"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    const v2, 0xc355a

    invoke-virtual {v1, v2}, Lqa;->a(I)V

    goto :goto_0

    .line 303
    .end local v0    # "focus":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "SpeechWake"

    const-string/jumbo v2, "handle result is null or size is 0"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v1, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    const v2, 0xc351b

    invoke-virtual {v1, v2}, Lqa;->a(I)V

    goto :goto_0
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "arg0"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 310
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "SpeechWake"

    const-string/jumbo v1, "updateUIInCancelState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 4
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    const/4 v3, 0x0

    .line 319
    const-string/jumbo v0, "SpeechWake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUIInErrorState | errId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;->WAKE_ERROR_STATE:Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;

    invoke-direct {p0, v0}, Lcom/iflytek/common/speech/wake/SpeechWake;->a(Lcom/iflytek/common/speech/wake/SpeechWake$WakeState;)V

    .line 321
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    invoke-virtual {v0, p3}, Lqa;->a(I)V

    .line 323
    const v0, 0xc3501

    if-ne p3, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    const-string/jumbo v1, "\u5524\u9192\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u5f00\u542f\u5f55\u97f3\u6743\u9650"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_SPEECH_WAKE_UP"

    invoke-virtual {v0, v1, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 326
    iget-object v0, p0, Lcom/iflytek/common/speech/wake/SpeechWake;->f:Landroid/content/Context;

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbbp;->a(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 495
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "SpeechWake"

    const-string/jumbo v1, "updateUIInRecodingState"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v0, Lcom/iflytek/common/speech/wake/SpeechWake;->c:Lqa;

    invoke-virtual {v0}, Lqa;->a()V

    .line 284
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 278
    return-void
.end method

.method public updateUIInSNState()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method
