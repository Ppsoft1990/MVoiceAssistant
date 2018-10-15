.class public final Lcom/iflytek/framework/business/components/AuthComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "AuthComponents.java"

# interfaces
.implements Lnd;


# static fields
.field private static final DEFAULT_AUTH:I = 0x0

.field private static final FORCE_AUTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Business_AuthComponents"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 4
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 101
    const-string/jumbo v1, "Business_AuthComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthError errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v1

    const-string/jumbo v2, "onAuthError"

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/iflytek/framework/business/components/AuthComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_AuthComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 3
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 92
    const-string/jumbo v0, "Business_AuthComponents"

    const-string/jumbo v1, "onAuthResult"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    const-string/jumbo v1, "onAuthResult"

    .line 95
    invoke-virtual {p3}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/business/components/AuthComponents;->parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 39
    const-string/jumbo v3, "Business_AuthComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onExec action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " params = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "authParam":Ljava/lang/String;
    const/4 v0, 0x0

    .line 44
    .local v0, "authFlag":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 45
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    :cond_0
    const-string/jumbo v3, "startAuth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    if-ne v0, v6, :cond_1

    .line 53
    invoke-static {}, Lmz;->f()V

    .line 56
    :cond_1
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->isMobileConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    invoke-static {}, Lmz;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    sget-object v5, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v3, v4, v5, p0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Lcom/iflytek/common/cmccauth/log/AuthScene;Lnd;)V

    .line 79
    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 63
    :cond_3
    const-string/jumbo v3, "startAuthUI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 65
    if-ne v0, v6, :cond_4

    .line 66
    invoke-static {}, Lmz;->f()V

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    sget-object v5, Lcom/iflytek/common/cmccauth/log/AuthScene;->BACKGROUND_HOME_START:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v6, ""

    .line 68
    invoke-virtual {v4, v3, p0, v5, v6}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string/jumbo v3, "isAuthStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "authStart"

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AuthComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 74
    invoke-static {v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b()Z

    move-result v4

    .line 74
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    new-instance v3, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v4, "OK"

    invoke-direct {v3, v4, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 84
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
