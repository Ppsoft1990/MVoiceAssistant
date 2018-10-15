.class Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;
.super Lcom/iflytek/yd/base/BaseThread;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1090
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0}, Lcom/iflytek/yd/base/BaseThread;-><init>()V

    .line 1093
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1097
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->f:I

    .line 1098
    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p2, "x1"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lja;->a(I)V

    .line 1759
    :goto_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1761
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljn;->a(Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lja;->d(Ljava/lang/String;)V

    .line 1763
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartReupload  BEGIN msc_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1766
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1767
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    const-string/jumbo v2, ""

    iget v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->f:I

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1768
    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lja;->b(Ljava/lang/String;)Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    move-result-object v5

    .line 1767
    invoke-interface/range {v0 .. v5}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->beginRecognize(Ljava/lang/String;Ljava/lang/String;IILcom/iflytek/yd/speech/msc/interfaces/MscType;)V

    .line 1770
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1771
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->d()I

    move-result v0

    if-lez v0, :cond_1

    .line 1772
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->e()V

    .line 1776
    :goto_1
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)V

    .line 1777
    return-void

    .line 1756
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja;->a(I)V

    goto/16 :goto_0

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->f()V

    goto :goto_1
.end method

.method private a(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1106
    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1139
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processMessage error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :goto_0
    return-void

    .line 1130
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c(Landroid/os/Message;)V

    goto :goto_0

    .line 1133
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->d(Landroid/os/Message;)V

    goto :goto_0

    .line 1136
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->e(Landroid/os/Message;)V

    goto :goto_0

    .line 1128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Landroid/os/Message;)V
    .locals 39
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1149
    invoke-static {}, Lcom/iflytek/yd/log/LoggingTime;->resetTime()V

    .line 1150
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;

    .line 1151
    .local v19, "args":Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;->a:Landroid/content/Intent;

    move-object/from16 v28, v0

    .line 1152
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;->b:Ljt;

    move-object/from16 v32, v0

    .line 1153
    .local v32, "listener":Ljt;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljp;

    move-result-object v2

    invoke-interface {v2}, Ljp;->i()V

    .line 1158
    :cond_0
    if-nez v28, :cond_1

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3512

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    .line 1550
    :goto_0
    return-void

    .line 1163
    :cond_1
    const-string/jumbo v2, "web_scene"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1164
    .local v38, "web_focus":Ljava/lang/String;
    const-string/jumbo v2, "web_action"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1165
    .local v37, "web_action":Ljava/lang/String;
    const-string/jumbo v2, "engine_type"

    const/16 v4, 0x11

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1168
    .local v3, "engineType":I
    const-string/jumbo v2, "local_scene"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1169
    .local v8, "aitalk_focus":Ljava/lang/String;
    const-string/jumbo v2, "speech_entry"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1170
    .local v26, "entry":Ljava/lang/String;
    const-string/jumbo v2, "is_reupload"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1171
    .local v31, "isReupload":Z
    const-string/jumbo v2, "local_lexicon_item"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1174
    .local v17, "aitalk_lex_item":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v2

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v2, v4, :cond_3

    .line 1175
    if-eqz v32, :cond_2

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3509

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    .line 1177
    :cond_2
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartReco but old is runing. mCurrentListener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1178
    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1177
    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Ljt;)V

    goto/16 :goto_0

    .line 1183
    :cond_3
    const-string/jumbo v2, "vad_front_time"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->a()Ljc;

    move-result-object v4

    invoke-virtual {v4}, Ljc;->b()I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v34

    .line 1184
    .local v34, "tempVadBegin":I
    const-string/jumbo v2, "vad_end_time"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->a()Ljc;

    move-result-object v4

    invoke-virtual {v4}, Ljc;->a()I

    move-result v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 1185
    .local v35, "tempVadEnd":I
    if-gtz v34, :cond_4

    .line 1186
    const/16 v34, -0x1

    .line 1188
    :cond_4
    if-gtz v35, :cond_5

    .line 1189
    const/16 v35, -0x1

    .line 1191
    :cond_5
    new-instance v2, Lcom/iflytek/yd/system/ConnectionManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v10

    .line 1192
    .local v10, "isNetConnected":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const-string/jumbo v4, "speech_test"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lpv;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lpv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1202
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1203
    const/16 v3, 0x100

    .line 1264
    :cond_7
    :goto_1
    const/4 v2, 0x1

    if-ne v3, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1265
    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v2

    invoke-interface {v2}, Ljo;->m()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1266
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco error is black name."

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3508

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    goto/16 :goto_0

    .line 1206
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isJniLoaded()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc350e

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    goto/16 :goto_0

    .line 1213
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1215
    if-nez v10, :cond_d

    .line 1217
    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isJniLoaded()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1218
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3508

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    goto/16 :goto_0

    .line 1222
    :cond_b
    const/4 v3, 0x1

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3508

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    invoke-interface {v2, v8}, Ljn;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1228
    :cond_c
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco ERROR_NETWORK set engineType to LOCAL"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1232
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isJniLoaded()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1233
    const/16 v3, 0x10

    .line 1234
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco no localEngine setto ENGINE_WEB"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v2

    invoke-interface {v2}, Ljo;->k()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1237
    const/16 v3, 0x10

    .line 1238
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco isLowEndCpu setto ENGINE_WEB"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1244
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1245
    if-nez v10, :cond_7

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v2

    invoke-interface {v2}, Ljo;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "cnsms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1249
    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v4

    const-string/jumbo v5, "lauguage"

    invoke-interface {v4, v5}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1248
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v2

    invoke-interface {v2}, Ljo;->i()Ljava/lang/String;

    move-result-object v8

    .line 1251
    const/4 v3, 0x1

    .line 1252
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco no NETWORK SMS==>Aitalk"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1254
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3508

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    goto/16 :goto_0

    .line 1261
    :cond_11
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco only start record."

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1272
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-virtual {v2, v4}, Lja;->a(I)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lja;->c(Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljn;->b(Ljava/lang/String;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljn;->a(Ljava/lang/String;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    .line 1284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->g:Z

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->b()V

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->a()Ljc;

    move-result-object v4

    invoke-virtual {v4}, Ljc;->c()I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_13

    if-gtz v34, :cond_14

    if-gtz v35, :cond_14

    .line 1292
    :cond_13
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->a()Ljc;

    move-result-object v4

    invoke-virtual {v4}, Ljc;->d()I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1295
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/speech/vad/VadCheck;->setEndPointParam(I)I

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/iflytek/yd/speech/vad/VadCheck;->setBeginPointParam(I)I

    .line 1297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/speech/vad/VadCheck;->setSpeechTimeout(I)I

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/vad/VadCheck;->setEarlyStartDisable()I

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/vad/VadCheck;->setFeatrueEnable()I

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    const-string/jumbo v4, "input_type"

    const-string/jumbo v5, "1"

    invoke-interface {v2, v4, v5}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1306
    if-eqz v31, :cond_16

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->e:Ljava/lang/String;

    .line 1309
    invoke-static {}, Lja;->e()Lir;

    move-result-object v7

    .line 1308
    invoke-interface/range {v2 .. v7}, Ljq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lir;)V

    .line 1315
    :cond_15
    :goto_2
    if-nez v31, :cond_17

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->c()V

    .line 1323
    const-string/jumbo v2, "audio_uri"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1324
    const-string/jumbo v2, "sample_rate"

    const/16 v4, 0x3e80

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1325
    .local v9, "sampleRate":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const-string/jumbo v2, "audio_uri"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v38

    move-object/from16 v7, v37

    invoke-static/range {v4 .. v10}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1311
    .end local v9    # "sampleRate":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    .line 1312
    invoke-static {}, Lja;->e()Lir;

    move-result-object v7

    move-object/from16 v4, v38

    move-object v5, v8

    move-object/from16 v6, v26

    .line 1311
    invoke-interface/range {v2 .. v7}, Ljq;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lir;)V

    goto :goto_2

    .line 1318
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a()V

    goto/16 :goto_0

    .line 1332
    :cond_18
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartReco begin engine="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1333
    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " RecordTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " vadEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " vadBegin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timeToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1335
    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1332
    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z

    .line 1339
    const-string/jumbo v2, "append_audio"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 1341
    .local v18, "appendAudioFlag":Z
    if-eqz v18, :cond_26

    .line 1342
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco appendAudio flag is true"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1404
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    .line 1405
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->d:Ljava/lang/String;

    .line 1406
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->e:Ljava/lang/String;

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljn;->a(Ljava/lang/String;)V

    .line 1409
    const-string/jumbo v2, "web_grammar"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1410
    .local v13, "msc_grammar":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1411
    .local v21, "category":Ljava/lang/String;
    const-string/jumbo v2, "evaluate_text"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1412
    .local v27, "eva_text":Ljava/lang/String;
    if-eqz v13, :cond_19

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 1413
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    .line 1415
    :cond_1a
    if-eqz v27, :cond_1b

    .line 1416
    const-string/jumbo v2, "evaluate_category"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1417
    move-object/from16 v13, v27

    .line 1419
    :cond_1b
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartReco msc_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " msc_grammar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lja;->d(Ljava/lang/String;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lja;->a(Landroid/content/Intent;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lja;->a(Ljava/lang/String;)V

    .line 1427
    const-string/jumbo v2, "cloud_vad_end_time"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 1428
    .local v23, "cloud_vad_end":I
    const-string/jumbo v2, "cloud_vad_front_time"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1429
    .local v24, "cloud_vad_front":I
    if-gez v23, :cond_1c

    .line 1430
    const/16 v23, 0x0

    .line 1432
    :cond_1c
    if-gez v24, :cond_1d

    .line 1433
    const/16 v24, 0x0

    .line 1435
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lja;->b(II)V

    .line 1438
    if-gtz v34, :cond_2e

    if-gtz v35, :cond_2e

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lja;->a(II)V

    .line 1444
    :goto_4
    const/16 v9, 0x3e80

    .line 1445
    .restart local v9    # "sampleRate":I
    if-nez v18, :cond_1e

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->e()I

    move-result v9

    .line 1448
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1449
    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1450
    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lja;->b(Ljava/lang/String;)Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    move-result-object v16

    move v14, v9

    .line 1448
    invoke-interface/range {v11 .. v16}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->beginRecognize(Ljava/lang/String;Ljava/lang/String;IILcom/iflytek/yd/speech/msc/interfaces/MscType;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordOpen()V

    .line 1455
    .end local v9    # "sampleRate":I
    .end local v13    # "msc_grammar":Ljava/lang/String;
    .end local v21    # "category":Ljava/lang/String;
    .end local v23    # "cloud_vad_end":I
    .end local v24    # "cloud_vad_front":I
    .end local v27    # "eva_text":Ljava/lang/String;
    :cond_1f
    if-eqz v17, :cond_2f

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljn;->a(Z)V

    .line 1460
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    invoke-interface {v2, v8}, Ljn;->b(Ljava/lang/String;)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1464
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 1465
    .local v33, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    if-eqz v10, :cond_20

    .line 1468
    const-string/jumbo v2, "net_type"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1469
    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->h()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1468
    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :cond_20
    if-eqz v17, :cond_21

    .line 1472
    const-string/jumbo v2, "temp_item"

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1474
    :cond_21
    const-string/jumbo v2, "caller_pkg"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1475
    .local v20, "caller":Ljava/lang/String;
    const-string/jumbo v2, "caller"

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string/jumbo v2, "channel"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1477
    .local v22, "channel":Ljava/lang/String;
    const-string/jumbo v2, "channel"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v2

    invoke-interface {v2}, Ljo;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1479
    const-string/jumbo v2, "guide_focus"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1480
    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->n()Ljava/lang/String;

    move-result-object v4

    .line 1479
    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    :cond_22
    const-string/jumbo v2, "trans_src"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->o()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v2, "trans_tag"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->p()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v2, v4, v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->startTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;Landroid/os/Bundle;)V

    .line 1489
    .end local v20    # "caller":Ljava/lang/String;
    .end local v22    # "channel":Ljava/lang/String;
    .end local v33    # "params":Landroid/os/Bundle;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1491
    const-string/jumbo v2, "wake_scene"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1492
    .local v36, "wake_focus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->e()I

    move-result v9

    .line 1493
    .restart local v9    # "sampleRate":I
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartReco IvwScene="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sample="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 1496
    .restart local v33    # "params":Landroid/os/Bundle;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-string/jumbo v2, "sample_rate"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->z(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v2, v4, v0}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;->start(Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;Landroid/os/Bundle;)V

    .line 1500
    .end local v9    # "sampleRate":I
    .end local v33    # "params":Landroid/os/Bundle;
    .end local v36    # "wake_focus":Ljava/lang/String;
    :cond_24
    if-eqz v18, :cond_30

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordReady()V

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    invoke-interface {v2}, Ljq;->a()V

    .line 1549
    :cond_25
    :goto_6
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco end"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1344
    :cond_26
    const-string/jumbo v2, "is_play_record_tone"

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 1345
    .local v29, "isPlayRecordTone":Z
    const-string/jumbo v2, "is_play_result_tone"

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1346
    .local v30, "isPlayResultTone":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move/from16 v0, v29

    invoke-static {v2, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1350
    if-gtz v34, :cond_2a

    if-gtz v35, :cond_2a

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lje;->a(I)V

    .line 1369
    :cond_27
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->d()V

    .line 1373
    :cond_28
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lja;->e(Ljava/lang/String;)I

    move-result v9

    .line 1375
    .restart local v9    # "sampleRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1381
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    new-instance v4, Lij;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v9}, Lij;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lij;)Lij;

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lij;->a(Lii;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    .end local v9    # "sampleRate":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 1388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3501

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V

    goto/16 :goto_0

    .line 1353
    :cond_2a
    if-eqz v30, :cond_2c

    .line 1354
    if-eqz v29, :cond_2b

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lje;->a(I)V

    .line 1362
    :goto_9
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onPlaySound begin"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 1364
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onPlaySound end"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1357
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lje;->a(I)V

    goto :goto_9

    .line 1360
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lje;->a(I)V

    goto :goto_9

    .line 1383
    :catch_0
    move-exception v25

    .line 1384
    .local v25, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, ""

    move-object/from16 v0, v25

    invoke-static {v2, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lij;)Lij;

    goto :goto_8

    .line 1393
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_2d
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco create PcmRecorder ok"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco startRecording "

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->a()V

    .line 1399
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco startRecording OK "

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1441
    .end local v29    # "isPlayRecordTone":Z
    .end local v30    # "isPlayResultTone":Z
    .restart local v13    # "msc_grammar":Ljava/lang/String;
    .restart local v21    # "category":Ljava/lang/String;
    .restart local v23    # "cloud_vad_end":I
    .restart local v24    # "cloud_vad_front":I
    .restart local v27    # "eva_text":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lja;->a(II)V

    goto/16 :goto_4

    .line 1458
    .end local v13    # "msc_grammar":Ljava/lang/String;
    .end local v21    # "category":Ljava/lang/String;
    .end local v23    # "cloud_vad_end":I
    .end local v24    # "cloud_vad_front":I
    .end local v27    # "eva_text":Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljn;->a(Z)V

    goto/16 :goto_5

    .line 1509
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->f()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1510
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco startRecording ok"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->e()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->f:I

    .line 1512
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->f:I

    invoke-static {v2}, Lcom/iflytek/yd/speech/vad/VadFileLog;->open(I)V

    .line 1513
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco waitPlayEnd---1---"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->d()V

    .line 1518
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco waitPlayEnd---2--"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->g:Z

    if-eqz v2, :cond_32

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;

    move-result-object v4

    invoke-interface {v4}, Ljo;->a()Ljc;

    move-result-object v4

    .line 1524
    invoke-virtual {v4}, Ljc;->d()I

    move-result v4

    .line 1523
    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1526
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/speech/vad/VadCheck;->setEndPointParam(I)I

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/speech/vad/VadCheck;->setBeginPointParam(I)I

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/iflytek/yd/speech/vad/VadCheck;->setSpeechTimeout(I)I

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lje;->a(I)V

    .line 1530
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartReco set LongPress timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1531
    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1530
    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordReady()V

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    invoke-interface {v2}, Ljq;->a()V

    goto/16 :goto_6

    .line 1541
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1543
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onStartReco startRecording faild"

    invoke-static {v2, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3501

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const v4, 0xc3501

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    goto/16 :goto_6
.end method

.method private d(Landroid/os/Message;)V
    .locals 7
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1557
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljt;

    .line 1558
    .local v1, "listener":Ljt;
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1559
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 1569
    :cond_0
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v2

    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1570
    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v2

    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v2, v3, :cond_3

    .line 1571
    :cond_1
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onStopReco  but is not runing."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    :goto_0
    return-void

    .line 1562
    :cond_2
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStopReco error listner:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != Current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1563
    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1562
    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1574
    :cond_3
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStopReco begin status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1578
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordClose()V

    .line 1579
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1580
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->c()V

    .line 1582
    :cond_4
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a()V

    .line 1583
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1584
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1637
    :cond_5
    :goto_1
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onStopReco end"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1588
    :cond_6
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1589
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->endData()I

    .line 1592
    :cond_7
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1594
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->C(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1595
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordStop(I)V

    .line 1599
    :goto_2
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->stopRecognize()V

    .line 1602
    :cond_8
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1603
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;->stop()V

    .line 1606
    :cond_9
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1609
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1610
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v2

    invoke-virtual {v2}, Lij;->b()V

    .line 1611
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onStopReco stopRecording OK"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1614
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 1618
    :cond_a
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1619
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;

    move-result-object v2

    invoke-interface {v2}, Ljq;->b()V

    .line 1623
    :cond_b
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1624
    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1625
    :cond_c
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 1628
    :cond_d
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1630
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v0, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v2

    invoke-interface {v2, v0}, Ljn;->a(Ljava/util/List;)I

    .line 1633
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v0, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/util/List;Z)V

    .line 1634
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    goto/16 :goto_1

    .line 1597
    .end local v0    # "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    :cond_e
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordStop(I)V

    goto/16 :goto_2
.end method

.method private e(Landroid/os/Message;)V
    .locals 10
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x7d0

    const-wide/16 v8, 0x32

    const/4 v6, 0x0

    .line 1649
    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1650
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onAbortReco but not runing."

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    :goto_0
    return-void

    .line 1654
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljt;

    .line 1656
    .local v1, "listener":Ljt;
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1657
    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v3

    if-ne v3, v1, :cond_8

    .line 1666
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_9

    .line 1667
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAbortReco lisener to null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;

    .line 1673
    :goto_1
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onAbortReco begin"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;

    move-result-object v3

    invoke-virtual {v3}, Lje;->c()V

    .line 1678
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V

    .line 1680
    sget-object v3, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 1681
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1682
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1683
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v3

    invoke-virtual {v3}, Lij;->b()V

    .line 1685
    :cond_2
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1687
    :cond_3
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1688
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;

    move-result-object v3

    invoke-virtual {v3}, Lij;->d()V

    .line 1689
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lij;)Lij;

    .line 1690
    invoke-static {}, Lcom/iflytek/yd/speech/vad/VadFileLog;->close()V

    .line 1693
    :cond_4
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1694
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->stopTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;)V

    .line 1697
    const/4 v2, 0x0

    .line 1698
    .local v2, "wait_time":I
    :goto_2
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isInited()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isIdle()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1700
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    int-to-long v4, v2

    add-long/2addr v4, v8

    long-to-int v2, v4

    .line 1702
    if-le v2, v7, :cond_a

    .line 1712
    .end local v2    # "wait_time":I
    :cond_5
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1713
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMsc.abort "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->abortRecognize(I)V

    .line 1716
    const/4 v2, 0x0

    .line 1717
    .restart local v2    # "wait_time":I
    :goto_3
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->isIdle()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1719
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1720
    int-to-long v4, v2

    add-long/2addr v4, v8

    long-to-int v2, v4

    .line 1721
    if-le v2, v7, :cond_b

    .line 1731
    .end local v2    # "wait_time":I
    :cond_6
    invoke-static {v6}, Lja;->a(Lir;)V

    .line 1733
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1734
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;->stop()V

    .line 1738
    :cond_7
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    sget-object v4, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-static {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1739
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onAbortReco end"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v3

    invoke-interface {v3, v6}, Ljn;->b(Ljava/lang/String;)V

    .line 1743
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-static {v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;

    move-result-object v3

    invoke-interface {v3, v6}, Ljn;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1661
    :cond_8
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAbortReco error listner:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != Current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 1662
    invoke-static {v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1661
    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1670
    :cond_9
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "onAbortReco self call."

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1705
    .restart local v2    # "wait_time":I
    :cond_a
    :try_start_2
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "mAitalk.abort wait.... "

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1724
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_b
    :try_start_3
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, "mMsc.abort wait.... "

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 1725
    :catch_1
    move-exception v0

    .line 1726
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SPEECH_SpeechRecognizer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method


# virtual methods
.method protected threadProc()V
    .locals 4

    .prologue
    .line 1116
    :goto_0
    iget-boolean v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->running:Z

    if-eqz v2, :cond_0

    .line 1118
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1119
    .local v1, "m":Landroid/os/Message;
    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->b(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1120
    .end local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1125
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
