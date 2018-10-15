.class public Ljx;
.super Ljava/lang/Object;
.source "SpeechPluginProxy.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/interfaces/PluginStateObserver;


# static fields
.field private static a:Ljx;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Ljx;->a:Ljx;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljx$1;

    invoke-direct {v0, p0}, Ljx$1;-><init>(Ljx;)V

    iput-object v0, p0, Ljx;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    .line 48
    iput-object p1, p0, Ljx;->b:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static a()Ljx;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Ljx;->a:Ljx;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljx;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Ljx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljx;->a:Ljx;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljx;

    invoke-direct {v0, p0}, Ljx;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljx;->a:Ljx;

    .line 41
    :cond_0
    sget-object v0, Ljx;->a:Ljx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljx;)V
    .locals 0
    .param p0, "x0"    # Ljx;

    .prologue
    .line 32
    invoke-direct {p0}, Ljx;->d()V

    return-void
.end method

.method static synthetic b(Ljx;)V
    .locals 0
    .param p0, "x0"    # Ljx;

    .prologue
    .line 32
    invoke-direct {p0}, Ljx;->e()V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 102
    const-string/jumbo v1, ""

    .line 103
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    .line 104
    .local v2, "speech":Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    const/16 v4, 0x483

    .line 105
    .local v4, "ver":I
    const-string/jumbo v0, "cn"

    .line 107
    .local v0, "lang":Ljava/lang/String;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    invoke-virtual {v5, v6}, Lil;->d(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "type":I
    const/4 v5, 0x1

    if-ne v5, v3, :cond_1

    .line 110
    const-string/jumbo v0, "cant"

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljx;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/libaitalk5_res_cant.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string/jumbo v5, "res_cnat_path"

    invoke-virtual {v2, v5, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string/jumbo v5, "res_cant_ver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    :goto_0
    const-string/jumbo v5, "lauguage"

    invoke-virtual {v2, v5, v0}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 115
    :cond_1
    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    .line 116
    const-string/jumbo v0, "cnsms"

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ljx;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/libaitalk5_res_cnsms.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string/jumbo v5, "res_cnsms_path"

    invoke-virtual {v2, v5, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string/jumbo v5, "res_cnsms_ver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 148
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    .line 149
    .local v2, "speech":Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    const-string/jumbo v3, "apps_is_update"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "flag":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const-string/jumbo v3, "SPEECH_PluginProxy"

    const-string/jumbo v4, "checkAppLexicon ret true."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Ljx;->b:Landroid/content/Context;

    invoke-static {v3}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v3

    invoke-virtual {v3}, Lgq;->a()[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "apps":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v3

    const-string/jumbo v4, "apps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 160
    :cond_1
    const-string/jumbo v3, "SPEECH_PluginProxy"

    const-string/jumbo v4, "initCacheLexicon apps NULL"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 168
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    .line 169
    .local v2, "speech":Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    const-string/jumbo v3, "contcat_is_update"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "flag":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string/jumbo v3, "SPEECH_PluginProxy"

    const-string/jumbo v4, "checkContactLexicon ret true."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Ljx;->b:Landroid/content/Context;

    invoke-static {v3}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    .line 176
    invoke-virtual {v3}, Lhe;->f()[Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "names":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 178
    iget-object v3, p0, Ljx;->b:Landroid/content/Context;

    invoke-static {v3}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Lhe;->e()[Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 183
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v3

    const-string/jumbo v4, "contact"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 186
    :cond_2
    const-string/jumbo v3, "SPEECH_PluginProxy"

    const-string/jumbo v4, "initCacheLexicon names NULL"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljx;->c()V

    .line 90
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    .line 91
    .local v0, "speech":Lcom/iflytek/base/speech/impl/SpeechRecognizer;
    iget-object v1, p0, Ljx;->c:Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkInitListener;)V

    .line 92
    return-void
.end method

.method public onPluginDisabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 3
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p2, "event"    # I

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 194
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;)V

    .line 195
    invoke-static {v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;)V

    .line 196
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v0

    iget-object v1, p0, Ljx;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/mms/NotifyManager;->c(Landroid/content/Context;)V

    .line 197
    const-string/jumbo v0, "SPEECH_PluginProxy"

    const-string/jumbo v1, "onPluginDisabled."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ladh;->c(I)Z

    .line 201
    :cond_0
    return-void
.end method

.method public onPluginEnabled(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;I)V
    .locals 4
    .param p1, "plugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;
    .param p2, "event"    # I

    .prologue
    const/4 v3, 0x1

    .line 53
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 55
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v1

    const-class v2, Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;

    invoke-interface {v1, v3, v2}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;

    .line 57
    .local v0, "speech":Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;
    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    .line 59
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;->getAitalk()Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a(Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;)V

    .line 61
    invoke-direct {p0}, Ljx;->c()V

    .line 63
    iget-object v1, p0, Ljx;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v1

    .line 64
    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;->getAisound()Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;)V

    .line 66
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_2

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;->getAitalk()Lcom/iflytek/framework/plugin/interfaces/speech/IAitalkEngine;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    const-string/jumbo v1, "SPEECH_PluginProxy"

    const-string/jumbo v2, "onPluginEnabled start."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Ljx;->b()V

    .line 70
    invoke-static {}, Lcom/iflytek/viafly/mms/NotifyManager;->a()Lcom/iflytek/viafly/mms/NotifyManager;

    move-result-object v1

    iget-object v2, p0, Ljx;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/mms/NotifyManager;->d(Landroid/content/Context;)V

    .line 80
    :goto_0
    invoke-static {}, Ladh;->a()Ladh;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ladh;->c(I)Z

    .line 83
    :cond_0
    invoke-static {p2}, Lado;->a(I)V

    .line 85
    .end local v0    # "speech":Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;
    :cond_1
    return-void

    .line 75
    .restart local v0    # "speech":Lcom/iflytek/framework/plugin/interfaces/speech/ISpeechAbility;
    :cond_2
    const-string/jumbo v1, "SPEECH_PluginProxy"

    const-string/jumbo v2, "onPluginEnabled will chek lexicon."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Ljx;->d()V

    .line 77
    invoke-direct {p0}, Ljx;->e()V

    goto :goto_0
.end method
