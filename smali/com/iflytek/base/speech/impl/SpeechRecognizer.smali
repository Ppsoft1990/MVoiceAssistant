.class public Lcom/iflytek/base/speech/impl/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Lii;
.implements Ljr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;,
        Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;,
        Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;,
        Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;,
        Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;


# instance fields
.field private A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Ljt;

.field private E:Ljt;

.field private F:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

.field private G:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

.field private H:Ljp;

.field private I:Ljq;

.field private J:Ljg;

.field private K:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

.field private L:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

.field private M:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

.field private N:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

.field private b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

.field private c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

.field private d:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

.field private e:Lcom/iflytek/yd/audio/SpeexDenoiser;

.field private f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

.field private g:Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

.field private h:Ljn;

.field private i:Lij;

.field private j:Lcom/iflytek/yd/speech/vad/VadCheck;

.field private k:Landroid/os/Looper;

.field private l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

.field private m:Lje;

.field private n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

.field private o:Landroid/content/Context;

.field private p:Ljo;

.field private q:Lja;

.field private r:Ljt;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Ljo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e:Lcom/iflytek/yd/audio/SpeexDenoiser;

    .line 128
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 132
    iput-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    .line 137
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    .line 138
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t:I

    .line 139
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    .line 140
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    .line 141
    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    .line 142
    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x:Z

    .line 143
    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y:Z

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    .line 148
    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->C:Z

    .line 1942
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;

    invoke-direct {v0, p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->K:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    .line 2040
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;

    invoke-direct {v0, p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$2;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->L:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .line 2083
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;

    invoke-direct {v0, p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$3;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->M:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

    .line 2101
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;

    invoke-direct {v0, p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$4;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->N:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    .line 203
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    .line 205
    new-instance v0, Ljg;

    invoke-direct {v0, p1}, Ljg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->J:Ljg;

    .line 206
    invoke-static {p1}, Lja;->a(Landroid/content/Context;)Lja;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q:Lja;

    .line 207
    new-instance v0, Ljw;

    invoke-direct {v0}, Ljw;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    .line 208
    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    .line 209
    return-void
.end method

.method static synthetic A(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    return-object v0
.end method

.method static synthetic B(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A:Z

    return v0
.end method

.method static synthetic C(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y:Z

    return v0
.end method

.method static synthetic D(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D:Ljt;

    return-object v0
.end method

.method static synthetic E(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    return-object v0
.end method

.method static synthetic F(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->z:Z

    return v0
.end method

.method static synthetic G(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljg;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->J:Ljg;

    return-object v0
.end method

.method static synthetic H(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->G:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    return-object v0
.end method

.method static synthetic I(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->F:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    return-object v0
.end method

.method static synthetic J(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l()V

    return-void
.end method

.method static synthetic K(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i()V

    return-void
.end method

.method static synthetic L(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j()V

    return-void
.end method

.method static synthetic M(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k()V

    return-void
.end method

.method public static a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljo;)Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configCallback"    # Ljo;

    .prologue
    .line 175
    const-class v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;-><init>(Landroid/content/Context;Ljo;)V

    sput-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 176
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/yd/audio/SpeexDenoiser;)Lcom/iflytek/yd/audio/SpeexDenoiser;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Lcom/iflytek/yd/audio/SpeexDenoiser;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e:Lcom/iflytek/yd/audio/SpeexDenoiser;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/vad/VadCheck;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lij;)Lij;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Lij;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i:Lij;

    return-object p1
.end method

.method private a(Landroid/content/Intent;Ljt;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Ljt;
    .param p3, "errorCode"    # I

    .prologue
    .line 2134
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImmediatError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    invoke-static {}, Lpu;->c()I

    move-result v1

    if-lez v1, :cond_0

    .line 2136
    const-string/jumbo v1, ""

    invoke-static {p3, v1}, Lpu;->a(ILjava/lang/String;)V

    .line 2138
    :cond_0
    if-eqz p2, :cond_3

    .line 2140
    const/4 v0, 0x1

    .line 2141
    .local v0, "isPlayResultTone":Z
    if-eqz p1, :cond_1

    .line 2142
    const-string/jumbo v1, "is_play_result_tone"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2145
    :cond_1
    if-eqz v0, :cond_2

    .line 2146
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(I)V

    .line 2149
    :cond_2
    if-eqz p2, :cond_3

    .line 2150
    invoke-interface {p2, p3}, Ljt;->onError(I)V

    .line 2153
    .end local v0    # "isPlayResultTone":Z
    :cond_3
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H:Ljp;

    if-eqz v1, :cond_4

    .line 2154
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H:Ljp;

    invoke-interface {v1}, Ljp;->j()V

    .line 2156
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljt;
    .param p3, "x3"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Landroid/content/Intent;Ljt;I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 87
    invoke-direct/range {p0 .. p6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljt;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Ljt;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c([B)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([BZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 16
    .param p1, "audioPath"    # Ljava/lang/String;
    .param p2, "mscType"    # Ljava/lang/String;
    .param p3, "mscAction"    # Ljava/lang/String;
    .param p4, "aitalkFocus"    # Ljava/lang/String;
    .param p5, "sampleRate"    # I
    .param p6, "isNetConnected"    # Z

    .prologue
    .line 1783
    const/16 v2, 0x7530

    move-object/from16 v0, p0

    iput v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljn;->a(Ljava/lang/String;)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljn;->b(Ljava/lang/String;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q:Lja;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lja;->d(Ljava/lang/String;)V

    .line 1790
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1791
    .local v11, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "focus"

    move-object/from16 v0, p4

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    if-eqz p6, :cond_0

    .line 1793
    const-string/jumbo v2, "net_type"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    .line 1794
    invoke-interface {v3}, Ljo;->h()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1793
    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    :cond_0
    const-string/jumbo v2, "trans_src"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v3}, Ljo;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string/jumbo v2, "trans_tag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v3}, Ljo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    const-string/jumbo v3, "input_type"

    const-string/jumbo v4, "0"

    invoke-interface {v2, v3, v4}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1801
    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    .line 1803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1805
    .local v12, "startTime":J
    if-nez p6, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isInited()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1806
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onStartWithAudioUrl net not connect and aitalk not init."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->L:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    invoke-interface {v2, v3}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->initEngine(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;)V

    .line 1808
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isInited()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1810
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 1814
    :cond_1
    if-eqz p6, :cond_2

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    const-string/jumbo v4, ""

    const/16 v5, 0x3e80

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q:Lja;

    .line 1816
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lja;->b(Ljava/lang/String;)Lcom/iflytek/yd/speech/msc/interfaces/MscType;

    move-result-object v7

    move-object/from16 v3, p2

    .line 1815
    invoke-interface/range {v2 .. v7}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->beginRecognize(Ljava/lang/String;Ljava/lang/String;IILcom/iflytek/yd/speech/msc/interfaces/MscType;)V

    .line 1818
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->M:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

    invoke-interface {v2, v3, v11}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->startTalk(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;Landroid/os/Bundle;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendMessage(Landroid/os/Message;)Z

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    if-eqz v2, :cond_3

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    invoke-interface {v2}, Ljq;->a()V

    .line 1826
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lpq;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v8

    .line 1827
    .local v8, "audioData":[B
    if-eqz v8, :cond_5

    array-length v2, v8

    const/16 v3, 0x1400

    if-gt v2, v3, :cond_5

    .line 1828
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b([B)V

    .line 1829
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([B)V

    .line 1861
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Ljt;)V

    .line 1862
    return-void

    .line 1831
    :cond_5
    if-eqz v8, :cond_4

    array-length v2, v8

    if-lez v2, :cond_4

    .line 1832
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v2, v8

    if-ge v10, v2, :cond_4

    .line 1833
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 1834
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onStartWithAudioBuffer speech time out"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A:Z

    goto :goto_1

    .line 1838
    :cond_6
    move v9, v10

    .line 1839
    .local v9, "from":I
    add-int/lit16 v15, v10, 0x1400

    .line 1840
    .local v15, "to":I
    array-length v2, v8

    if-lt v15, v2, :cond_7

    .line 1841
    array-length v15, v8

    .line 1843
    :cond_7
    invoke-static {v8, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 1844
    .local v14, "tempData":[B
    if-eqz p6, :cond_9

    .line 1845
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b([B)V

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1847
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([B)V

    .line 1856
    :cond_8
    :goto_3
    const-wide/16 v2, 0x1e

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1857
    add-int/lit16 v10, v10, 0x1400

    .line 1858
    goto :goto_2

    .line 1850
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isRunning()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1851
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onStartWithAudioBuffer aitalk not running"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1854
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([B)V

    goto :goto_3
.end method

.method private a(Ljava/util/List;Z)V
    .locals 4
    .param p2, "clear_old"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1927
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1938
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    monitor-enter v2

    .line 1931
    if-eqz p2, :cond_2

    .line 1932
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1934
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 1935
    .local v0, "item":Lcom/iflytek/yd/speech/ViaAsrResult;
    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1937
    .end local v0    # "item":Lcom/iflytek/yd/speech/ViaAsrResult;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a([B)V
    .locals 4
    .param p1, "dataBuffer"    # [B

    .prologue
    .line 773
    iget v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "error":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    .line 776
    :cond_0
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, "putAitalkAudioData empty data."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local v0    # "error":I
    :cond_1
    :goto_0
    return-void

    .line 778
    .restart local v0    # "error":I
    :cond_2
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    array-length v2, p1

    invoke-interface {v1, p1, v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->appendData([BI)I

    move-result v0

    .line 779
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putAitalkAudioData error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a([BZ)V
    .locals 9
    .param p1, "result"    # [B
    .param p2, "isLastResult"    # Z

    .prologue
    const/16 v8, 0x10

    const/4 v6, 0x0

    .line 2474
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback TIME."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2478
    .local v0, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_3

    .line 2479
    :cond_0
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback get Results null."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const v4, 0xc3516

    iput v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    .line 2490
    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    .line 2492
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 2493
    invoke-direct {p0, v0, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/util/List;Z)V

    .line 2494
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback . delete aitalk result."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    :cond_2
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    invoke-interface {v4}, Ljn;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2498
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v4}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t:I

    if-nez v4, :cond_4

    .line 2500
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    invoke-virtual {v4}, Lje;->b()I

    move-result v3

    .line 2501
    .local v3, "time":I
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMscResultCallback isTempScene wait..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    int-to-long v6, v3

    invoke-virtual {v4, v8, v6, v7}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendEmptyMessageDelayed(IJ)Z

    .line 2529
    .end local v3    # "time":I
    :goto_1
    return-void

    .line 2482
    :cond_3
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    invoke-interface {v4, p1, v0}, Ljn;->a([BLjava/util/List;)I

    move-result v2

    .line 2484
    .local v2, "ret":I
    if-nez v2, :cond_1

    .line 2485
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback get Results error."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const v4, 0xc3515

    iput v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    goto :goto_0

    .line 2507
    .end local v2    # "ret":I
    :cond_4
    invoke-direct {p0, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    .line 2508
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    invoke-virtual {v4, v8}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->removeMessages(I)V

    .line 2509
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback selfAbortRecognize."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyUiLastShow()V

    goto :goto_1

    .line 2514
    :cond_5
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-nez v4, :cond_6

    .line 2515
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback mCurrentListener null."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2518
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 2519
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, "onMscResultCallback desResult size 0."

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2523
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v4, v0}, Ljt;->onPartialResults(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    :goto_2
    iget-object v4, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyUiFirstShow()V

    goto :goto_1

    .line 2524
    :catch_0
    move-exception v1

    .line 2525
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "SPEECH_SpeechRecognizer"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private declared-synchronized a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z
    .locals 4
    .param p1, "newStatus"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .prologue
    const/4 v0, 0x0

    .line 1871
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne p1, v1, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_4

    .line 1874
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1909
    :goto_0
    monitor-exit p0

    return v0

    .line 1878
    :cond_0
    :try_start_1
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne p1, v1, :cond_1

    .line 1879
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_4

    .line 1881
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1886
    :cond_1
    :try_start_2
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne p1, v1, :cond_2

    .line 1887
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_4

    .line 1889
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1893
    :cond_2
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne p1, v1, :cond_3

    .line 1894
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_4

    .line 1896
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1900
    :cond_3
    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne p1, v1, :cond_4

    .line 1901
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v1, v2, :cond_4

    .line 1903
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1907
    :cond_4
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1909
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljt;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    return-object p1
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([B)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "results"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 2538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2539
    .local v1, "desResult":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    invoke-interface {v2, p1, v1}, Ljn;->a(Ljava/lang/String;Ljava/util/List;)I

    .line 2541
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAitalkResultCallback size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2544
    const/4 v0, 0x0

    .line 2545
    .local v0, "delay":I
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v2}, Lcom/iflytek/yd/speech/ViaAsrResult;->getWaitCloudDelay()I

    move-result v0

    .line 2547
    invoke-direct {p0, v1, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/util/List;Z)V

    .line 2550
    if-lez v0, :cond_1

    .line 2552
    iget v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->isRuning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    if-nez v2, :cond_0

    .line 2555
    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    const/16 v3, 0x10

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendEmptyMessageDelayed(IJ)Z

    .line 2557
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAitalkResultCallback Wait MSC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    .end local v0    # "delay":I
    :goto_0
    return-void

    .line 2559
    .restart local v0    # "delay":I
    :cond_0
    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    goto :goto_0

    .line 2565
    :cond_1
    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    goto :goto_0

    .line 2573
    .end local v0    # "delay":I
    :cond_2
    iget v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->isRuning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    if-nez v2, :cond_3

    .line 2576
    const-string/jumbo v2, "SPEECH_SpeechRecognizer"

    const-string/jumbo v3, "onAitalkResultCallback MSC is runn."

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2578
    :cond_3
    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    goto :goto_0
.end method

.method private b([B)V
    .locals 3
    .param p1, "dataBuffer"    # [B

    .prologue
    .line 786
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 788
    :cond_0
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "putMscAudioData empty data."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 790
    :cond_2
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    array-length v1, p1

    invoke-interface {v0, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyVadOut(I)V

    .line 791
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->putRecordData([BI)V

    .line 792
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putMscAudioData len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(I)Z
    .locals 2
    .param p1, "engineType"    # I

    .prologue
    const/4 v0, 0x1

    .line 802
    and-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 803
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 802
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljo;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    return-object v0
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljt;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D:Ljt;

    return-object p1
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b([B)V

    return-void
.end method

.method private c([B)V
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    .line 2301
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v1, :cond_0

    .line 2303
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v1, p1}, Ljt;->onBufferReceived([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2308
    :cond_0
    :goto_0
    return-void

    .line 2304
    :catch_0
    move-exception v0

    .line 2305
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(I)Z
    .locals 3
    .param p1, "engineType"    # I

    .prologue
    .line 812
    const/16 v1, 0x10

    and-int/lit8 v2, p1, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 813
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 812
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->C:Z

    return p1
.end method

.method static synthetic d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Ljt;)Ljt;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # Ljt;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    return-object p1
.end method

.method static synthetic d(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g(I)V

    return-void
.end method

.method private d(I)Z
    .locals 3
    .param p1, "engineType"    # I

    .prologue
    .line 820
    const/16 v1, 0x100

    and-int/lit16 v2, p1, 0x100

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 821
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 820
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljt;)V
    .locals 2
    .param p1, "listener"    # Ljt;

    .prologue
    .line 848
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 849
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 850
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 851
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-static {v1, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;Landroid/os/Message;)V

    .line 852
    return-void
.end method

.method private e(I)Z
    .locals 1
    .param p1, "engineType"    # I

    .prologue
    .line 828
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic f()Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    return-object v0
.end method

.method private f(I)V
    .locals 2
    .param p1, "msc_abort_type"    # I

    .prologue
    .line 836
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 837
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 838
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 839
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 840
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 841
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-static {v1, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;Landroid/os/Message;)V

    .line 842
    return-void
.end method

.method static synthetic f(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    return p1
.end method

.method static synthetic g(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 4

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    if-nez v1, :cond_0

    .line 672
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, "waitAllEngineInit create "

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "RecognizerMessageThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 676
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 677
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k:Landroid/os/Looper;

    .line 678
    new-instance v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    .line 679
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->sendEmptyMessage(I)Z

    .line 681
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    invoke-virtual {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 682
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, "waitAllEngineInit __begin__"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :goto_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    invoke-virtual {v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 687
    :cond_1
    :try_start_1
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, "waitAllEngineInit __end__"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private g(I)V
    .locals 3
    .param p1, "vol"    # I

    .prologue
    .line 2163
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v1, :cond_0

    .line 2165
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v1, p1}, Ljt;->onVolumeChanged(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    :cond_0
    :goto_0
    return-void

    .line 2166
    :catch_0
    move-exception v0

    .line 2167
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    return p1
.end method

.method static synthetic h(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lja;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q:Lja;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    monitor-enter v1

    .line 1918
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1919
    monitor-exit v1

    .line 1920
    return-void

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h(I)V
    .locals 11
    .param p1, "timeToken"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 2177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2178
    .local v5, "res_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->B:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2181
    const/4 v4, 0x0

    .line 2182
    .local v4, "msc_sid":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->getSessionToken()I

    move-result v6

    iget v7, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    if-ne v6, v7, :cond_0

    .line 2183
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v6}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->getSessionId()Ljava/lang/String;

    move-result-object v4

    .line 2184
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSelfFinisCallback msc_sid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 2189
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v6, v4}, Lcom/iflytek/yd/speech/ViaAsrResult;->setSessionId(Ljava/lang/String;)V

    .line 2190
    const/4 v2, 0x0

    .line 2191
    .local v2, "flag":I
    invoke-static {}, Lpu;->c()I

    move-result v2

    .line 2192
    if-lez v2, :cond_1

    .line 2193
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/speech/ViaAsrResult;

    int-to-byte v7, v2

    invoke-virtual {v6, v7}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTestMode(B)V

    .line 2194
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    const-string/jumbo v7, "perflog"

    invoke-interface {v6, v7}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->getMspParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2195
    .local v3, "log":Ljava/lang/String;
    invoke-static {v9, v3}, Lpu;->a(ILjava/lang/String;)V

    .line 2197
    .end local v3    # "log":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lpu;->g()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2199
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v6, v10}, Lcom/iflytek/yd/speech/ViaAsrResult;->setTestMode(B)V

    .line 2203
    :cond_2
    :try_start_0
    const-string/jumbo v7, "SPEECH_SpeechRecognizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSelfFinisCallback size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " testFlag="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v6, 0x0

    .line 2204
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-virtual {v6}, Lcom/iflytek/yd/speech/ViaAsrResult;->getTestMode()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2203
    invoke-static {v7, v6}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    iget v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    if-eq v6, p1, :cond_5

    .line 2206
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSelfFinisCallback errorToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "!="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2260
    .end local v2    # "flag":I
    :cond_3
    :goto_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    .line 2263
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H:Ljp;

    if-eqz v6, :cond_4

    .line 2264
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H:Ljp;

    invoke-interface {v6}, Ljp;->j()V

    .line 2268
    :cond_4
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    const-string/jumbo v7, "onSelfFinishCallback TIME."

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    return-void

    .line 2209
    .restart local v2    # "flag":I
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v6, :cond_3

    .line 2210
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(I)V

    .line 2211
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v6, v5}, Ljt;->onResults(Ljava/util/List;)V

    .line 2212
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    if-eqz v6, :cond_3

    .line 2213
    iget-object v7, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/yd/speech/ViaAsrResult;

    invoke-interface {v7, v6, v4}, Ljq;->a(Lcom/iflytek/yd/speech/ViaAsrResult;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2217
    :catch_0
    move-exception v0

    .line 2218
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    const-string/jumbo v7, "NullPointerException "

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2224
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "flag":I
    :cond_6
    const/4 v1, 0x0

    .line 2225
    .local v1, "errorId":I
    iget v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    if-lez v6, :cond_a

    .line 2226
    iget v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    .line 2230
    :cond_7
    :goto_1
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSelfFinisCallback error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    if-nez v1, :cond_8

    .line 2232
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    const-string/jumbo v7, "onSelfFinisCallback error=0 set to ERROR_NO_MATCH"

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const v1, 0xc3503

    .line 2236
    :cond_8
    invoke-static {}, Lpu;->c()I

    move-result v6

    if-lez v6, :cond_9

    .line 2237
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    const-string/jumbo v7, "perflog"

    invoke-interface {v6, v7}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->getMspParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2238
    .restart local v3    # "log":Ljava/lang/String;
    invoke-static {v1, v3}, Lpu;->a(ILjava/lang/String;)V

    .line 2242
    .end local v3    # "log":Ljava/lang/String;
    :cond_9
    :try_start_2
    iget v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    if-eq v6, p1, :cond_b

    .line 2243
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSelfFinisCallback errorToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "!="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2256
    :catch_1
    move-exception v0

    .line 2257
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SPEECH_SpeechRecognizer"

    const-string/jumbo v7, "NullPointerException "

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2227
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_a
    iget v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t:I

    if-lez v6, :cond_7

    .line 2228
    iget v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t:I

    goto :goto_1

    .line 2246
    :cond_b
    :try_start_3
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v6, :cond_3

    .line 2247
    iget-boolean v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y:Z

    if-nez v6, :cond_c

    .line 2248
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(I)V

    .line 2250
    :cond_c
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v6, v1}, Ljt;->onError(I)V

    .line 2251
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    if-eqz v6, :cond_3

    .line 2252
    iget-object v6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    invoke-interface {v6, v1, v4}, Ljq;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    return p1
.end method

.method static synthetic i(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljt;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 2275
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v1, :cond_0

    .line 2277
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v1}, Ljt;->onBeginningOfSpeech()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2282
    :cond_0
    :goto_0
    return-void

    .line 2278
    :catch_0
    move-exception v0

    .line 2279
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private i(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 2428
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMscErrorCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    if-nez p1, :cond_0

    .line 2430
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onMscErrorCallback errorCode set to 10100"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    const/16 p1, 0x2774

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v0, v1, :cond_1

    .line 2436
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onMscErrorCallback but BeginRecording wait..."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    invoke-virtual {v0}, Lje;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2439
    :cond_1
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    .line 2440
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2441
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onMscErrorCallback but Aitalk is runing."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    :goto_0
    return-void

    .line 2443
    :cond_2
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onMscErrorCallback selfAbortRecognize."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->removeMessages(I)V

    .line 2445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/yd/audio/SpeexDenoiser;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e:Lcom/iflytek/yd/audio/SpeexDenoiser;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 2288
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v1, :cond_0

    .line 2290
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v1}, Ljt;->onEndOfSpeech()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2295
    :cond_0
    :goto_0
    return-void

    .line 2291
    :catch_0
    move-exception v0

    .line 2292
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private j(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 2453
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAitalkErrorCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->t:I

    .line 2456
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v0, v1, :cond_0

    .line 2457
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onAitalkErrorCallback but BeginRecording wait..."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    invoke-virtual {v0}, Lje;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2460
    :cond_0
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->isRuning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    if-nez v0, :cond_1

    .line 2461
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onAitalkErrorCallback but MSC is runing."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    :goto_0
    return-void

    .line 2463
    :cond_1
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "onAitalkErrorCallback selfAbortRecognize."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(I)V

    return-void
.end method

.method static synthetic k(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H:Ljp;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 2314
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    if-eqz v1, :cond_0

    .line 2316
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-interface {v1}, Ljt;->onSpeechTimeout()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private k(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 2609
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->C:Z

    if-eqz v0, :cond_0

    .line 2610
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    invoke-virtual {v0, p1}, Lje;->b(I)V

    .line 2614
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(I)Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o:Landroid/content/Context;

    return-object v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2383
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-direct {v0, p0, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    .line 2384
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->setPriority(I)V

    .line 2385
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    const-string/jumbo v1, "RecognizerThread"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->setName(Ljava/lang/String;)V

    .line 2386
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->start()V

    .line 2388
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->K:Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    .line 2389
    invoke-interface {v2}, Ljo;->g()Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v3}, Ljo;->h()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v3

    .line 2388
    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/yd/speech/msc/factory/MscFactory;->createMscRecognizer(Landroid/content/Context;Lcom/iflytek/yd/speech/msc/interfaces/IMscListener;Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;Lcom/iflytek/yd/business/AppConfig;)Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    .line 2396
    invoke-static {}, Lcom/iflytek/yd/speech/vad/VadCheck;->createVadCheck()Lcom/iflytek/yd/speech/vad/VadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    .line 2397
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v0}, Lcom/iflytek/yd/speech/vad/VadCheck;->initialize()Z

    .line 2400
    new-instance v0, Lje;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Lje;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    .line 2401
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    invoke-virtual {v0}, Lje;->a()V

    .line 2408
    new-instance v0, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    invoke-direct {v0, p0, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Lcom/iflytek/base/speech/impl/SpeechRecognizer$1;)V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g:Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    .line 2409
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g:Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    const-string/jumbo v1, "VadThread"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->setName(Ljava/lang/String;)V

    .line 2410
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g:Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->start()V

    .line 2413
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v0}, Ljo;->b()Ljn;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    .line 2414
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v1}, Ljo;->c()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lje;->a([I)V

    .line 2417
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v1}, Ljo;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v2}, Ljo;->f()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->initialize(Ljava/lang/String;I)V

    .line 2421
    return-void
.end method

.method static synthetic l(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h(I)V

    return-void
.end method

.method private m()I
    .locals 1

    .prologue
    .line 2604
    const/4 v0, 0x0

    .line 2605
    .local v0, "msc_upload_type":I
    return v0
.end method

.method static synthetic m(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i(I)V

    return-void
.end method

.method static synthetic m(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/base/speech/impl/SpeechRecognizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j(I)V

    return-void
.end method

.method static synthetic o(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljn;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m()I

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    return v0
.end method

.method static synthetic r(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h()V

    return-void
.end method

.method static synthetic s(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g:Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    return-object v0
.end method

.method static synthetic t(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    return v0
.end method

.method static synthetic u(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Ljq;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    return-object v0
.end method

.method static synthetic v(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->v:I

    return v0
.end method

.method static synthetic w(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lje;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    return-object v0
.end method

.method static synthetic x(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lij;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->i:Lij;

    return-object v0
.end method

.method static synthetic y(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->M:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkListener;

    return-object v0
.end method

.method static synthetic z(Lcom/iflytek/base/speech/impl/SpeechRecognizer;)Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->N:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeListener;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 537
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->checkResouce(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v0, p1}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 761
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRecordError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iput p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->u:I

    .line 763
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->l:Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$a;->removeMessages(I)V

    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f(I)V

    .line 765
    return-void
.end method

.method public a(IIILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->J:Ljg;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljg;->a(Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;IIILjava/lang/Object;)V

    .line 572
    return-void
.end method

.method public a(ILjava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "lex_id"    # I
    .param p2, "lexiconName"    # Ljava/lang/String;
    .param p3, "items"    # [Ljava/lang/String;
    .param p4, "base_id"    # I
    .param p5, "dependGrammar"    # [Ljava/lang/String;
    .param p6, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;
    .param p7, "caller"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p6, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->G:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .line 516
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "lex_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string/jumbo v1, "lex_base_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string/jumbo v1, "lex_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string/jumbo v1, "caller"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v1, "lex_item"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 523
    const-string/jumbo v1, "lex_depend_grm"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v1, v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->addLexicon(Landroid/os/Bundle;)V

    .line 525
    return-void
.end method

.method public a(I[BLcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "grammar"    # [B
    .param p3, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p3, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->G:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .line 488
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 489
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 490
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "grm_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v1, "grm_data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 492
    const-string/jumbo v1, "caller"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v1, v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->buildGrammar(Landroid/os/Bundle;)V

    .line 494
    return-void
.end method

.method public a(Landroid/content/Intent;Ljt;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Ljt;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 330
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 331
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    new-instance v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$c;-><init>(Lcom/iflytek/base/speech/impl/SpeechRecognizer;Landroid/content/Intent;Ljt;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-static {v1, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;Landroid/os/Message;)V

    .line 334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y:Z

    .line 335
    return-void
.end method

.method public a(Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;)V
    .locals 2
    .param p1, "wake"    # Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "setWakePlugin to Plugin."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "setWakePlugin to WakeProxy"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d:Lcom/iflytek/framework/plugin/interfaces/carmode/IWakeEngine;

    .line 317
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-virtual {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljt;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;)V
    .locals 3
    .param p1, "aitalk"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "setAitalkPlugin to Plugin"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    .line 289
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    const-string/jumbo v1, "lauguage"

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->p:Ljo;

    invoke-interface {v2}, Ljo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    const-string/jumbo v1, "input_type"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "setAitalkPlugin to AitalkProxy"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljw;

    invoke-direct {v0}, Ljw;-><init>()V

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    goto :goto_0
.end method

.method public a(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 557
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->F:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .line 558
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->L:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    invoke-interface {v0, v1}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->initEngine(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;)V

    .line 559
    return-void
.end method

.method public a(Ljava/lang/String;Ljt;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Ljt;

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 374
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D:Ljt;

    .line 376
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v1, p1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->uploadCantoneseData(Ljava/lang/String;)Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const v0, 0xc3505

    .line 379
    .local v0, "error":I
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->isRuning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    const v0, 0xc3509

    .line 382
    :cond_2
    if-eqz p2, :cond_0

    .line 383
    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Ljt;->onUploadCustomData(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "lexName"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "isChanged"    # Z

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 503
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "lex_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v1, "lex_item"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 505
    const-string/jumbo v1, "lex_change"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 506
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v1, v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->addLexicon(Landroid/os/Bundle;)V

    .line 507
    return-void
.end method

.method public a(Ljp;)V
    .locals 0
    .param p1, "listener"    # Ljp;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->H:Ljp;

    .line 247
    return-void
.end method

.method public a(Ljq;)V
    .locals 0
    .param p1, "listener"    # Ljq;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->I:Ljq;

    .line 255
    return-void
.end method

.method public a(Ljt;)V
    .locals 2
    .param p1, "listener"    # Ljt;

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 340
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 341
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 342
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->y:Z

    .line 344
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-static {v1, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public a([BIJ)V
    .locals 5
    .param p1, "dataBuffer"    # [B
    .param p2, "length"    # I
    .param p3, "timeMillisecond"    # J

    .prologue
    const/4 v4, 0x0

    .line 708
    iget v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->w:I

    int-to-long v2, v1

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    .line 709
    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, "onRecordData speech too long"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v1, v2, :cond_1

    .line 713
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->A:Z

    .line 714
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Ljt;)V

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->EndRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_3

    .line 720
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    const-string/jumbo v2, "onRecordData not begin recording........."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/LoggingTime;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_2
    :goto_0
    return-void

    .line 725
    :cond_3
    invoke-static {}, Lpu;->c()I

    move-result v1

    if-lez v1, :cond_4

    .line 726
    invoke-static {p2}, Lpu;->a(I)[B

    move-result-object v0

    .line 727
    .local v0, "test_buffer":[B
    if-eqz v0, :cond_6

    .line 728
    invoke-static {v0, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    .end local v0    # "test_buffer":[B
    :cond_4
    iget-boolean v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->x:Z

    if-eqz v1, :cond_5

    .line 740
    invoke-static {p2}, Lpv;->a(I)[B

    move-result-object v0

    .line 741
    .restart local v0    # "test_buffer":[B
    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    .line 742
    invoke-static {v0, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    .end local v0    # "test_buffer":[B
    :cond_5
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v1}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->notifyRecordData()V

    .line 756
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g:Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$d;->a([BI)Z

    goto :goto_0

    .line 731
    .restart local v0    # "test_buffer":[B
    :cond_6
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v1, v2, :cond_2

    .line 733
    :cond_7
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Ljt;)V

    goto :goto_0

    .line 745
    :cond_8
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v1, v2, :cond_2

    .line 747
    :cond_9
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->r:Ljt;

    invoke-direct {p0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e(Ljt;)V

    goto :goto_0
.end method

.method public a([BILandroid/content/Intent;)V
    .locals 15
    .param p1, "data"    # [B
    .param p2, "sampleRate"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 582
    if-nez p3, :cond_0

    .line 583
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct/range {p3 .. p3}, Landroid/content/Intent;-><init>()V

    .line 585
    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    if-nez p1, :cond_1

    .line 586
    const-string/jumbo v12, "errorCode"

    const/16 v13, 0x4e2e

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string/jumbo v12, "SPEECH_SpeechRecognizer"

    const-string/jumbo v13, "vadCheck error not Data"

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 592
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v13, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v12, v13, :cond_2

    .line 593
    const-string/jumbo v12, "errorCode"

    const/16 v13, 0x520d

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string/jumbo v12, "SPEECH_SpeechRecognizer"

    const-string/jumbo v13, "vadCheck error not IDLE"

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_2
    const-string/jumbo v12, "vad_eos"

    const/16 v13, 0x320

    .line 599
    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Liy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    .line 600
    .local v4, "eos":I
    const-string/jumbo v12, "vad_bos"

    const/16 v13, 0x2710

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Liy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v1

    .line 602
    .local v1, "bos":I
    const-string/jumbo v12, "SPEECH_SpeechRecognizer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "vadCheck begin. eos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " bos="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    sget-object v12, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->WaitResult:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    iput-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    .line 604
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/vad/VadCheck;->reset()V

    .line 605
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12, v4}, Lcom/iflytek/yd/speech/vad/VadCheck;->setEndPointParam(I)I

    .line 606
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12, v1}, Lcom/iflytek/yd/speech/vad/VadCheck;->setBeginPointParam(I)I

    .line 607
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    const v13, 0xea60

    invoke-virtual {v12, v13}, Lcom/iflytek/yd/speech/vad/VadCheck;->setSpeechTimeout(I)I

    .line 608
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/vad/VadCheck;->setEarlyStartDisable()I

    .line 609
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/vad/VadCheck;->setFeatrueDisable()I

    .line 610
    const/16 v12, 0x500

    new-array v2, v12, [B

    .line 611
    .local v2, "buffer":[B
    new-instance v8, Lcom/iflytek/yd/speech/vad/VadData;

    invoke-direct {v8}, Lcom/iflytek/yd/speech/vad/VadData;-><init>()V

    .line 612
    .local v8, "mVadData":Lcom/iflytek/yd/speech/vad/VadData;
    const/4 v9, 0x0

    .local v9, "pos":I
    :cond_3
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v9, v12, :cond_5

    .line 613
    array-length v7, v2

    .line 614
    .local v7, "length":I
    move-object/from16 v0, p1

    array-length v12, v0

    sub-int/2addr v12, v9

    array-length v13, v2

    if-gt v12, v13, :cond_4

    .line 615
    move-object/from16 v0, p1

    array-length v12, v0

    sub-int v7, v12, v9

    .line 617
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    add-int/2addr v9, v7

    .line 619
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    array-length v13, v2

    invoke-virtual {v12, v2, v13, v8}, Lcom/iflytek/yd/speech/vad/VadCheck;->checkVAD([BILcom/iflytek/yd/speech/vad/VadData;)I

    .line 620
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12, v8}, Lcom/iflytek/yd/speech/vad/VadCheck;->fixFetchData(Lcom/iflytek/yd/speech/vad/VadData;)I

    .line 621
    const-string/jumbo v12, "SPEECH_SpeechRecognizer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "vadCheck value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/iflytek/yd/speech/vad/VadData;->volumeLevel:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " statue="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/iflytek/yd/speech/vad/VadData;->status:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget v12, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    if-ltz v12, :cond_3

    .line 629
    .end local v7    # "length":I
    :cond_5
    iget v12, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    if-gez v12, :cond_6

    .line 630
    const/16 v12, 0x500

    new-array v2, v12, [B

    .line 631
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v12, 0x14

    if-ge v6, v12, :cond_6

    .line 632
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    array-length v13, v2

    invoke-virtual {v12, v2, v13, v8}, Lcom/iflytek/yd/speech/vad/VadCheck;->checkVAD([BILcom/iflytek/yd/speech/vad/VadData;)I

    .line 633
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12, v8}, Lcom/iflytek/yd/speech/vad/VadCheck;->fixFetchData(Lcom/iflytek/yd/speech/vad/VadData;)I

    .line 631
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 637
    .end local v6    # "i":I
    :cond_6
    iget v12, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    if-ltz v12, :cond_7

    .line 638
    iget v11, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechStart:I

    .line 639
    .local v11, "start":I
    iget v3, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechEnd:I

    .line 640
    .local v3, "end":I
    iget v10, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechQuality:I

    .line 641
    .local v10, "quality":I
    iget v5, v8, Lcom/iflytek/yd/speech/vad/VadData;->lastSpeechFirstOut:I

    .line 642
    .local v5, "first":I
    const-string/jumbo v12, "SPEECH_SpeechRecognizer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "vadCheck end start="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " end="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " quality="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " first="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string/jumbo v12, "speechStart"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string/jumbo v12, "speechEnd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    const-string/jumbo v12, "speechQuality"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    .end local v3    # "end":I
    .end local v5    # "first":I
    .end local v10    # "quality":I
    .end local v11    # "start":I
    :cond_7
    iget-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->j:Lcom/iflytek/yd/speech/vad/VadCheck;

    invoke-virtual {v12}, Lcom/iflytek/yd/speech/vad/VadCheck;->endData()I

    .line 651
    sget-object v12, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Idle:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    iput-object v12, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjt;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "grammar"    # Ljava/lang/String;
    .param p4, "languageMode"    # I
    .param p5, "listener"    # Ljt;

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 364
    iput-object p5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->D:Ljt;

    .line 365
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v0, p1, p2, p4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->uploadData2([Ljava/lang/String;Ljava/lang/String;I)Z

    .line 366
    return-void
.end method

.method public b(Landroid/content/Intent;Ljt;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Ljt;

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 412
    const-string/jumbo v3, ""

    .line 413
    .local v3, "focus":Ljava/lang/String;
    const/4 v0, 0x0

    .line 414
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 415
    .local v4, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 416
    .local v2, "entry":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 417
    const-string/jumbo v5, "web_scene"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string/jumbo v5, "search_text"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    const-string/jumbo v5, "search_entry"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    const-string/jumbo v5, "web_action"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-nez v2, :cond_0

    .line 422
    const-string/jumbo v2, "input"

    .line 424
    :cond_0
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q:Lja;

    invoke-virtual {v5, v2}, Lja;->c(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v5, "is_play_result_tone"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->z:Z

    .line 429
    :cond_1
    new-instance v1, Lcom/iflytek/yd/system/ConnectionManager;

    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->o:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 430
    .local v1, "connectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v1}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 431
    if-eqz p2, :cond_2

    .line 432
    const/4 v5, 0x0

    const v6, 0xc3508

    invoke-interface {p2, v5, v6}, Ljt;->onSearchResults(Ljava/util/List;I)V

    .line 436
    :cond_2
    iput-object p2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    .line 438
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->h:Ljn;

    invoke-interface {v5, v3}, Ljn;->a(Ljava/lang/String;)V

    .line 439
    iget-boolean v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->z:Z

    if-eqz v5, :cond_3

    .line 440
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->k(I)V

    .line 442
    :cond_3
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->q:Lja;

    invoke-virtual {v5, v0}, Lja;->d(Ljava/lang/String;)V

    .line 443
    iget-object v5, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c:Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;

    invoke-interface {v5, v3, v4}, Lcom/iflytek/yd/speech/msc/interfaces/IMscRecognizer;->searchText(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public b(Ljt;)V
    .locals 2
    .param p1, "listener"    # Ljt;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 349
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 350
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 351
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->f:Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;

    invoke-static {v1, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;->a(Lcom/iflytek/base/speech/impl/SpeechRecognizer$b;Landroid/os/Message;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->c(Ljt;)V

    .line 354
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->isJniLoaded()Z

    move-result v0

    .line 193
    .local v0, "ret":Z
    const-string/jumbo v1, "SPEECH_SpeechRecognizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportOffline ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 271
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->onActivityCreate()V

    .line 273
    return-void
.end method

.method public c(Ljt;)V
    .locals 3
    .param p1, "listener"    # Ljt;

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 450
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    if-ne v0, p1, :cond_0

    .line 451
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    const-string/jumbo v1, "abortSearch will clean SEARCH"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/LoggingTime;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    .line 453
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->m:Lje;

    invoke-virtual {v0}, Lje;->c()V

    .line 455
    :cond_0
    const-string/jumbo v0, "SPEECH_SpeechRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "abortSearch listener => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->E:Ljt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 280
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;->onActivityDestroy()V

    .line 282
    return-void
.end method

.method public d(Ljt;)Z
    .locals 3
    .param p1, "listener"    # Ljt;

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->g()V

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "isRuning":Z
    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v2, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v1, v2, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x1

    .line 465
    :cond_1
    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->BeginRecord:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->n:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    sget-object v1, Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;->Recording:Lcom/iflytek/base/speech/impl/SpeechRecognizer$RecoStatus;

    if-ne v0, v1, :cond_1

    .line 475
    :cond_0
    iget v0, p0, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->s:I

    invoke-direct {p0, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
