.class public Lit;
.super Lss$a;
.source "SpeechRecognizerBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit$a;
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

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/iflytek/base/speech/impl/SpeechRecognizer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "asr"    # Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .prologue
    .line 51
    invoke-direct {p0}, Lss$a;-><init>()V

    .line 374
    new-instance v0, Lit$1;

    invoke-direct {v0, p0}, Lit$1;-><init>(Lit;)V

    iput-object v0, p0, Lit;->e:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .line 52
    iput-object p3, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    .line 53
    iput-object p1, p0, Lit;->a:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lit;->c:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lit;->d:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method static synthetic a(Lit;Ljava/util/List;)Lcom/iflytek/speech/RecognizerResult;
    .locals 1
    .param p0, "x0"    # Lit;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lit;->a(Ljava/util/List;)Lcom/iflytek/speech/RecognizerResult;

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

    .line 244
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 245
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 246
    .local v4, "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    const-string/jumbo v2, ""

    .line 247
    .local v2, "json":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {v4}, Lcom/iflytek/yd/speech/ViaAsrResult;->getXmlDoc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/yd/util/xml/XmlParser;->parse(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlDoc;

    move-result-object v0

    .line 249
    .local v0, "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/iflytek/yd/util/xml/XmlDoc;->getRoot()Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v5

    const-string/jumbo v6, "json"

    invoke-virtual {v5, v6}, Lcom/iflytek/yd/util/xml/XmlElement;->getSubElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 253
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 254
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/yd/util/xml/XmlElement;

    invoke-virtual {v5}, Lcom/iflytek/yd/util/xml/XmlElement;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 258
    .end local v0    # "doc":Lcom/iflytek/yd/util/xml/XmlDoc;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/yd/util/xml/XmlElement;>;"
    :cond_0
    const-string/jumbo v5, "SPEECH_RecognizerBinder"

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

    .line 259
    new-instance v1, Lcom/iflytek/speech/RecognizerResult;

    invoke-direct {v1, v2}, Lcom/iflytek/speech/RecognizerResult;-><init>(Ljava/lang/String;)V

    .line 262
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "res":Lcom/iflytek/yd/speech/ViaAsrResult;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lit;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lit;

    .prologue
    .line 36
    iget-object v0, p0, Lit;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(Lsm;)Ljt;
    .locals 6
    .param p1, "extLisener"    # Lsm;

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
    .local v1, "ret":Ljt;
    iget-object v4, p0, Lit;->c:Ljava/util/HashMap;

    monitor-enter v4

    .line 228
    :try_start_0
    iget-object v3, p0, Lit;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsm;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljt;

    move-object v1, v0

    .line 229
    if-nez v1, :cond_1

    .line 230
    new-instance v2, Lit$a;

    invoke-direct {v2, p0, p1}, Lit$a;-><init>(Lit;Lsm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v1    # "ret":Ljt;
    .local v2, "ret":Ljt;
    :try_start_1
    iget-object v3, p0, Lit;->c:Ljava/util/HashMap;

    invoke-interface {p1}, Lsm;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 233
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
.method public a(Landroid/content/Intent;Lsk;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    const-string/jumbo v6, "engine_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "enginType":Ljava/lang/String;
    const-string/jumbo v6, "grammar_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "grammarType":Ljava/lang/String;
    const-string/jumbo v6, "grammar_content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "grammarText":Ljava/lang/String;
    const-string/jumbo v6, "SPEECH_RecognizerBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildGrammar engin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "error":I
    invoke-static {p1}, Liq;->a(Landroid/content/Intent;)Lir;

    move-result-object v1

    .line 69
    .local v1, "callerInfo":Lir;
    iget-object v6, p0, Lit;->d:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lir;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_GRM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v6, "local"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    iget-object v6, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    const-string/jumbo v6, "abnf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 76
    const/4 v6, 0x1

    new-array v0, v6, [B

    .line 77
    .local v0, "bnf":[B
    invoke-static {v4}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 80
    :cond_0
    iget-object v6, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    const/4 v7, 0x0

    iget-object v8, p0, Lit;->e:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    iget-object v9, v1, Lir;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v0, v8, v9}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(I[BLcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;Ljava/lang/String;)V

    .line 93
    .end local v0    # "bnf":[B
    :goto_0
    if-lez v3, :cond_1

    .line 94
    const-string/jumbo v6, ""

    const/16 v7, 0x520a

    invoke-interface {p2, v6, v7}, Lsk;->a(Ljava/lang/String;I)V

    .line 96
    :cond_1
    return-void

    .line 82
    :cond_2
    const-string/jumbo v6, "SPEECH_RecognizerBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildGrammar error type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v3, 0x520a

    goto :goto_0

    .line 86
    :cond_3
    const/16 v3, 0x55f2

    goto :goto_0

    .line 91
    :cond_4
    const/16 v3, 0x520a

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lsl;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 175
    const-string/jumbo v0, "engine_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "enginType":Ljava/lang/String;
    const-string/jumbo v0, "lexicon_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "lexName":Ljava/lang/String;
    const-string/jumbo v0, "lexicon_content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, "itemString":Ljava/lang/String;
    const-string/jumbo v0, "grammar_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, "grammarId":Ljava/lang/String;
    invoke-static {p1}, Liq;->a(Landroid/content/Intent;)Lir;

    move-result-object v8

    .line 183
    .local v8, "callerInfo":Lir;
    iget-object v0, p0, Lit;->d:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Lir;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_LEX"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v0, "SPEECH_RecognizerBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLexicon engin="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " items="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " grammarId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v10, 0x0

    .line 189
    .local v10, "error":I
    const-string/jumbo v0, "local"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v0, "NOITEM"

    aput-object v0, v3, v1

    .line 193
    .local v3, "items":[Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v0, ""

    aput-object v0, v5, v1

    .line 194
    .local v5, "dependGrammar":[Ljava/lang/String;
    invoke-static {v12}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string/jumbo v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_0
    invoke-static {v11}, Lcom/iflytek/yd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 200
    :cond_1
    iget-object v0, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    iget-object v6, p0, Lit;->e:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    iget-object v7, v8, Lir;->a:Ljava/lang/String;

    move v4, v1

    invoke-virtual/range {v0 .. v7}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(ILjava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;Ljava/lang/String;)V

    .line 211
    .end local v3    # "items":[Ljava/lang/String;
    .end local v5    # "dependGrammar":[Ljava/lang/String;
    :goto_0
    if-lez v10, :cond_2

    .line 212
    const-string/jumbo v0, ""

    const/16 v1, 0x520a

    invoke-interface {p2, v0, v1}, Lsl;->a(Ljava/lang/String;I)V

    .line 214
    :cond_2
    return-void

    .line 204
    :cond_3
    const/16 v10, 0x55f2

    goto :goto_0

    .line 209
    :cond_4
    const/16 v10, 0x520a

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lsm;)V
    .locals 6
    .param p1, "extIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lsm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v3, "selfIntent":Landroid/content/Intent;
    invoke-static {p1}, Liq;->a(Landroid/content/Intent;)Lir;

    move-result-object v1

    .line 121
    .local v1, "callerInfo":Lir;
    invoke-static {v1}, Lja;->a(Lir;)V

    .line 124
    invoke-static {p1, v3}, Liq;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 126
    invoke-static {p1, v3}, Liq;->c(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 128
    if-eqz p1, :cond_1

    .line 129
    const-string/jumbo v4, "web_domain"

    const-string/jumbo v5, "domain"

    .line 130
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v4, "web_param"

    const-string/jumbo v5, "params"

    .line 133
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_1
    const-string/jumbo v4, "grammar_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "localScene":Ljava/lang/String;
    const-string/jumbo v4, "sms"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    const-string/jumbo v2, "wfst"

    .line 143
    :cond_2
    const-string/jumbo v4, "web_scene"

    const-string/jumbo v5, "sms"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v4, "local_scene"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v4, "caller_pkg"

    iget-object v5, v1, Lir;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v4, "vad_front_time"

    const/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-static {p1, v3}, Liq;->b(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 152
    invoke-static {p1, v3}, Liq;->d(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 159
    const-string/jumbo v4, "com.iflytek.component.appendaudio"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "appendAudio":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const-string/jumbo v4, "append_audio"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    :cond_3
    iget-object v4, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p2}, Lit;->c(Lsm;)Ljt;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Landroid/content/Intent;Ljt;)V

    goto/16 :goto_0
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
    .line 100
    iget-object v0, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p1}, Lit;->c(Lsm;)Ljt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->b(Ljt;)V

    .line 101
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
    .line 426
    iget-object v0, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a([BIJ)V

    .line 427
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
    .line 105
    iget-object v0, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

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
    .line 169
    iget-object v0, p0, Lit;->b:Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    invoke-direct {p0, p1}, Lit;->c(Lsm;)Ljt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljt;)V

    .line 170
    return-void
.end method
