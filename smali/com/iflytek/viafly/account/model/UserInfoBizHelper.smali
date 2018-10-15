.class public Lcom/iflytek/viafly/account/model/UserInfoBizHelper;
.super Lvx;
.source "UserInfoBizHelper.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;
    .param p3, "listener"    # Lyn;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 27
    const-string/jumbo v0, "UserInfoBizHelper"

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->setNeedGZip(Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lyn;

    .prologue
    .line 30
    const-string/jumbo v0, "http://ydclient.voicecloud.cn/traffdisp/do?c=1122"

    invoke-direct {p0, p1, v0, p2}, Lvx;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    .line 27
    const-string/jumbo v0, "UserInfoBizHelper"

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->setNeedGZip(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;)J
    .locals 5
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v2, "UserInfoBizHelper"

    const-string/jumbo v3, "sendRequest() "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .local v1, "paramElement":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :try_start_0
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    const-string/jumbo v2, "1122"

    const/16 v3, 0x5b

    const-string/jumbo v4, "3.0"

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "UserInfoBizHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateUserInfoRequest(Lcom/iflytek/viafly/account/entity/User;)J
    .locals 6
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    .line 64
    const-string/jumbo v3, "UserInfoBizHelper"

    const-string/jumbo v4, "sendRequest() "

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v2, "paramElement":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 69
    const-string/jumbo v3, "UserInfoBizHelper"

    const-string/jumbo v4, "sendRequest fail"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-wide/16 v4, -0x1

    .line 82
    :goto_0
    return-wide v4

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->isVoicePrintPasswordSetted()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 76
    .local v1, "hasVoicePrint":I
    :goto_1
    const-string/jumbo v3, "hasvoiceprint"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "hasVoicePrint":I
    :goto_2
    const-string/jumbo v3, "1121"

    const/16 v4, 0x5c

    const-string/jumbo v5, "3.0"

    invoke-virtual {p0, v3, v4, v2, v5}, Lcom/iflytek/viafly/account/model/UserInfoBizHelper;->sendRequest(Ljava/lang/String;ILorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Lorg/json/JSONException;
    const-string/jumbo v3, "UserInfoBizHelper"

    const-string/jumbo v4, "add json exception"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
