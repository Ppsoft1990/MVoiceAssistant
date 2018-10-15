.class public Ljb;
.super Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;
.source "TtsMscConfig.java"


# static fields
.field private static a:Ljb;

.field private static b:Ljh;

.field private static c:Lir;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/iflytek/yd/speech/msc/interfaces/MscConfig;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljh;

    invoke-direct {v0}, Ljh;-><init>()V

    sput-object v0, Ljb;->b:Ljh;

    .line 83
    sget-object v0, Ljb;->b:Ljh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljh;->a(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    iput-object v0, p0, Ljb;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    .line 85
    return-void
.end method

.method public static a()Ljb;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Ljb;->a:Ljb;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljb;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Ljb;->a:Ljb;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljb;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljb;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljb;->a:Ljb;

    .line 73
    :cond_0
    sget-object v0, Ljb;->a:Ljb;

    return-object v0
.end method

.method public static a(Lir;)V
    .locals 0
    .param p0, "info"    # Lir;

    .prologue
    .line 204
    sput-object p0, Ljb;->c:Lir;

    .line 205
    return-void
.end method

.method public static a(Ljh;)V
    .locals 0
    .param p0, "ttsParam"    # Ljh;

    .prologue
    .line 196
    sput-object p0, Ljb;->b:Ljh;

    .line 197
    return-void
.end method


# virtual methods
.method public getInitParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 101
    iget-object v1, p0, Ljb;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/iflytek/yd/business/AppConfig;

    iget-object v2, p0, Ljb;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iflytek/yd/business/AppConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljb;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    .line 103
    iget-object v1, p0, Ljb;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    iget-object v2, p0, Ljb;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/iflytek/yd/business/AppConfig;->init(Landroid/content/Context;)V

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "params":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "wap_proxy"

    iget-object v2, p0, Ljb;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v2}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v1, "vad_enable"

    const-string/jumbo v2, "false"

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "auth"

    const-string/jumbo v2, "1"

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "usr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljb;->mAppConfig:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v3}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "appid"

    invoke-static {v0, v1, p1}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "server_url"

    invoke-virtual {p0}, Ljb;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "timeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "search_best_url"

    const-string/jumbo v2, "false"

    invoke-static {v0, v1, v2}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "http://lingxi.openspeech.cn/msp.do"

    return-object v0
.end method

.method public getSessionParam(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "asrParam"    # Ljava/lang/String;
    .param p2, "sampleRate"    # I

    .prologue
    const/4 v6, 0x1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, "params":Ljava/lang/StringBuilder;
    sget-object v4, Ljb;->b:Ljh;

    invoke-virtual {v4}, Ljh;->l()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "engineType":Ljava/lang/String;
    sget-object v4, Ljb;->b:Ljh;

    invoke-virtual {v4}, Ljh;->d()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "role":Ljava/lang/String;
    sget-object v4, Ljb;->b:Ljh;

    invoke-virtual {v4}, Ljh;->p()I

    move-result v0

    .line 130
    .local v0, "engine":I
    if-ne v6, v0, :cond_2

    .line 131
    const-string/jumbo v4, "ent"

    const-string/jumbo v5, "x"

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    const-string/jumbo v4, "vcn"

    invoke-static {v2, v4, v3}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v4, "ja-jp"

    sget-object v5, Ljb;->b:Ljh;

    invoke-virtual {v5}, Ljh;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ko-kr"

    sget-object v5, Ljb;->b:Ljh;

    .line 151
    invoke-virtual {v5}, Ljh;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "es-es"

    sget-object v5, Ljb;->b:Ljh;

    .line 152
    invoke-virtual {v5}, Ljh;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "fr-fr"

    sget-object v5, Ljb;->b:Ljh;

    .line 153
    invoke-virtual {v5}, Ljh;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    :cond_0
    const-string/jumbo v4, "server_url"

    const-string/jumbo v5, "http://dz-lx.xf-yun.com/VocAsit.htm"

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v4, "text_encoding"

    const-string/jumbo v5, "unicode"

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_1
    const-string/jumbo v4, "spd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljb;->b:Ljh;

    invoke-virtual {v6}, Ljh;->f()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v4, "vol"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljb;->b:Ljh;

    invoke-virtual {v6}, Ljh;->h()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v4, "auf"

    const-string/jumbo v5, "audio/L16;rate=16000"

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v4, "rdn"

    sget-object v5, Ljb;->b:Ljh;

    invoke-virtual {v5}, Ljh;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v4, Ljb;->c:Lir;

    if-eqz v4, :cond_1

    .line 182
    const-string/jumbo v4, "caller.pkg"

    sget-object v5, Ljb;->c:Lir;

    iget-object v5, v5, Lir;->a:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v4, "caller.appid"

    sget-object v5, Ljb;->c:Lir;

    iget-object v5, v5, Lir;->c:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v4, "caller.ver.code"

    sget-object v5, Ljb;->c:Lir;

    iget-object v5, v5, Lir;->d:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 133
    :cond_2
    const-string/jumbo v4, "ent"

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_3
    if-ne v6, v0, :cond_4

    .line 159
    const-string/jumbo v4, "server_url"

    const-string/jumbo v5, "http://dz-lx.xf-yun.com/VocAsit.htm"

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    :cond_4
    const-string/jumbo v4, "server_url"

    invoke-virtual {p0}, Ljb;->getServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lja;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
