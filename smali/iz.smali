.class public Liz;
.super Lkm$a;
.source "ViaSpeechBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liz$b;,
        Liz$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljr;

.field private c:Ljs;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lju;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljr;Ljs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "asr"    # Ljr;
    .param p4, "tts"    # Ljs;

    .prologue
    .line 41
    invoke-direct {p0}, Lkm$a;-><init>()V

    .line 42
    iput-object p3, p0, Liz;->b:Ljr;

    .line 43
    iput-object p4, p0, Liz;->c:Ljs;

    .line 44
    iput-object p1, p0, Liz;->a:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liz;->d:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liz;->e:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method static synthetic a(Liz;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Liz;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Liz;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/business/speech/RecognizerResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v8, "tagRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/business/speech/RecognizerResult;>;"
    if-nez p1, :cond_1

    .line 173
    :cond_0
    return-object v8

    .line 164
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 165
    .local v7, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    if-eqz v7, :cond_2

    .line 166
    new-instance v0, Lcom/iflytek/business/speech/RecognizerResult;

    iget-object v1, v7, Lcom/iflytek/yd/speech/ViaAsrResult;->mVersion:Ljava/lang/String;

    iget v2, v7, Lcom/iflytek/yd/speech/ViaAsrResult;->mConfidence:I

    iget v3, v7, Lcom/iflytek/yd/speech/ViaAsrResult;->mEngine:I

    iget-object v4, v7, Lcom/iflytek/yd/speech/ViaAsrResult;->mFocus:Ljava/lang/String;

    iget-object v5, v7, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    iget-object v6, v7, Lcom/iflytek/yd/speech/ViaAsrResult;->mXmlDoc:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/business/speech/RecognizerResult;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "extRes":Lcom/iflytek/business/speech/RecognizerResult;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c(Lkn;)Lju;
    .locals 3
    .param p1, "extLisener"    # Lkn;

    .prologue
    .line 142
    if-nez p1, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    iget-object v1, p0, Liz;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lkn;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lju;

    .line 146
    .local v0, "ret":Lju;
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Liz$b;

    .end local v0    # "ret":Lju;
    invoke-direct {v0, p0, p1}, Liz$b;-><init>(Liz;Lkn;)V

    .line 148
    .restart local v0    # "ret":Lju;
    iget-object v1, p0, Liz;->d:Ljava/util/HashMap;

    invoke-interface {p1}, Lkn;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d(Lkl;)Ljt;
    .locals 3
    .param p1, "extLisener"    # Lkl;

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v1, p0, Liz;->e:Ljava/util/HashMap;

    invoke-interface {p1}, Lkl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljt;

    .line 130
    .local v0, "ret":Ljt;
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Liz$a;

    .end local v0    # "ret":Ljt;
    invoke-direct {v0, p0, p1}, Liz$a;-><init>(Liz;Lkl;)V

    .line 132
    .restart local v0    # "ret":Ljt;
    iget-object v1, p0, Liz;->e:Ljava/util/HashMap;

    invoke-interface {p1}, Lkl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # I
    .param p6, "arg5"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Intent;Lkl;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lkl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Liz;->b:Ljr;

    invoke-direct {p0, p2}, Liz;->d(Lkl;)Ljt;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljr;->a(Landroid/content/Intent;Ljt;)V

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lkl;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "focus"    # Ljava/lang/String;
    .param p3, "arg2"    # Lkl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Lkn;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "listener"    # Lkn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p3}, Liz;->c(Lkn;)Lju;

    move-result-object v0

    .line 90
    .local v0, "selfListener":Lju;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "speak listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Lkn;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " selfListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public a(Lkl;)V
    .locals 2
    .param p1, "listener"    # Lkl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Liz;->b:Ljr;

    invoke-direct {p0, p1}, Liz;->d(Lkl;)Ljt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljr;->b(Ljt;)V

    .line 53
    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Lkl;)V
    .locals 0
    .param p1, "arg0"    # [Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Lkl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method public a(I[B)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lkn;)Z
    .locals 2
    .param p1, "listener"    # Lkn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Liz;->c:Ljs;

    invoke-direct {p0, p1}, Liz;->c(Lkn;)Lju;

    move-result-object v1

    invoke-interface {v0, v1}, Ljs;->a(Lju;)Z

    move-result v0

    return v0
.end method

.method public b(Lkn;)I
    .locals 4
    .param p1, "listener"    # Lkn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Liz;->c(Lkn;)Lju;

    move-result-object v0

    .line 110
    .local v0, "selfListener":Lju;
    const-string/jumbo v1, "SPEECH_SpeechBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopSpeak listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lkn;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " selfListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Liz;->c:Ljs;

    invoke-interface {v1, v0}, Ljs;->e(Lju;)I

    move-result v1

    return v1
.end method

.method public b(Lkl;)Z
    .locals 2
    .param p1, "listener"    # Lkl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Liz;->b:Ljr;

    invoke-direct {p0, p1}, Liz;->d(Lkl;)Ljt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljr;->d(Ljt;)Z

    move-result v0

    return v0
.end method

.method public c(Lkl;)V
    .locals 2
    .param p1, "listener"    # Lkl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Liz;->b:Ljr;

    invoke-direct {p0, p1}, Liz;->d(Lkl;)Ljt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljr;->a(Ljt;)V

    .line 105
    return-void
.end method
