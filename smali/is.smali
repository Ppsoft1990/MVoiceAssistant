.class public Lis;
.super Lsr$a;
.source "MusicRecognizerBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis$a;
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
    .line 41
    invoke-direct {p0}, Lsr$a;-><init>()V

    .line 42
    iput-object p3, p0, Lis;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 43
    iput-object p1, p0, Lis;->a:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lis;->c:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method static synthetic a(Lis;Ljava/util/List;)Lcom/iflytek/speech/RecognizerResult;
    .locals 1
    .param p0, "x0"    # Lis;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lis;->a(Ljava/util/List;)Lcom/iflytek/speech/RecognizerResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Lcom/iflytek/speech/RecognizerResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)",
            "Lcom/iflytek/speech/RecognizerResult;"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    const/4 v7, 0x0

    .line 126
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 127
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 128
    .local v4, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v2, ""

    .line 129
    .local v2, "json":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v4}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    .line 131
    .local v0, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    const-string/jumbo v6, "json"

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 136
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 140
    .end local v0    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    const-string/jumbo v5, "SPEECH_MusicRecognizerBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getExtAsrResults to JSON="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Lcom/iflytek/speech/RecognizerResult;

    invoke-direct {v1, v2}, Lcom/iflytek/speech/RecognizerResult;-><init>(Ljava/lang/String;)V

    .line 144
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c(Lsm;)Ljt;
    .locals 6
    .param p1, "extLisener"    # Lsm;

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
    iget-object v4, p0, Lis;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 110
    :try_start_0
    iget-object v3, p0, Lis;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsm;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljt;

    move-object v1, v0

    .line 111
    if-nez v1, :cond_1

    .line 112
    new-instance v2, Lis$a;

    invoke-direct {v2, p0, p1}, Lis$a;-><init>(Lis;Lsm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v1    # "ret":Ljt;
    .local v2, "ret":Ljt;
    :try_start_1
    iget-object v3, p0, Lis;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsm;->asBinder()Landroid/os/IBinder;

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
.method public a(Landroid/content/Intent;Lsm;)V
    .locals 7
    .param p1, "extIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v3, "selfIntent":Landroid/content/Intent;
    invoke-static {p1}, Liq;->a(Landroid/content/Intent;)Lir;

    move-result-object v1

    .line 68
    .local v1, "callerInfo":Lir;
    invoke-static {v1}, Lja;->a(Lir;)V

    .line 71
    invoke-static {p1, v3}, Liq;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 74
    const-string/jumbo v4, "audio_type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "audioType":Ljava/lang/String;
    const-string/jumbo v4, "music_key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "musicKey":Ljava/lang/String;
    const-string/jumbo v4, "web_scene"

    const-string/jumbo v5, "humming"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v4, "audio_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v4, "music_key"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v4, "SPEECH_MusicRecognizerBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startListening audio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string/jumbo v4, "vad_front_time"

    const/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-static {p1, v3}, Liq;->b(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 88
    iget-object v4, p0, Lis;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p2}, Lis;->c(Lsm;)Ljt;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Landroid/content/Intent;Ljt;)V

    .line 89
    return-void
.end method

.method public a(Lsm;)V
    .locals 2
    .param p1, "listener"    # Lsm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lis;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p1}, Lis;->c(Lsm;)Ljt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Ljt;)V

    .line 51
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
    .line 55
    iget-object v0, p0, Lis;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v0

    return v0
.end method

.method public b(Lsm;)V
    .locals 2
    .param p1, "listener"    # Lsm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lis;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p1}, Lis;->c(Lsm;)Ljt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljt;)V

    .line 95
    return-void
.end method
