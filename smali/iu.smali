.class public Liu;
.super Lst$a;
.source "SpeechSynthesizerBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liu$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

.field private c:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechSynthesizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tts"    # Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .prologue
    .line 43
    invoke-direct {p0}, Lst$a;-><init>()V

    .line 44
    iput-object p3, p0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Liu;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liu;->c:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method private d(Lsp;)Lju;
    .locals 6
    .param p1, "extLisener"    # Lsp;

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    .line 226
    :cond_0
    const/4 v1, 0x0

    .line 227
    .local v1, "ret":Lju;
    iget-object v4, p0, Liu;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 228
    :try_start_0
    iget-object v3, p0, Liu;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsp;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lju;

    move-object v1, v0

    .line 229
    if-nez v1, :cond_1

    .line 230
    new-instance v2, Liu$a;

    invoke-direct {v2, p0, p1}, Liu$a;-><init>(Liu;Lsp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v1    # "ret":Lju;
    .local v2, "ret":Lju;
    :try_start_1
    iget-object v3, p0, Liu;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsp;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 233
    .end local v2    # "ret":Lju;
    .restart local v1    # "ret":Lju;
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

    .end local v1    # "ret":Lju;
    .restart local v2    # "ret":Lju;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ret":Lju;
    .restart local v1    # "ret":Lju;
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lso;)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lso;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    const-string/jumbo v9, "text"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "text":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v9, "engine_type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "enginType":Ljava/lang/String;
    const-string/jumbo v9, "voice_name"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "role":Ljava/lang/String;
    const-string/jumbo v9, "speed"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "speed":Ljava/lang/String;
    const-string/jumbo v9, "pitch"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "pitch":Ljava/lang/String;
    const-string/jumbo v9, "tts_engine_type"

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v9, "role"

    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz v5, :cond_0

    .line 160
    const-string/jumbo v9, "speed"

    invoke-static {v5}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    :cond_0
    if-eqz v3, :cond_1

    .line 163
    const-string/jumbo v9, "pitch"

    invoke-static {v3}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :cond_1
    new-instance v8, Lix;

    const/16 v9, 0x3e80

    const-string/jumbo v10, "file"

    .line 167
    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lix;-><init>(ILjava/lang/String;)V

    .line 168
    .local v8, "ttsFile":Lix;
    new-instance v7, Liu$1;

    invoke-direct {v7, p0, v8, p2}, Liu$1;-><init>(Liu;Lix;Lso;)V

    .line 207
    .local v7, "tmp":Lju;
    new-instance v0, Liu$2;

    invoke-direct {v0, p0, v8}, Liu$2;-><init>(Liu;Lix;)V

    .line 213
    .local v0, "callback":Ljj;
    iget-object v9, p0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-virtual {v9, v6, v2, v7, v0}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;Ljj;)V

    .line 214
    const/4 v9, 0x0

    return v9
.end method

.method public a(Landroid/content/Intent;Lsp;)I
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    const-string/jumbo v14, "engine_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "enginType":Ljava/lang/String;
    const-string/jumbo v14, "local"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Liu;->a:Landroid/content/Context;

    .line 71
    invoke-static {v14}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a()Z

    move-result v14

    if-nez v14, :cond_0

    .line 73
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Liu;->a:Landroid/content/Context;

    const-class v15, Lcom/iflytek/viafly/Home;

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v5, "i":Landroid/content/Intent;
    const-string/jumbo v14, "com.iflytek.cmcc.ACTION_APK_DOWNLOAD_OFFLINE_VOICE"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/high16 v14, 0x34000000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    move-object/from16 v0, p0

    iget-object v14, v0, Liu;->a:Landroid/content/Context;

    invoke-virtual {v14, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v5    # "i":Landroid/content/Intent;
    :goto_0
    const/16 v14, 0x55f2

    .line 136
    :goto_1
    return v14

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "SPEECH_SynthesizerBinder"

    const-string/jumbo v15, "start home error"

    invoke-static {v14, v15, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v14, "voice_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "role":Ljava/lang/String;
    const-string/jumbo v14, "speed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "speed":Ljava/lang/String;
    const-string/jumbo v14, "pitch"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "pitch":Ljava/lang/String;
    const-string/jumbo v14, "volume"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, "volume":Ljava/lang/String;
    const-string/jumbo v14, "stream_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, "streamType":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v7, "params":Landroid/os/Bundle;
    const-string/jumbo v14, "tts_engine_type"

    invoke-virtual {v7, v14, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v14, "role"

    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz v10, :cond_1

    .line 100
    const-string/jumbo v14, "speed"

    invoke-static {v10}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    :cond_1
    if-eqz v8, :cond_2

    .line 103
    const-string/jumbo v14, "pitch"

    invoke-static {v8}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    :cond_2
    if-eqz v13, :cond_3

    .line 106
    const-string/jumbo v14, "volume"

    invoke-static {v13}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_3
    if-eqz v11, :cond_4

    .line 109
    const-string/jumbo v14, "stream"

    invoke-static {v11}, Lcom/iflytek/yd/util/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    :cond_4
    const-string/jumbo v14, "audio_need_cache"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string/jumbo v14, "SPEECH_SynthesizerBinder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startSpeaking ___1.1__ speed="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " volume="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " streamType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pitch="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " role="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " enginType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string/jumbo v14, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 121
    .local v12, "text":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Liq;->a(Landroid/content/Intent;)Lir;

    move-result-object v2

    .line 122
    .local v2, "caller":Lir;
    invoke-static {v2}, Ljb;->a(Lir;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Liu;->d(Lsp;)Lju;

    move-result-object v15

    invoke-virtual {v14, v12, v7, v15}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Ljava/lang/String;Landroid/os/Bundle;Lju;)V

    .line 124
    const-string/jumbo v14, "SPEECH_SynthesizerBinder"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "startSpeaking ___1.2___ "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " txt="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string/jumbo v6, "LX_500003"

    .line 127
    .local v6, "opCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-virtual {v14}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 128
    const-string/jumbo v14, "cloud"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 129
    const-string/jumbo v6, "LX_500000"

    .line 132
    :cond_5
    if-eqz v2, :cond_6

    iget-object v14, v2, Lir;->a:Ljava/lang/String;

    if-eqz v14, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Liu;->a:Landroid/content/Context;

    invoke-static {v14}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v14

    iget-object v15, v2, Lir;->a:Ljava/lang/String;

    invoke-virtual {v14, v6, v15}, Lwz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method public a(Lsp;)I
    .locals 2
    .param p1, "listener"    # Lsp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0, p1}, Liu;->d(Lsp;)Lju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->c(Lju;)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lju;)Z

    move-result v0

    return v0
.end method

.method public b(Lsp;)I
    .locals 2
    .param p1, "listener"    # Lsp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0, p1}, Liu;->d(Lsp;)Lju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->d(Lju;)I

    move-result v0

    return v0
.end method

.method public c(Lsp;)I
    .locals 3
    .param p1, "listener"    # Lsp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "SPEECH_SynthesizerBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopSpeaking _____2_____ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Liu;->b:Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    invoke-direct {p0, p1}, Liu;->d(Lsp;)Lju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e(Lju;)I

    move-result v0

    return v0
.end method
