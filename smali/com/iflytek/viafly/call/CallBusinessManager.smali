.class public Lcom/iflytek/viafly/call/CallBusinessManager;
.super Ljava/lang/Object;
.source "CallBusinessManager.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;
.implements Lgw;
.implements Lno$c;
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/call/CallBusinessManager$a;,
        Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Lzs;

.field private C:J

.field private D:J

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Lod$a;

.field private I:Lju;

.field private J:Landroid/content/BroadcastReceiver;

.field private K:Landroid/os/Handler;

.field private a:I

.field private b:I

.field private c:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

.field private d:I

.field private e:I

.field private f:Laah;

.field private g:Laai;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Labp;

.field private o:Labs;

.field private p:Labo;

.field private q:Ljava/util/Random;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Landroid/content/Context;

.field private v:Lpp;

.field private w:Z

.field private x:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    .line 193
    iput v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->b:I

    .line 196
    sget-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->c:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    .line 198
    iput v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->d:I

    .line 200
    iput v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->e:I

    .line 207
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-direct {v0}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->j:Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    .line 213
    iput-boolean v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->k:Z

    .line 216
    iput-boolean v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    .line 226
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->q:Ljava/util/Random;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->r:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->s:Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->t:Ljava/lang/Object;

    .line 238
    iput-boolean v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->w:Z

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ViaFly/Database/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "phonenum_type.zip"

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->z:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->A:Ljava/lang/String;

    .line 249
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->B:Lzs;

    .line 258
    iput v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->E:I

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->F:I

    .line 933
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/call/CallBusinessManager$2;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->H:Lod$a;

    .line 1224
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/call/CallBusinessManager$3;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 1261
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$4;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/call/CallBusinessManager$4;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->J:Landroid/content/BroadcastReceiver;

    .line 1372
    new-instance v0, Lcom/iflytek/viafly/call/CallBusinessManager$5;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/call/CallBusinessManager$5;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 4

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1342
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1343
    return-void
.end method

.method private B()Labp;
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->n:Labp;

    if-nez v0, :cond_0

    .line 1487
    new-instance v0, Labp;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Labp;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->n:Labp;

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->n:Labp;

    return-object v0
.end method

.method private C()Labs;
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->o:Labs;

    if-nez v0, :cond_0

    .line 1494
    new-instance v0, Labs;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Labs;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->o:Labs;

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->o:Labs;

    return-object v0
.end method

.method private D()Labo;
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->p:Labo;

    if-nez v0, :cond_0

    .line 1501
    new-instance v0, Labo;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Labo;-><init>(Landroid/content/Context;Lwd;)V

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->p:Labo;

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->p:Labo;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->b:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->C:J

    return-wide p1
.end method

