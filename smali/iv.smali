.class public Liv;
.super Lsu$a;
.source "SpeechUnderstanderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private c:Ljava/util/HashMap;
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
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "asr"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 38
    invoke-direct {p0}, Lsu$a;-><init>()V

    .line 39
    iput-object p3, p0, Liv;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Liv;->a:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liv;->c:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method static synthetic a(Liv;Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;
    .locals 1
    .param p0, "x0"    # Liv;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Liv;->a(Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)",
            "Lcom/iflytek/speech/UnderstanderResult;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 127
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 128
    .local v1, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v0, Lcom/iflytek/speech/UnderstanderResult;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iflytek/speech/UnderstanderResult;-><init>(Ljava/lang/String;)V

    .line 131
    .end local v1    # "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lsn;)Ljt;
    .locals 6
    .param p1, "extLisener"    # Lsn;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "ret":Ljt;
    iget-object v4, p0, Liv;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 110
    :try_start_0
    iget-object v3, p0, Liv;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsn;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljt;

    move-object v1, v0

    .line 111
    if-nez v1, :cond_1

    .line 112
    new-instance v2, Liv$a;

    invoke-direct {v2, p0, p1}, Liv$a;-><init>(Liv;Lsn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v1    # "ret":Ljt;
    .local v2, "ret":Ljt;
    :try_start_1
    iget-object v3, p0, Liv;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsn;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 115
    .end local v2    # "ret":Ljt;
    .restart local v1    # "ret":Ljt;
    :cond_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "ret":Ljt;
    .restart local v2    # "ret":Ljt;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ret":Ljt;
    .restart local v1    # "ret":Ljt;
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lsn;)V
    .locals 6
    .param p1, "extIntent"    # Landroid/content/Intent;
    .param p2, "lis"    # Lsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v3, "selfIntent":Landroid/content/Intent;
    invoke-static {p1}, Liq;->a(Landroid/content/Intent;)Lir;

    move-result-object v1

    .line 59
    .local v1, "callerInfo":Lir;
    invoke-static {v1}, Lja;->a(Lir;)V

    .line 62
    invoke-static {p1, v3}, Liq;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 65
    const-string/jumbo v4, "scene"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "scene":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 67
    const-string/jumbo v2, "all"

    .line 69
    :cond_0
    const-string/jumbo v4, "web_scene"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v4, "local_scene"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {p1, v3}, Liq;->b(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 77
    invoke-static {p1, v3}, Liq;->c(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 85
    const-string/jumbo v4, "com.iflytek.component.appendaudio"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "appendAudio":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string/jumbo v4, "append_audio"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    :cond_1
    iget-object v4, p0, Liv;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p2}, Liv;->c(Lsn;)Ljt;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Landroid/content/Intent;Ljt;)V

    .line 90
    return-void
.end method

.method public a(Lsn;)V
    .locals 2
    .param p1, "lis"    # Lsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Liv;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p1}, Liv;->c(Lsn;)Ljt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Ljt;)V

    .line 46
    return-void
.end method

.method public a([BIJ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "dataLength"    # I
    .param p3, "usedTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Liv;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([BIJ)V

    .line 240
    return-void
.end method

.method public a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Liv;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    return v0
.end method

.method public b(Lsn;)V
    .locals 2
    .param p1, "lis"    # Lsn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Liv;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p1}, Liv;->c(Lsn;)Ljt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljt;)V

    .line 96
    return-void
.end method
