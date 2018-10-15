.class public final Lpw;
.super Ljava/lang/Object;
.source "SpeechTestLog.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/text/SimpleDateFormat;

.field private k:Landroid/content/Context;

.field private l:Lhl;

.field private m:Lcom/iflytek/yd/business/AppConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lpw;->j:Ljava/text/SimpleDateFormat;

    .line 48
    iput-object p1, p0, Lpw;->k:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lpw;->l:Lhl;

    .line 50
    iget-object v0, p0, Lpw;->l:Lhl;

    invoke-virtual {v0}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    .line 51
    return-void
.end method

.method private d(J)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 129
    const-string/jumbo v1, ""

    .line 131
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lpw;->j:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 132
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lpw;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lpw;->a:J

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lpw;->d:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lpw;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lpw;->b:J

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lpw;->e:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lpw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 1
    .param p1, "recordTime"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lpw;->c:J

    .line 75
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lpw;->f:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lpw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mscId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lpw;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lpw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lpw;->h:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lpw;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "engineType"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lpw;->i:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lpw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lpw;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lpw;->l:Lhl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    if-eqz v3, :cond_0

    .line 141
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "ua"

    iget-object v4, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string/jumbo v3, "imei"

    iget-object v4, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v3, "imsi"

    iget-object v4, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v3, "apn"

    iget-object v4, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getApnType()Lcom/iflytek/yd/system/ApnAccessorType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/yd/system/ApnAccessorType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v3, "version"

    iget-object v4, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v3, "df"

    iget-object v4, p0, Lpw;->m:Lcom/iflytek/yd/business/AppConfig;

    invoke-virtual {v4}, Lcom/iflytek/yd/business/AppConfig;->getDownloadFromId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v3, "starttime"

    invoke-virtual {p0}, Lpw;->a()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lpw;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v3, "endtime"

    invoke-virtual {p0}, Lpw;->b()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lpw;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v3, "recordtime"

    iget-wide v4, p0, Lpw;->c:J

    iget-wide v6, p0, Lpw;->a:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v3, "enginetype"

    invoke-virtual {p0}, Lpw;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v3, "result"

    invoke-virtual {p0}, Lpw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v3, "state"

    invoke-virtual {p0}, Lpw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v3, "errorcode"

    invoke-virtual {p0}, Lpw;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v3, "mscid"

    invoke-virtual {p0}, Lpw;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v3, "bfocus"

    invoke-virtual {p0}, Lpw;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 163
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
