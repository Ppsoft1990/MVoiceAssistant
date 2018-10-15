.class public Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;
.super Lvx;
.source "HotEventRequest.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 15
    const-string/jumbo v0, "HolidayRequest"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;)J
    .locals 5
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string/jumbo v2, "HolidayRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRequest() , ids is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v1, "paramElement":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "ids"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;->setNeedGZip(Z)V

    .line 32
    const-string/jumbo v2, "1019"

    const/16 v3, 0x4b

    invoke-virtual {p0, v2, v3, v1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventRequest;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;)J

    move-result-wide v2

    return-wide v2

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v2, "HolidayRequest"

    const-string/jumbo v3, "add json exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
