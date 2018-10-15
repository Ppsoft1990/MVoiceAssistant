.class public Lajt;
.super Lvx;
.source "CityWeatherFutureHelper.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 22
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/vaclient/do?c=1107"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 19
    const-string/jumbo v0, "CityWeatherFutureHelper"

    iput-object v0, p0, Lajt;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 27
    const-string/jumbo v1, "CityWeatherFutureHelper"

    const-string/jumbo v2, "requestFutureWeather: "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v0, "paramElement":Lorg/json/JSONObject;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lajt;->setNeedGZip(Z)V

    .line 31
    const-string/jumbo v1, "1107"

    const/16 v2, 0x7c

    const-string/jumbo v3, "3.0"

    invoke-virtual {p0, v1, v2, v0, v3}, Lajt;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method
