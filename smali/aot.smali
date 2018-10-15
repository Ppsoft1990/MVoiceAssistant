.class public Laot;
.super Lvx;
.source "SMSCollectUploader.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/String;

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:Ljava/lang/String;

.field final n:Ljava/lang/String;

.field final o:Ljava/lang/String;

.field private p:Landroid/content/Context;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lwd;)V
    .locals 2
    .param p1, "cParam"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lwd;

    .prologue
    .line 57
    invoke-direct {p0, p2}, Lvx;-><init>(Landroid/content/Context;)V

    .line 31
    const-string/jumbo v0, "aid"

    iput-object v0, p0, Laot;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "pver"

    iput-object v0, p0, Laot;->b:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "apn"

    iput-object v0, p0, Laot;->c:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "imei"

    iput-object v0, p0, Laot;->d:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "imsi"

    iput-object v0, p0, Laot;->e:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "resolution"

    iput-object v0, p0, Laot;->f:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "userid"

    iput-object v0, p0, Laot;->g:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "sid"

    iput-object v0, p0, Laot;->h:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "version"

    iput-object v0, p0, Laot;->i:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "osid"

    iput-object v0, p0, Laot;->j:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "msgcontent"

    iput-object v0, p0, Laot;->k:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "reqphone"

    iput-object v0, p0, Laot;->l:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "respphone"

    iput-object v0, p0, Laot;->m:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "sendtime"

    iput-object v0, p0, Laot;->n:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "recievetime"

    iput-object v0, p0, Laot;->o:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Laot;->p:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Laot;->q:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://ydclient.voicecloud.cn/flowwallet/do?c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laot;->setServerUrl(Ljava/lang/String;)V

    .line 63
    new-instance v0, Laot$1;

    invoke-direct {v0, p0, p3}, Laot$1;-><init>(Laot;Lwd;)V

    invoke-virtual {p0, v0}, Laot;->setOperationListener(Lyn;)V

    .line 79
    return-void
.end method


# virtual methods
.method public a(Laor;)J
    .locals 10
    .param p1, "data"    # Laor;

    .prologue
    .line 86
    const-string/jumbo v0, "SMSCollectUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u77ed\u4fe1\u4e0a\u4f20\u5f00\u59cb!\u4e0a\u4f20\u5185\u5bb9:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Laor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Laot;->p:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v6

    .line 88
    .local v6, "config":Lcom/iflytek/yd/business/AppConfig;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v3, "baseNode":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v4, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "aid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getBlcAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v0, "pver"

    const-string/jumbo v1, "1.0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v0, "apn"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v0, "imei"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "imsi"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v0, "resolution"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v0, "userid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "sid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "version"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "osid"

    invoke-virtual {v6}, Lcom/iflytek/yd/business/AppConfig;->getOSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v0, "msgcontent"

    invoke-virtual {p1}, Laor;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v0, "reqphone"

    invoke-virtual {p1}, Laor;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v0, "respphone"

    invoke-virtual {p1}, Laor;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v0, "sendtime"

    invoke-virtual {p1}, Laor;->d()J

    move-result-wide v8

    invoke-virtual {v4, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v0, "recievetime"

    invoke-virtual {p1}, Laor;->e()J

    move-result-wide v8

    invoke-virtual {v4, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v1, p0, Laot;->q:Ljava/lang/String;

    const/16 v2, 0x47

    const-string/jumbo v5, "3.0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Laot;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 107
    :catch_0
    move-exception v7

    .line 108
    .local v7, "ex":Lorg/json/JSONException;
    const-string/jumbo v0, "SMSCollectUploader"

    const-string/jumbo v1, "add json exception"

    invoke-static {v0, v1, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
