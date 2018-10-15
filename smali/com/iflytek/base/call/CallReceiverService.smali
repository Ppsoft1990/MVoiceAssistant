.class public Lcom/iflytek/base/call/CallReceiverService;
.super Landroid/app/Service;
.source "CallReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/call/CallReceiverService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/base/call/CallReceiverService$a;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Looper;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/call/CallReceiverService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/call/CallReceiverService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/base/call/CallReceiverService;->g:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/call/PhoneState;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/base/call/CallReceiverService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/call/PhoneState;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/call/PhoneState;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "lastState"    # Ljava/lang/String;
    .param p3, "currentState"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "CallReceiverService"

    const-string/jumbo v1, "handleCallState intent action is null"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->UNKNOWN:Lcom/iflytek/base/call/PhoneState;

    .line 178
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const-string/jumbo v0, "CallReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/call/CallReceiverService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->INCOMING:Lcom/iflytek/base/call/PhoneState;

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/call/CallReceiverService;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->INCOMING_OFFHOOK:Lcom/iflytek/base/call/PhoneState;

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/call/CallReceiverService;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->MISS_INCOMING_END:Lcom/iflytek/base/call/PhoneState;

    goto :goto_0

    .line 169
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/call/CallReceiverService;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->INCOMING_END:Lcom/iflytek/base/call/PhoneState;

    goto :goto_0

    .line 173
    :cond_4
    const-string/jumbo v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/iflytek/base/call/CallReceiverService;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->OUTGOING:Lcom/iflytek/base/call/PhoneState;

    goto :goto_0

    .line 178
    :cond_5
    sget-object v0, Lcom/iflytek/base/call/PhoneState;->UNKNOWN:Lcom/iflytek/base/call/PhoneState;

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/base/call/CallReceiverService;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    if-nez p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "state":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/iflytek/base/call/CallReceiverService;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/iflytek/base/call/CallReceiverService;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/iflytek/base/call/CallReceiverService;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const-string/jumbo v2, "CallReceiverService"

    const-string/jumbo v3, "handleCallLogCollector | PhoneCollecterSetting.addCallBroadcastCount"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->getInstance()Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/common/adaptation/logcollect/PhoneCollecterSetting;->addCallBroadcastCount()V

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/iflytek/base/call/CallReceiverService;->f:Landroid/content/Context;

    invoke-static {v1}, Lzu;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    invoke-static {}, Lagm;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.PHONE_STATE_2"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.PHONE_STATE2"

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.PHONE_STATE_EXT"

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.intent.action.DUAL_PHONE_STATE"

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "lastState"    # Ljava/lang/String;
    .param p2, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 188
    if-nez p2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const-string/jumbo v1, "RINGING"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    const-string/jumbo v1, "IDLE"

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/base/call/CallReceiverService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/base/call/CallReceiverService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/base/call/CallReceiverService;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/iflytek/base/call/CallReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/base/call/CallReceiverService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string/jumbo v0, "RINGING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "lastState"    # Ljava/lang/String;
    .param p2, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 205
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    const-string/jumbo v1, "OFFHOOK"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RINGING"

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/base/call/CallReceiverService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->g:Landroid/content/Intent;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "lastState"    # Ljava/lang/String;
    .param p2, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 222
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    const-string/jumbo v1, "IDLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OFFHOOK"

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/iflytek/base/call/CallReceiverService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/call/CallReceiverService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "lastState"    # Ljava/lang/String;
    .param p2, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 239
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    const-string/jumbo v1, "IDLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RINGING"

    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "lastState"    # Ljava/lang/String;
    .param p2, "currentState"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    iput-object p0, p0, Lcom/iflytek/base/call/CallReceiverService;->f:Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "CallReceiverService"

    const-string/jumbo v1, "service onCreate"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CallReceiverService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->b:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 70
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->c:Landroid/os/Looper;

    .line 72
    new-instance v0, Lcom/iflytek/base/call/CallReceiverService$a;

    iget-object v1, p0, Lcom/iflytek/base/call/CallReceiverService;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/base/call/CallReceiverService$a;-><init>(Lcom/iflytek/base/call/CallReceiverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->a:Lcom/iflytek/base/call/CallReceiverService$a;

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    const-string/jumbo v0, "CallReceiverService"

    const-string/jumbo v1, "service onDestroy"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/iflytek/base/call/CallReceiverService;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 95
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 77
    const-string/jumbo v1, "CallReceiverService"

    const-string/jumbo v2, "service onStartCommand"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/iflytek/base/call/CallReceiverService;->stopSelf()V

    .line 86
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/call/CallReceiverService;->a:Lcom/iflytek/base/call/CallReceiverService$a;

    invoke-virtual {v1}, Lcom/iflytek/base/call/CallReceiverService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 84
    iget-object v1, p0, Lcom/iflytek/base/call/CallReceiverService;->a:Lcom/iflytek/base/call/CallReceiverService$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/call/CallReceiverService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