.method public static a()Lcom/iflytek/viafly/call/CallBusinessManager;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$a;->a:Lcom/iflytek/viafly/call/CallBusinessManager;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string/jumbo v0, "com.iflytek.cmcc.extra_result_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->d:I

    .line 692
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWakeResultTask | wake result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->d:I

    if-nez v0, :cond_1

    .line 694
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "handleWakeResultTask | call answer"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const v2, 0x7f0c0336

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 696
    invoke-static {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 695
    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0

    .line 698
    :cond_1
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "handleWakeResultTask | call offhook"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const v2, 0x7f0c0339

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 700
    invoke-static {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 699
    invoke-virtual {v0, v1, v2, v3}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;)V
    .locals 0
    .param p1, "state"    # Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->c:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    .line 1218
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 127
    invoke-direct/range {p0 .. p6}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "kind"    # I
    .param p6, "isSogouResult"    # Z

    .prologue
    .line 1976
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 1977
    :try_start_0
    iget-boolean v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    if-eqz v2, :cond_0

    .line 1978
    monitor-exit v3

    .line 1998
    :goto_0
    return-void

    .line 1980
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 1982
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    .line 1984
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1985
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1986
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1987
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "number"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string/jumbo v2, "kind"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1992
    const-string/jumbo v2, "flagSogou"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1993
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1995
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1997
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBusinessManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/CallBusinessManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->e:I

    return p1
.end method

.method private b(J)V
    .locals 5
    .param p1, "trigger"    # J

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->x:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v2, :cond_0

    .line 1288
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1289
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    invoke-direct {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;-><init>()V

    const-string/jumbo v3, "CallBusinessManager"

    .line 1290
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmModuleName(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 1291
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmMode(I)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 1292
    invoke-virtual {v2, p1, p2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmTriggerTime(J)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    const-string/jumbo v3, "CallBusinessManager1001"

    .line 1293
    invoke-virtual {v2, v3}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmId(Ljava/lang/String;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 1294
    invoke-virtual {v2, v1}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->setAlarmBundle(Landroid/os/Bundle;)Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;

    move-result-object v2

    .line 1295
    invoke-virtual {v2}, Lcom/iflytek/base/newalarm/entities/AlarmData$Builder;->create()Lcom/iflytek/base/newalarm/entities/AlarmData;

    move-result-object v0

    .line 1296
    .local v0, "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->x:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    invoke-interface {v2, v0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->setAlarm(Lcom/iflytek/base/newalarm/entities/AlarmData;)V

    .line 1298
    .end local v0    # "alarmData":Lcom/iflytek/base/newalarm/entities/AlarmData;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 712
    :cond_0
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_error_code"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 713
    .local v0, "errorCode":I
    const-string/jumbo v1, "CallBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWakeErrorTask | error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/CallBusinessManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/call/CallBusinessManager;->c(J)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/CallBusinessManager;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/call/CallBusinessManager;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->b:I

    return v0
.end method

.method private c(J)V
    .locals 5
    .param p1, "hideId"    # J

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/viafly/call/CallBusinessManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/viafly/call/CallBusinessManager$7;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;J)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2120
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->E:I

    return v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->E:I

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 14
    .param p1, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 785
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v10

    invoke-virtual {v10}, Loc;->a()Z

    move-result v10

    if-nez v10, :cond_1

    .line 786
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "audio mode is not normal | not play tts"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 806
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->z()Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    move-result-object v10

    sget-object v11, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    if-eq v10, v11, :cond_2

    .line 807
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "handle state not idle | return"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 811
    :cond_2
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    invoke-virtual {v10}, Lpp;->b()Z

    move-result v10

    if-nez v10, :cond_3

    .line 812
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "not support offline tts"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    :cond_3
    sget-object v10, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->INCOMING_TTS:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-direct {p0, v10}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;)V

    .line 819
    move-object v4, p1

    .line 820
    .local v4, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 826
    .local v2, "callTimes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 827
    .local v9, "timeString":Ljava/lang/String;
    const-string/jumbo v10, "CallBusinessManager"

    invoke-static {v10, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 829
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v10

    invoke-virtual {v10}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 830
    .local v1, "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const/4 v7, 0x0

    .line 832
    .local v7, "playCall":Z
    if-eqz v1, :cond_4

    .line 833
    :try_start_0
    const-string/jumbo v10, "1"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 835
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v6}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 837
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "playCallTTSNoDelay path is not null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_NOTIFY_CALL_TIMES"

    invoke-virtual {v10, v11}, Lil;->d(Ljava/lang/String;)I

    move-result v8

    .line 839
    .local v8, "smsTimes":I
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    const/4 v7, 0x1

    .line 869
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "smsTimes":I
    :cond_4
    :goto_1
    if-nez v7, :cond_5

    .line 870
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v11, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 871
    invoke-static {v11, v4}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v11}, Lzu;->a(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 870
    invoke-static {v11}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 872
    invoke-static {v12}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 870
    invoke-virtual {v10, v11, v12, v13}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 904
    .end local v1    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v7    # "playCall":Z
    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v10

    const-string/jumbo v11, "LX_200000"

    invoke-virtual {v10, v11}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    .restart local v1    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .restart local v7    # "playCall":Z
    :cond_6
    :try_start_1
    const-string/jumbo v10, "0"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 844
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    .line 845
    invoke-virtual {v10}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 846
    .local v0, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    if-eqz v0, :cond_7

    .line 847
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v10

    sget-object v11, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    if-ne v10, v11, :cond_7

    .line 849
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v11, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 850
    invoke-static {v11, v4}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v11}, Lzu;->a(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 849
    invoke-static {v11}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 851
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v12

    invoke-virtual {v12, v1}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 849
    invoke-virtual {v10, v11, v12, v13}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 852
    const/4 v7, 0x1

    goto :goto_1

    .line 855
    :cond_7
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 856
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->w()Ljava/lang/String;

    move-result-object v5

    .line 857
    .local v5, "offlineVoicePath":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 858
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_NOTIFY_CALL_TIMES"

    invoke-virtual {v10, v11}, Lil;->d(Ljava/lang/String;)I

    move-result v8

    .line 859
    .restart local v8    # "smsTimes":I
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v5, v10}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 860
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 866
    .end local v0    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v5    # "offlineVoicePath":Ljava/lang/String;
    .end local v8    # "smsTimes":I
    :catch_0
    move-exception v3

    .line 867
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 875
    .end local v1    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "playCall":Z
    :cond_8
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v11, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 876
    invoke-static {v11, v4}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v11}, Lzu;->a(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 875
    invoke-static {v11}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 877
    invoke-static {v12}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 875
    invoke-virtual {v10, v11, v12, v13}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_2
.end method

.method static synthetic f(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->F:I

    return v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 14
    .param p1, "pContent"    # Ljava/lang/String;

    .prologue
    .line 961
    const-string/jumbo v10, "CallBusinessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "incomingCallTTS | incomingNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v11, "CallBusinessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "incomingCallTTS | incomingNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v10

    invoke-virtual {v10}, Loc;->a()Z

    move-result v10

    if-nez v10, :cond_0

    .line 965
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "audio mode is not normal | not play tts"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v11, "CallBusinessManager"

    const-string/jumbo v12, "incomingCallTTS audio mode is not normal | not play tts"

    invoke-static {v10, v11, v12}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v10

    if-nez v10, :cond_1

    .line 971
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v11, "CallBusinessManager"

    const-string/jumbo v12, "incomingCallTTS IFLY_AUTO_NOTIFY_CALL_SECOND false or carmode closed"

    invoke-static {v10, v11, v12}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->z()Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    move-result-object v10

    sget-object v11, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    if-eq v10, v11, :cond_2

    .line 989
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "handle state not idle | return"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v11, "CallBusinessManager"

    const-string/jumbo v12, "incomingCallTTS handle state not idle | return"

    invoke-static {v10, v11, v12}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_2
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    invoke-virtual {v10}, Lpp;->b()Z

    move-result v10

    if-nez v10, :cond_3

    .line 995
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "not support offline tts"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v11, "CallBusinessManager"

    const-string/jumbo v12, "incomingCallTTS not support offline tts"

    invoke-static {v10, v11, v12}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 999
    :cond_3
    sget-object v10, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->INCOMING_TTS:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-direct {p0, v10}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;)V

    .line 1002
    :try_start_0
    invoke-static {}, Lhl;->m()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iflytek/common/adaptation/entity/AdapterConstant;->KUPAI_D530:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1003
    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_1
    move-object v4, p1

    .line 1013
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v10, "CallBusinessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "incomingCallTTS | incomingNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_NOTIFY_CALL_TIMES"

    invoke-virtual {v10, v11}, Lil;->d(Ljava/lang/String;)I

    move-result v2

    .line 1020
    .local v2, "callTimes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 1021
    .local v9, "timeString":Ljava/lang/String;
    const-string/jumbo v10, "CallBusinessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "incomingCallTTS | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1024
    invoke-static {}, Lbbg;->a()Lbbg;

    move-result-object v10

    invoke-virtual {v10}, Lbbg;->e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v1

    .line 1025
    .local v1, "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    const/4 v7, 0x0

    .line 1027
    .local v7, "playCall":Z
    if-eqz v1, :cond_4

    .line 1028
    :try_start_1
    const-string/jumbo v10, "1"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1030
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1031
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v6}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1032
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, "playCallTTSNoDelay path is not null"

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_NOTIFY_CALL_TIMES"

    invoke-virtual {v10, v11}, Lil;->d(Ljava/lang/String;)I

    move-result v8

    .line 1034
    .local v8, "smsTimes":I
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v10

    const-string/jumbo v11, "LX_100094"

    invoke-virtual {v10, v11}, Lwz;->a(Ljava/lang/String;)V

    .line 1035
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lbbl;->a(Landroid/content/Context;)Lbbl;

    move-result-object v10

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "call"

    invoke-virtual {v10, v11, v12}, Lbbl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v6, v10}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1037
    const/4 v7, 0x1

    .line 1066
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "smsTimes":I
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    .line 1067
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v11, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 1068
    invoke-static {v11, v4}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v11}, Lzu;->a(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 1067
    invoke-static {v11}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 1069
    invoke-static {v12}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 1067
    invoke-virtual {v10, v11, v12, v13}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 1079
    .end local v1    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v7    # "playCall":Z
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v10

    const-string/jumbo v11, "LX_200000"

    invoke-virtual {v10, v11}, Lwz;->a(Ljava/lang/String;)V

    .line 1081
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v10

    sget-object v11, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->incoming_call_tts:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v11}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lxb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    .end local v2    # "callTimes":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v9    # "timeString":Ljava/lang/String;
    :cond_6
    const-wide/16 v10, 0x5dc

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1007
    :catch_0
    move-exception v3

    .line 1008
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1039
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .restart local v2    # "callTimes":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v7    # "playCall":Z
    .restart local v9    # "timeString":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v10, "0"

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1041
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v10}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v10

    .line 1042
    invoke-virtual {v10}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 1043
    .local v0, "appConfig":Lcom/iflytek/yd/business/AppConfig;
    if-eqz v0, :cond_8

    .line 1044
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v10

    sget-object v11, Lcom/iflytek/yd/system/ApnAccessorType;->WIFI:Lcom/iflytek/yd/system/ApnAccessorType;

    if-ne v10, v11, :cond_8

    .line 1046
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v11, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 1047
    invoke-static {v11, v4}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v11}, Lzu;->a(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 1046
    invoke-static {v11}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1048
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v12

    invoke-virtual {v12, v1}, Lbbi;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 1046
    invoke-virtual {v10, v11, v12, v13}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 1049
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1052
    :cond_8
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1053
    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->w()Ljava/lang/String;

    move-result-object v5

    .line 1054
    .local v5, "offlineVoicePath":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1055
    invoke-static {}, Lil;->a()Lil;

    move-result-object v10

    const-string/jumbo v11, "com.iflytek.cmccIFLY_NOTIFY_CALL_TIMES"

    invoke-virtual {v10, v11}, Lil;->d(Ljava/lang/String;)I

    move-result v8

    .line 1056
    .restart local v8    # "smsTimes":I
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v5, v10}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1057
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1063
    .end local v0    # "appConfig":Lcom/iflytek/yd/business/AppConfig;
    .end local v5    # "offlineVoicePath":Ljava/lang/String;
    .end local v8    # "smsTimes":I
    :catch_1
    move-exception v3

    .line 1064
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "CallBusinessManager"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1072
    .end local v1    # "callModel":Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "playCall":Z
    :cond_9
    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v11, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 1073
    invoke-static {v11, v4}, Lzu;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v11}, Lzu;->a(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 1072
    invoke-static {v11}, Lpz;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;->CALL:Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;

    .line 1074
    invoke-static {v12}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil$TTS_PARAM_TYPE;)Landroid/os/Bundle;

    move-result-object v12

    iget-object v13, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    .line 1072
    invoke-virtual {v10, v11, v12, v13}, Lpp;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    goto/16 :goto_3
