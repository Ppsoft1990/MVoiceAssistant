.class public Liw;
.super Lsv$a;
.source "TextUnderstanderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liw$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

.field private b:Ljava/util/HashMap;
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
    .line 36
    invoke-direct {p0}, Lsv$a;-><init>()V

    .line 37
    iput-object p3, p0, Liw;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liw;->b:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method static synthetic a(Liw;Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;
    .locals 1
    .param p0, "x0"    # Liw;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Liw;->a(Ljava/util/List;)Lcom/iflytek/speech/UnderstanderResult;

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
    .line 116
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 118
    .local v1, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    new-instance v0, Lcom/iflytek/speech/UnderstanderResult;

    invoke-virtual {v1}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iflytek/speech/UnderstanderResult;-><init>(Ljava/lang/String;)V

    .line 121
    .end local v1    # "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lsq;)Ljt;
    .locals 6
    .param p1, "extLisener"    # Lsq;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    .line 98
    :cond_0
    const/4 v1, 0x0

    .line 99
    .local v1, "ret":Ljt;
    iget-object v4, p0, Liw;->b:Ljava/util/HashMap;

    monitor-enter v4

    .line 100
    :try_start_0
    iget-object v3, p0, Liw;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lsq;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljt;

    move-object v1, v0

    .line 101
    if-nez v1, :cond_1

    .line 102
    new-instance v2, Liw$a;

    invoke-direct {v2, p0, p1}, Liw$a;-><init>(Liw;Lsq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v1    # "ret":Ljt;
    .local v2, "ret":Ljt;
    :try_start_1
    iget-object v3, p0, Liw;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lsq;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 105
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
.method public a(Landroid/content/Intent;Lsq;)V
    .locals 5
    .param p1, "extIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    const-string/jumbo v3, "scene"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "scene":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "all"

    .line 72
    :cond_0
    const-string/jumbo v3, "text"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "text":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 74
    :cond_1
    if-eqz p2, :cond_2

    .line 75
    const/16 v3, 0x4e2c

    invoke-interface {p2, v3}, Lsq;->a(I)V

    .line 86
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v1, "searchIntent":Landroid/content/Intent;
    const-string/jumbo v3, "search_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v3, "web_scene"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v3, "is_play_result_tone"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string/jumbo v3, "search_entry"

    const-string/jumbo v4, "input"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v3, p0, Liw;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p2}, Liw;->b(Lsq;)Ljt;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Landroid/content/Intent;Ljt;)V

    goto :goto_0
.end method

.method public a(Lsq;)V
    .locals 4
    .param p1, "extLisener"    # Lsq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string/jumbo v1, "SPEECH_TextUnderstanderBinder"

    const-string/jumbo v2, "cancel not have extLisener."

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Liw;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Liw;->b:Ljava/util/HashMap;

    .line 49
    invoke-interface {p1}, Lsq;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liw$a;

    .line 50
    .local v0, "selfListener":Liw$a;
    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Liw;->b:Ljava/util/HashMap;

    invoke-interface {p1}, Lsq;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Liw$a;->a()V

    .line 55
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "selfListener":Liw$a;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Liw;->a:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    return v0
.end method
