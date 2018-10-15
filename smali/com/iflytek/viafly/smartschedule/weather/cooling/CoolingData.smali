.class public final Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;
.super Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;
.source "CoolingData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoolingData"


# instance fields
.field private mDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/viafly/smartschedule/SmartScheduleFWData;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->parseJsonData(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private parseJsonData(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "date"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setDate(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v2, "tip"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setTipText(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CoolingData"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->mDate:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "tip"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->getTipText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v2, "content"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v2, "date"

    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/weather/cooling/CoolingData;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