.end method

.method static synthetic g(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/call/CallBusinessManager;)Lod$a;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->H:Lod$a;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->r()V

    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->t()V

    return-void
.end method

.method static synthetic k(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    return-void
.end method

.method static synthetic l(Lcom/iflytek/viafly/call/CallBusinessManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->s()V

    return-void
.end method

.method static synthetic m(Lcom/iflytek/viafly/call/CallBusinessManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/viafly/call/CallBusinessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->k:Z

    return v0
.end method

.method static synthetic o(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->e:I

    return v0
.end method

.method private o()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 589
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v2

    .line 592
    :cond_1
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v0

    .line 593
    .local v0, "firstSimState":Lcom/iflytek/yd/system/SimState;
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v3, v4}, Lhy;->f(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimState;

    move-result-object v1

    .line 594
    .local v1, "secondSimState":Lcom/iflytek/yd/system/SimState;
    sget-object v3, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/iflytek/yd/system/SimState;->READY:Lcom/iflytek/yd/system/SimState;

    if-ne v1, v3, :cond_0

    .line 595
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static synthetic p(Lcom/iflytek/viafly/call/CallBusinessManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->e:I

    return v0
.end method

.method private p()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, "isAirmodeOn":Z
    :try_start_0
    iget-object v4, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 608
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 604
    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CallBusinessManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic q(Lcom/iflytek/viafly/call/CallBusinessManager;)Labs;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->C()Labs;

    move-result-object v0

    return-object v0
.end method

.method private q()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 664
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v1}, Lzu;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "auto notify or call close | service quit"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    invoke-static {}, Lagm;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 670
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "not support incoming call"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_2
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v1

    invoke-virtual {v1}, Lpb;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic r(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lzu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->z()Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->INCOMING_TTS:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    if-ne v0, v1, :cond_3

    .line 722
    invoke-static {}, Lagm;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lagm;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v0

    invoke-virtual {v0}, Lgs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "handleTtsCompleteTask | bluetooth is connect"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->v()V

    goto :goto_0

    .line 729
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    goto :goto_0

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lzu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->z()Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->START_WAKE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    if-ne v0, v1, :cond_5

    .line 732
    invoke-static {}, Lagm;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->d:I

    if-nez v0, :cond_4

    .line 734
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    invoke-virtual {v0}, Lgx;->c()V

    goto :goto_0

    .line 736
    :cond_4
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    invoke-virtual {v0}, Lgx;->d()V

    goto :goto_0

    .line 740
    :cond_5
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    goto :goto_0
.end method

.method static synthetic s(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->t:Ljava/lang/Object;

    return-object v0
.end method

.method private s()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 749
    const/4 v5, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_NOTIFY_CALL_MODE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lil;->b(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 752
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v5}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v5

    invoke-virtual {v5, v9}, Loc;->b(I)I

    move-result v3

    .line 755
    .local v3, "maxRingVolume":I
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v5}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v5

    invoke-virtual {v5, v10}, Loc;->b(I)I

    move-result v2

    .line 759
    .local v2, "maxMusicVolume":I
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v5}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v5

    invoke-virtual {v5, v10}, Loc;->a(I)I

    move-result v0

    .line 762
    .local v0, "currentMusicVolume":I
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v5}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v5

    invoke-virtual {v5, v9}, Loc;->a(I)I

    move-result v1

    .line 765
    .local v1, "currentRingVolume":I
    int-to-float v5, v3

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-static {v5, v6, v7}, Lzu;->a(FFF)F

    move-result v4

    .line 767
    .local v4, "ttsVolume":F
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v5}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v5

    float-to-int v6, v4

    invoke-virtual {v5, v10, v6}, Loc;->a(II)V

    .line 769
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_CACHE_MUSIC_VOLUME"

    invoke-virtual {v5, v6, v0}, Lil;->a(Ljava/lang/String;I)V

    .line 773
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v5}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v5

    invoke-virtual {v5, v9}, Loc;->c(I)V

    .line 774
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_CACHE_RING_VOLUME"

    invoke-virtual {v5, v6, v1}, Lil;->a(Ljava/lang/String;I)V

    .line 777
    .end local v0    # "currentMusicVolume":I
    .end local v1    # "currentRingVolume":I
    .end local v2    # "maxMusicVolume":I
    .end local v3    # "maxRingVolume":I
    .end local v4    # "ttsVolume":F
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 925
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "doFinish "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;)V

    .line 927
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawd;->a(Landroid/content/Context;)V

    .line 928
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lod;->a(Lod$a;)V

    .line 929
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->E:I

    .line 930
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->F:I

    .line 931
    return-void
