.class public Lagp;
.super Ljava/lang/Object;
.source "GrayControlInfo.java"


# annotations
.annotation runtime Lbbw;
    a = "gray_control_adaptation"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation runtime Lbbu;
        a = "id"
    .end annotation

    .annotation runtime Lbbv;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "cpuInfo"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "modelInfo"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "speech"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "incoming_call"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "answer_call"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "dial_call"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "incoming_sms"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "send_sms"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "bluetooth_record"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "bluetooth_wake"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "bluetooth_play"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "lock_screen"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "hardware_acce"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "local_recognize"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "speak_evaluate"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "oralgame"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "sogou_plugin"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "schedule_optimization"
    .end annotation
.end field

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lagp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingSms"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 167
    iput-object p2, p0, Lagp;->h:Ljava/lang/String;

    .line 168
    if-eqz p2, :cond_0

    const-string/jumbo v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_SMS_RECEIVE"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 170
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_AUTO_NOTIFY_SMS"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 171
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CARMODE_SMS_READ"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 172
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/mms/NotifyManager;->c(Landroid/content/Context;)V

    .line 174
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "modelInfo"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lagp;->c:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lagp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "speech"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lagp;->d:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lagp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "incomingCall"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lagp;->e:Ljava/lang/String;

    .line 141
    if-eqz p1, :cond_0

    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Laaz;->a(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lagp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "answerCall"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lagp;->f:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lagp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialCall"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lagp;->g:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lagp;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendSms"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lagp;->i:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lagp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "bluetoothRecord"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lagp;->j:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lagp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "bluetoothWake"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lagp;->k:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lagp;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .param p1, "bluetoothPlay"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lagp;->l:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lagp;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardWareAcce"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lagp;->n:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lagp;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .param p1, "lockScreen"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lagp;->m:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lagp;->t:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .param p1, "localRecognize"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lagp;->o:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public m()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lagp;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lagp;->t:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lagp;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .param p1, "speakEvaluate"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lagp;->p:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lagp;->s:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .param p1, "oralgame"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lagp;->q:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .param p1, "sogouPlugin"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lagp;->r:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .param p1, "mScheduleOptimization"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lagp;->s:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GrayControlInfo [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCpuInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mModelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSpeech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIncomingCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAnswerCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDialCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIncomingSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSendSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBluetoothRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBluetoothWake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBluetoothPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLockScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHardWareAcce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLocalRecognize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSpeakEvaluate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOralgame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSogouPlugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mScheduleOptimization"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lagp;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
