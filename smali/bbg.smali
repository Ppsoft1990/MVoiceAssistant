.class public Lbbg;
.super Ljava/lang/Object;
.source "GlobalRingManager.java"


# static fields
.field private static d:Lbbg;


# instance fields
.field public a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field public b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field public c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lbbg;->b()V

    .line 40
    return-void
.end method

.method public static a()Lbbg;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lbbg;->d:Lbbg;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lbbg;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lbbg;->d:Lbbg;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lbbg;

    invoke-direct {v0}, Lbbg;-><init>()V

    sput-object v0, Lbbg;->d:Lbbg;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lbbg;->d:Lbbg;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 117
    iput-object p1, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 118
    if-nez p1, :cond_0

    .line 119
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MORNING_VOICE_ROLE_USAGE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MORNING_VOICE_ROLE_USAGE"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_NIGHT_VOICE_ROLE_USAGE"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "nightString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    new-instance v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    iput-object v4, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 48
    iget-object v4, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V

    .line 50
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_MORNING_VOICE_ROLE_USAGE"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "morningString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    new-instance v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    iput-object v4, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 53
    iget-object v4, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V

    .line 55
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_CALL_VOICE_ROLE_USAGE"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "callString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    new-instance v4, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;-><init>()V

    iput-object v4, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 58
    iget-object v4, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "callString":Ljava/lang/String;
    .end local v2    # "morningString":Ljava/lang/String;
    .end local v3    # "nightString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "GlobalRingManager"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 126
    iput-object p1, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NIGHT_VOICE_ROLE_USAGE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NIGHT_VOICE_ROLE_USAGE"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 76
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lbbg;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 3
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 136
    iput-object p1, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_VOICE_ROLE_USAGE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_CALL_VOICE_ROLE_USAGE"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->u()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 93
    :goto_0
    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lbbg;->b:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lbbg;->c:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0}, Lbbi;->d()Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    move-result-object v0

    goto :goto_0
.end method