.end method

.method static synthetic t(Lcom/iflytek/viafly/call/CallBusinessManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lcom/iflytek/viafly/call/CallBusinessManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method private u()V
    .locals 4

    .prologue
    const v3, 0x3ca3d70a    # 0.02f

    .line 1088
    const/4 v1, -0x1

    iput v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->d:I

    .line 1089
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v1}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v1

    invoke-virtual {v1}, Lbbp;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    invoke-static {}, Lih;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v1}, Lie;->a(Landroid/content/Context;)Lie;

    move-result-object v0

    .line 1092
    .local v0, "player":Lie;
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lie;->a(Landroid/content/res/AssetFileDescriptor;)V

    .line 1094
    invoke-virtual {v0, v3, v3}, Lie;->a(FF)V

    .line 1095
    invoke-virtual {v0}, Lie;->a()V

    .line 1096
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "call over play empty Tone."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .end local v0    # "player":Lie;
    :cond_0
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "call over | need speech wake"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v1}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v1

    invoke-virtual {v1}, Lbbp;->c()V

    .line 1100
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "Ivw|restartSpeechWake"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_1
    return-void
.end method

.method static synthetic v(Lcom/iflytek/viafly/call/CallBusinessManager;)Lpp;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    return-object v0
.end method

.method private v()V
    .locals 4

    .prologue
    .line 1108
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "handleWakeStartTask"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    sget-object v0, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->START_WAKE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;)V

    .line 1110
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lbbp;->a(J)V

    .line 1111
    return-void
.end method

.method static synthetic w(Lcom/iflytek/viafly/call/CallBusinessManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBusinessManager;

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->C:J

    return-wide v0
.end method

.method private w()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1117
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->z()Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    if-ne v2, v3, :cond_1

    .line 1118
    const-string/jumbo v2, "CallBusinessManager"

    const-string/jumbo v3, "call state is idle | return"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    sget-object v2, Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;->IDLE:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;)V

    .line 1122
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    invoke-virtual {v2, v3}, Lpp;->d(Lju;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1123
    const-string/jumbo v2, "CallBusinessManager"

    const-string/jumbo v3, "stop tts speak"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    invoke-virtual {v2, v3}, Lpp;->c(Lju;)V

    .line 1127
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->t()V

    .line 1130
    const/4 v2, 0x1

    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    const-string/jumbo v4, "com.iflytek.cmccIFLY_NOTIFY_CALL_MODE"

    .line 1131
    invoke-virtual {v3, v4, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1132
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_CACHE_MUSIC_VOLUME"

    invoke-virtual {v2, v3, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 1133
    .local v0, "cachedMusicVolume":I
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_CACHE_RING_VOLUME"

    invoke-virtual {v2, v3, v5}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    .line 1134
    .local v1, "cachedRingVolume":I
    if-lez v0, :cond_3

    .line 1135
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v2}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Loc;->a(II)V

    .line 1138
    :cond_3
    if-lez v1, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v2}, Loc;->a(Landroid/content/Context;)Loc;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Loc;->a(II)V

    goto :goto_0
.end method

.method private x()V
    .locals 3

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "onCallEventInit car mode false"

    invoke-static {v0, v1, v2}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;->stopPlay()V

    .line 1155
    :cond_0
    return-void
.end method

.method private y()V
    .locals 4

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->B:Lzs;

    iget-wide v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->C:J

    invoke-virtual {v0, v2, v3}, Lzs;->b(J)V

    .line 1160
    invoke-static {}, Lzv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lzv;->a(Landroid/content/Context;)V

    .line 1173
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 1174
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    .line 1175
    monitor-exit v1

    .line 1176
    return-void

    .line 1175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private z()Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->c:Lcom/iflytek/viafly/call/CallBusinessManager$HandleState;

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "kind"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 1808
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1809
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1810
    .local v0, "content":Ljava/lang/StringBuilder;
    packed-switch p1, :pswitch_data_0

    .line 1826
    :goto_0
    :try_start_0
    const-string/jumbo v2, "content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    .line 1812
    :pswitch_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1815
    :pswitch_1
    if-eqz p4, :cond_0

    .line 1816
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    :cond_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1821
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1827
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1810
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 1843
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1844
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1845
    .local v0, "content":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1848
    :try_start_0
    const-string/jumbo v2, "strange"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1853
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1854
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    const-string/jumbo v2, "[p300]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    :cond_0
    const-string/jumbo v2, "\u623f\u4ea7\u4e2d\u4ecb"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1860
    const-string/jumbo v2, "\u623f\u4ea7\u4e1a\u52a1\u5458"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    :goto_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    :goto_2
    :try_start_1
    const-string/jumbo v2, "content"

    .line 1897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1896
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1900
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1861
    :cond_1
    const-string/jumbo v2, "\u4e1a\u52a1\u63a8\u9500"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1863
    const-string/jumbo v2, "\u4e1a\u52a1\u63a8\u9500\u5458"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1864
    :cond_2
    const-string/jumbo v2, "\u9a9a\u6270\u7535\u8bdd"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1866
    const-string/jumbo v2, "\u7591\u4f3c\u9a9a\u6270\u7535\u8bdd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1867
    :cond_3
    const-string/jumbo v2, "\u8bc8\u9a97\u7535\u8bdd"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1869
    const-string/jumbo v2, "\u7591\u4f3c\u8bc8\u9a97\u7535\u8bdd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1872
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1876
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 1878
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1880
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1883
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    const-string/jumbo v2, "[p300]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    :cond_7
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :try_start_2
    const-string/jumbo v2, "strange"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1892
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1898
    :catch_1
    move-exception v2

    goto :goto_3

    .line 1850
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Date;)Ljava/util/Date;
    .locals 8
    .param p1, "start"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x6

    .line 1664
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1665
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1667
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 1668
    .local v2, "day":I
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 1670
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->q:Ljava/util/Random;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1671
    .local v3, "hour":I
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1673
    iget-object v5, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->q:Ljava/util/Random;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1674
    .local v4, "minute":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 1676
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1677
    .local v1, "d":Ljava/util/Date;
    return-object v1
.end method

.method public a(IJI)V
    .locals 8
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 1616
    iget-object v7, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->r:Ljava/lang/Object;

    monitor-enter v7

    .line 1617
    const/16 v0, 0x38

    if-ne v0, p1, :cond_1

    .line 1618
    :try_start_0
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "NUM_TYPE_GET error "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1624
    :cond_0
    :goto_0
    monitor-exit v7

    .line 1626
    return-void

    .line 1620
    :cond_1
    const/16 v0, 0x36

    if-ne v0, p1, :cond_0

    .line 1621
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "NUM_TYPE_DATABASE_UPDATE success error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3
    .param p1, "hideId"    # J

    .prologue
    .line 1180
    iget-wide v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->C:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1181
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "time is up, hide the float Window now"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->B:Lzs;

    invoke-virtual {v0, p1, p2}, Lzs;->b(J)V

    .line 1183
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 1184
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    .line 1185
    monitor-exit v1

    .line 1189
    :goto_0
    return-void

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1187
    :cond_0
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "id changed, do not hide float window"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 285
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.RANDOM_KEY"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lil;->b(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->D:J

    .line 286
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgx;->a(Lgw;)V

    .line 287
    new-instance v1, Lpp;

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Lpp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    .line 288
    new-instance v1, Laah;

    invoke-direct {v1}, Laah;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->f:Laah;

    .line 289
    new-instance v1, Laai;

    invoke-direct {v1}, Laai;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    .line 290
    invoke-static {}, Lcom/iflytek/base/newalarm/AlarmFactory;->getAlarm()Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->x:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    .line 291
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->x:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->x:Lcom/iflytek/base/newalarm/interfaces/IAlarm;

    const-string/jumbo v2, "CallBusinessManager"

    invoke-interface {v1, v2, p0}, Lcom/iflytek/base/newalarm/interfaces/IAlarm;->registModule(Ljava/lang/String;Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)I

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->h()V

    .line 295
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_DATABASE_UPDATE_TIME"

    invoke-virtual {v1, v2}, Lil;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->e:I

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_error_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "com.iflytek.cmcc.broadcast_success_wake"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->J:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 301
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/call/CallBusinessManager;

    .line 302
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->w:Z

    .line 306
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 613
    const-string/jumbo v4, "CallBusinessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onOutgoingCall number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->o()Z

    move-result v4

    if-nez v4, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->x()V

    .line 625
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->q()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 626
    invoke-static {v7, v7}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(ZZ)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    move-result-object v0

    .line 627
    .local v0, "adapter":Lcom/iflytek/viafly/call/CallBroadcastView$a;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .line 628
    iget-object v4, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v4, p1}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d(Ljava/lang/String;)Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .line 630
    iget-object v4, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v0, v7, v5}, Lzv;->a(Landroid/content/Context;Lcom/iflytek/viafly/call/CallBroadcastView$a;ZZ)V

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 634
    .local v2, "currentId":J
    sput-wide v2, Lzv;->a:J

    .line 635
    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->c(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ringPath"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 908
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBroadcastStarAudio count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 912
    :cond_0
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->G:Ljava/lang/String;

    .line 915
    if-lt p2, v3, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    .line 916
    iput p2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->F:I

    .line 921
    :goto_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->H:Lod$a;

    invoke-static {v0, v1, v2}, Lawd;->a(Landroid/content/Context;Ljava/lang/String;Lod$a;)V

    goto :goto_0

    .line 918
    :cond_1
    iput v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->F:I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 19
    .param p1, "pNumber"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-static {}, Lbas;->b()V

    .line 349
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "onIncomingCall number = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->x()V

    .line 355
    invoke-static {}, Laax;->a()Laax;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Laax;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    const/4 v6, 0x0

    .line 361
    .local v6, "name":Ljava/lang/String;
    move-object/from16 v4, p1

    .line 362
    .local v4, "num":Ljava/lang/String;
    const/4 v5, 0x0

    .line 363
    .local v5, "location":Ljava/lang/String;
    const/4 v7, 0x0

    .line 364
    .local v7, "type":Ljava/lang/String;
    const/4 v9, 0x0

    .line 365
    .local v9, "tIsSogouResult":Z
    const/4 v8, 0x2

    .line 368
    .local v8, "kind":I
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "onIncomingCall | CallLogCollecter.addReadCount"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v16, "CallBusinessManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "onIncomingCall need handle incoming call num= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->getInstance()Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/common/adaptation/logcollect/CallLogCollecter;->addReadCount()V

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lzu;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 374
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "onIncomingCall is local contact"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v4, p1

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lzu;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    const/4 v7, 0x0

    .line 378
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/call/CallBusinessManager;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    const/4 v8, 0x1

    .line 383
    :goto_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v16, "SC01015"

    const-string/jumbo v17, "user_contact"

    .line 384
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "local | number = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " location = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " type =  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v3, p0

    .line 521
    invoke-direct/range {v3 .. v9}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 381
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 389
    :cond_4
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "onIncomingCall start jundge"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v14, 0x0

    .line 391
    .local v14, "tStopCheck":Z
    const/4 v8, 0x2

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Laai;->a(Ljava/lang/String;)Laac;

    move-result-object v11

    .line 395
    .local v11, "markedType":Laac;
    if-eqz v11, :cond_8

    .line 396
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "onIncomingCall is local mar"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v11}, Laac;->a()Ljava/lang/String;

    move-result-object v4

    .line 398
    const/4 v6, 0x0

    .line 399
    invoke-virtual {v11}, Laac;->b()Ljava/lang/String;

    move-result-object v7

    .line 400
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "mark map | number = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " location = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v14, 0x1

    .line 404
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "check incomming call number. user mark result: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_2
    if-nez v14, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->f:Laah;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Laah;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    move-result-object v12

    .line 414
    .local v12, "numTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    if-eqz v12, :cond_5

    .line 416
    :try_start_0
    invoke-virtual {v12}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getNum()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-virtual {v12}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 418
    invoke-virtual {v12}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getClassify()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 419
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "hash map | number = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " location = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v16, "SC01015"

    const-string/jumbo v17, "record_sin_success"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v14, 0x1

    .line 424
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "check incomming call number. net db cache result: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v12    # "numTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :cond_5
    :goto_3
    if-nez v14, :cond_6

    .line 434
    invoke-static {}, Laad;->a()Laad;

    move-result-object v3

    .line 435
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Laad;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    move-result-object v15

    .line 436
    .local v15, "typeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    if-eqz v15, :cond_6

    .line 437
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "onIncomingCall is local db number"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :try_start_1
    invoke-virtual {v15}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getNum()Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-virtual {v15}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getName()Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-virtual {v15}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getClassify()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 442
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "data base | number = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " location = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v16, "SC01015"

    const-string/jumbo v17, "record_sin_success"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v16, "SC01015"

    const-string/jumbo v17, "inner_record_use"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v14, 0x1

    .line 448
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "check incomming call number. local db result: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    .end local v15    # "typeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :cond_6
    :goto_4
    if-nez v14, :cond_7

    .line 457
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v3

    invoke-virtual {v3}, Laaj;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 458
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    .line 459
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v3

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Laaj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, "tSogouMarkContent":Ljava/lang/String;
    if-eqz v13, :cond_9

    const-string/jumbo v3, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 461
    move-object/from16 v4, p1

    .line 462
    move-object v6, v13

    .line 463
    const/4 v14, 0x1

    .line 464
    const/4 v9, 0x1

    .line 465
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->b:I

    .line 466
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "check incomming call number. Sogou local result markcontent: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v13    # "tSogouMarkContent":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v16, "FD01021"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->b:I

    move/from16 v18, v0

    .line 474
    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Labu;->a(Ljava/lang/String;II)V

    .line 477
    :cond_7
    if-nez v14, :cond_2

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v3}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v3

    invoke-virtual {v3}, Lhl;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 480
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "onIncomingCall request net reco"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->s:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 482
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    .line 483
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->A()V

    .line 487
    invoke-direct/range {p0 .. p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->B()Labp;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Labp;->a(Ljava/lang/String;)J

    .line 490
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v3

    invoke-virtual {v3}, Laaj;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 491
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    .line 492
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v3

    const/16 v16, 0x0

    new-instance v17, Lcom/iflytek/viafly/call/CallBusinessManager$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/call/CallBusinessManager$1;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Laaj;->a(Ljava/lang/String;ZLaaj$b;)V

    goto/16 :goto_0

    .line 406
    :cond_8
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v3

    const-string/jumbo v16, "SC01015"

    const-string/jumbo v17, "record_sin"

    .line 407
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 425
    .restart local v12    # "numTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :catch_0
    move-exception v10

    .line 426
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 449
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "numTypeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .restart local v15    # "typeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :catch_1
    move-exception v10

    .line 450
    .restart local v10    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "CallBusinessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 468
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v15    # "typeItem":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .restart local v13    # "tSogouMarkContent":Ljava/lang/String;
    :cond_9
    const/16 v3, 0xb

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->b:I

    goto/16 :goto_5

    .line 470
    .end local v13    # "tSogouMarkContent":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    .line 471
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "check incomming call number. Sogou sdk disable"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 483
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 512
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->a:I

    .line 513
    const-string/jumbo v3, "CallBusinessManager"

    const-string/jumbo v16, "check incomming call number. Sogou sdk disable"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 516
    :cond_c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0
.end method

.method public a(Lwa;)V
    .locals 21
    .param p1, "result"    # Lwa;

    .prologue
    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->r:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1509
    :try_start_0
    const-string/jumbo v2, "CallBusinessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResult(), result="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/16 v2, 0x38

    invoke-virtual/range {p1 .. p1}, Lwa;->getRequestType()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 1512
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->l:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1513
    const-string/jumbo v2, "CallBusinessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NUM_TYPE_GET success error code is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const-string/jumbo v2, "000000"

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1515
    move-object/from16 v0, p1

    check-cast v0, Labq;

    move-object/from16 v17, v0

    .line 1516
    .local v17, "numTypeResult":Labq;
    invoke-virtual/range {v17 .. v17}, Labq;->a()Ljava/util/List;

    move-result-object v16

    .line 1517
    .local v16, "numItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1518
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->j:Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getClassify()Ljava/lang/String;

    move-result-object v14

    .line 1521
    .local v14, "classify":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getNum()Ljava/lang/String;

    move-result-object v3

    .line 1522
    .local v3, "number":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1523
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1525
    .local v6, "type":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1527
    invoke-static {}, Laah;->a()Laah;

    move-result-object v4

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    invoke-virtual {v4, v3, v2}, Laah;->a(Ljava/lang/String;Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;)V

    .line 1528
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v2

    const-string/jumbo v4, "SC01015"

    const-string/jumbo v7, "record_sin_success"

    invoke-virtual {v2, v4, v7}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string/jumbo v2, "\u9a9a\u6270\u7535\u8bdd"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "\u8bc8\u9a97\u7535\u8bdd"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "\u623f\u4ea7\u4e2d\u4ecb"

    .line 1530
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "\u4e1a\u52a1\u63a8\u9500"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1531
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v2

    const-string/jumbo v4, "SC01015"

    const-string/jumbo v7, "netrecord_sin_success"

    invoke-virtual {v2, v4, v7}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1588
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v14    # "classify":Ljava/lang/String;
    .end local v16    # "numItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    .end local v17    # "numTypeResult":Labq;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v20

    .line 1589
    return-void

    .line 1533
    .restart local v16    # "numItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    .restart local v17    # "numTypeResult":Labq;
    :catch_0
    move-exception v15

    .line 1534
    .local v15, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "CallBusinessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1588
    .end local v15    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v16    # "numItem":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    .end local v17    # "numTypeResult":Labq;
    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1540
    :cond_2
    const/16 v2, 0x36

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lwa;->getRequestType()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 1541
    const-string/jumbo v2, "CallBusinessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NUM_TYPE_DATABASE_UPDATE success error code is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const-string/jumbo v2, "000000"

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1543
    move-object/from16 v0, p1

    check-cast v0, Labq;

    move-object/from16 v17, v0

    .line 1544
    .restart local v17    # "numTypeResult":Labq;
    invoke-virtual/range {v17 .. v17}, Labq;->d()Ljava/lang/String;

    move-result-object v19

    .line 1545
    .local v19, "version":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Labq;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v19, :cond_3

    .line 1547
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v4, "com.iflytek.cmccIFLY_PHONENUM_TYPE_NET_DOWNLOAD_TYPE"

    .line 1548
    invoke-virtual/range {v17 .. v17}, Labq;->b()Ljava/lang/String;

    move-result-object v7

    .line 1547
    invoke-virtual {v2, v4, v7}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v4, "com.iflytek.cmccIFLY_PHONENUM_TYPE_NET_DOWNLOAD_VERSION"

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {v17 .. v17}, Labq;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "full"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1553
    invoke-virtual/range {v17 .. v17}, Labq;->c()Ljava/lang/String;

    move-result-object v12

    .line 1554
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v7

    const/16 v8, 0xf

    const-string/jumbo v9, "phone_type_db_full"

    const/4 v10, 0x0

    const-string/jumbo v11, "database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "phonenum_type.zip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v7 .. v13}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->k:Z

    goto/16 :goto_0

    .line 1562
    :cond_4
    invoke-virtual/range {v17 .. v17}, Labq;->c()Ljava/lang/String;

    move-result-object v12

    .line 1563
    .restart local v12    # "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v7

    const/16 v8, 0xe

    const-string/jumbo v9, "phone_type_db_incremental"

    const/4 v10, 0x0

    const-string/jumbo v11, "database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "phonenum_type.zip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v7 .. v13}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1572
    .end local v12    # "url":Ljava/lang/String;
    .end local v17    # "numTypeResult":Labq;
    .end local v19    # "version":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "030001"

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1574
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->k:Z

    goto/16 :goto_0

    .line 1577
    :cond_6
    const/16 v2, 0x39

    invoke-virtual/range {p1 .. p1}, Lwa;->getRequestType()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1578
    const-string/jumbo v2, "CallBusinessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MARK_CALLER_INFO success error code is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const-string/jumbo v2, "000000"

    invoke-virtual/range {p1 .. p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    invoke-virtual/range {p1 .. p1}, Lwa;->getRequestId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Laai;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v18

    .line 1582
    .local v18, "tempList":Ljava/util/List;, "Ljava/util/List<Laac;>;"
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Laai;->a(Ljava/util/List;)V

    .line 1585
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    invoke-virtual {v2}, Laai;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneList"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1683
    if-eqz p1, :cond_0

    .line 1684
    const-string/jumbo v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, "phones":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1686
    aget-object v2, v0, v4

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1687
    .local v1, "sections":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1688
    aget-object v2, v1, v4

    .line 1692
    .end local v0    # "phones":[Ljava/lang/String;
    .end local v1    # "sections":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 527
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIncomingOffhook number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    const-string/jumbo v1, "CallBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onIncomingOffhook number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    .line 532
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->y()V

    .line 533
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    .line 535
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->x()V

    .line 536
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    .line 537
    return-void

    .line 533
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->w:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1696
    if-nez p1, :cond_0

    .line 1697
    const/4 v2, 0x0

    .line 1709
    :goto_0
    return-object v2

    .line 1700
    :cond_0
    const-string/jumbo v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1701
    .local v0, "firstIndex":I
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1702
    .local v1, "lastIndex":I
    if-eq v3, v0, :cond_1

    if-eq v3, v1, :cond_1

    if-ge v0, v1, :cond_1

    .line 1703
    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v2, p1

    .line 1709
    goto :goto_0

    .line 1705
    :cond_1
    const-string/jumbo v2, "("

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1706
    const-string/jumbo v2, ")"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 644
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "notifyContactChange"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v0

    invoke-virtual {v0}, Lgx;->f()V

    .line 646
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    invoke-virtual {v0}, Laai;->b()V

    .line 647
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 541
    const-string/jumbo v0, "CallBusinessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIncomingCallEnd number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    .line 544
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->y()V

    .line 545
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->x()V

    .line 549
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    .line 550
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->u()V

    .line 553
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Laaj;->b(Landroid/content/Context;)V

    .line 554
    return-void

    .line 545
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Lzv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->f()V

    .line 657
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 558
    const-string/jumbo v1, "CallBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onIncomingMissCallEnd number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object v0, p1

    .line 561
    .local v0, "num":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    new-instance v0, Ljava/lang/String;

    .end local v0    # "num":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v0    # "num":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->t:Ljava/lang/Object;

    monitor-enter v2

    .line 567
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->h:Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->y()V

    .line 569
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    .line 572
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->x()V

    .line 573
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->w()V

    .line 574
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->u()V

    .line 586
    return-void

    .line 569
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1771
    if-nez p1, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return v5

    .line 1774
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_NOTIFY_CALL_PRIVACY_CONTACT"

    invoke-virtual {v6, v7}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1775
    .local v1, "json":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1778
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1779
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1780
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1781
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 1782
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1783
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 1784
    const-string/jumbo v6, "name"

    .line 1785
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1784
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1786
    const/4 v5, 0x1

    goto :goto_0

    .line 1781
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1791
    .end local v0    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "len":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 1756
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 1714
    const-string/jumbo v5, "CallBusinessManager"

    const-string/jumbo v6, "downloadStatusChanged"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    if-eqz p1, :cond_0

    .line 1717
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_PHONENUM_TYPE_NET_DOWNLOAD_TYPE"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1719
    .local v1, "lastType":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_PHONENUM_TYPE_NET_DOWNLOAD_VERSION"

    invoke-virtual {v5, v6}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1722
    .local v2, "lastVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1750
    .end local v1    # "lastType":Ljava/lang/String;
    .end local v2    # "lastVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1725
    .restart local v1    # "lastType":Ljava/lang/String;
    .restart local v2    # "lastVersion":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1727
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1728
    .local v4, "type":I
    const-string/jumbo v5, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1729
    const/16 v5, 0xf

    if-ne v5, v4, :cond_2

    const-string/jumbo v5, "full"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1730
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->k()Z

    move-result v3

    .line 1731
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 1732
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccPHONENUM_TYPE_VERSION_NET_FULL"

    invoke-virtual {v5, v6, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1735
    .end local v3    # "success":Z
    :cond_2
    const/16 v5, 0xe

    if-ne v5, v4, :cond_0

    const-string/jumbo v5, "append"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1736
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->j()Z

    move-result v3

    .line 1737
    .restart local v3    # "success":Z
    if-eqz v3, :cond_0

    .line 1738
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccPHONENUM_TYPE_VERSION_NET_APPEND"

    invoke-virtual {v5, v6, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1744
    .end local v3    # "success":Z
    .end local v4    # "type":I
    :cond_3
    const-string/jumbo v5, "CallBusinessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MethodName: downloadStatusChanged  data: [ action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " info: But has not Extra data."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "handleDirectPlayTTS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/call/CallBusinessManager;->e(Ljava/lang/String;)V

    .line 1199
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    invoke-virtual {v0, v1}, Lpp;->d(Lju;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "handleDirectStopTTS"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->v:Lpp;

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->I:Lju;

    invoke-virtual {v0, v1}, Lpp;->c(Lju;)V

    .line 1210
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/helpandfeed/CallSmsBroadcastHelper;->isStarBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->t()V

    .line 1214
    :cond_1
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1301
    const-string/jumbo v1, "CallBusinessManager"

    const-string/jumbo v2, "triggerUpdateDB"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1303
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1305
    .local v0, "message":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1306
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1308
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->l()V

    .line 1309
    return-void
.end method

.method public h()V
    .locals 6

    .prologue
    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->D:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1328
    iget-wide v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->D:J

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(J)V

    .line 1335
    :goto_0
    return-void

    .line 1330
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1331
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 1332
    .local v0, "nextTime":Ljava/util/Date;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmcc.RANDOM_KEY"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lil;->a(Ljava/lang/String;J)V

    .line 1333
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->b(J)V

    goto :goto_0
.end method

.method public i()V
    .locals 10

    .prologue
    .line 1347
    iget-object v6, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    invoke-virtual {v6}, Laai;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 1348
    .local v3, "tempList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Laac;>;"
    if-eqz v3, :cond_1

    .line 1349
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1350
    .local v1, "now":Ljava/util/Date;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_MARK_NUM_LAST_UPDATE_TIME"

    invoke-virtual {v6, v7}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->m:J

    .line 1351
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->m:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1352
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->m:J

    .line 1353
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_MARK_NUM_LAST_UPDATE_TIME"

    iget-wide v8, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->m:J

    invoke-virtual {v6, v7, v8, v9}, Lil;->a(Ljava/lang/String;J)V

    .line 1356
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->m:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x2932e00

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1369
    .end local v1    # "now":Ljava/util/Date;
    :cond_1
    :goto_0
    return-void

    .line 1359
    .restart local v1    # "now":Ljava/util/Date;
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBusinessManager;->D()Labo;

    move-result-object v6

    invoke-virtual {v6, v3}, Labo;->a(Ljava/util/List;)J

    move-result-wide v4

    .line 1360
    .local v4, "requestId":J
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v7, "com.iflytek.cmccIFLY_MARK_NUM_LAST_UPDATE_TIME"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lil;->a(Ljava/lang/String;J)V

    .line 1361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    .local v2, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Laac;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laac;

    .line 1363
    .local v0, "markedType":Laac;
    if-eqz v0, :cond_3

    .line 1364
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1367
    .end local v0    # "markedType":Laac;
    :cond_4
    iget-object v6, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->g:Laai;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Laai;->a(Ljava/lang/Long;Ljava/util/List;)V

    goto :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 1762
    return-void
.end method

.method public j()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1909
    iget-object v7, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "phonenum_type.zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lns;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1911
    .local v3, "flag":Z
    if-nez v3, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return v6

    .line 1914
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "phonenum_type.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1916
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "phonenum_type.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1920
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "phonenum_type_net.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1925
    iget-object v7, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "phonenum_type_net.db"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Laag;->a(Landroid/content/Context;Ljava/lang/String;)Laag;

    move-result-object v2

    .line 1926
    .local v2, "downloadedDBHelper":Laag;
    if-eqz v2, :cond_0

    .line 1929
    new-instance v4, Laaf;

    invoke-direct {v4, v2}, Laaf;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 1930
    .local v4, "numTypeDao":Laaf;
    new-instance v0, Lzz;

    invoke-direct {v0, v2}, Lzz;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 1935
    .local v0, "classifyTypeDao":Lzz;
    invoke-virtual {v4}, Laaf;->a()Ljava/util/List;

    move-result-object v5

    .line 1936
    .local v5, "numTypeData":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    invoke-static {}, Laad;->a()Laad;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Laad;->a(Ljava/util/List;Z)V

    .line 1939
    invoke-virtual {v0}, Lzz;->a()Ljava/util/List;

    move-result-object v1

    .line 1940
    .local v1, "classifyTypeData":Ljava/util/List;, "Ljava/util/List<Laab;>;"
    invoke-static {}, Laad;->a()Laad;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Laad;->b(Ljava/util/List;Z)V

    .line 1942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "phonenum_type_net.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1943
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public k()Z
    .locals 4

    .prologue
    .line 1955
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "phonenum_type.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->A:Ljava/lang/String;

    .line 1956
    invoke-virtual {v1, v2, v3}, Lns;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1957
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "phonenum_type.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 1959
    const/4 v1, 0x1

    .line 1961
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 2003
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2004
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2005
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2006
    .local v0, "downloadSougouPluginMessage":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2007
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2009
    .end local v0    # "downloadSougouPluginMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 8

    .prologue
    const/4 v1, 0x7

    .line 2015
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-static {v0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPlugin(I)Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    move-result-object v7

    .line 2018
    .local v7, "sougouPlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    if-eqz v7, :cond_1

    .line 2019
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "sogou already install . check update local data now"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Laaj;->b(Landroid/content/Context;)V

    .line 2094
    .end local v7    # "sougouPlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_0
    :goto_0
    return-void

    .line 2024
    .restart local v7    # "sougouPlugin":Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    :cond_1
    invoke-static {}, Laaj;->a()Laaj;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->u:Landroid/content/Context;

    .line 2025
    invoke-virtual {v0, v2}, Laaj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2027
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v2, "install sougouHMT plugin"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const-string/jumbo v6, "CallBusinessManagersougou_plugin"

    .line 2029
    .local v6, "sougouHMTTAGString":Ljava/lang/String;
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v2, "CallBusinessManagersougou_plugin"

    new-instance v3, Lcom/iflytek/viafly/call/CallBusinessManager$6;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/call/CallBusinessManager$6;-><init>(Lcom/iflytek/viafly/call/CallBusinessManager;)V

    invoke-virtual {v0, v2, v3}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 2085
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->main:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->d:Lasc;

    .line 2086
    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    goto :goto_0

    .line 2091
    .end local v6    # "sougouHMTTAGString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "CallBusinessManager"

    const-string/jumbo v1, "no permission to install"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 2109
    iget-wide v0, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->C:J

    return-wide v0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "realTrigger"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 2098
    const-string/jumbo v1, "CallBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAlarmTrigger realTrigger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2100
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmModuleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CallBusinessManager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2101
    const-string/jumbo v1, "CallBusinessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alarm data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2103
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2104
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBusinessManager;->K:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2106
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
