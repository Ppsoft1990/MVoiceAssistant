.class public Lcom/iflytek/viafly/browser/BrowserComponentsMgr;
.super Ljava/lang/Object;
.source "BrowserComponentsMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserComponentsMgr"


# instance fields
.field private mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webview"    # Landroid/webkit/WebView;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;-><init>(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    .line 31
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v7

    .line 75
    :cond_1
    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "iflytek:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 76
    new-instance v1, Lorg/json/JSONArray;

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "serviceName":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    move-object v4, p2

    .line 81
    .local v4, "jsonArgs":Ljava/lang/String;
    iget-object v9, p0, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v9, v6, v0, v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "execResult":Ljava/lang/String;
    const-string/jumbo v9, "BrowserComponentsMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "web request end, result is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "OK"

    const-string/jumbo v10, "code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 87
    invoke-virtual {p3, v3}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 88
    goto :goto_0

    .line 91
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "execResult":Ljava/lang/String;
    .end local v4    # "jsonArgs":Ljava/lang/String;
    .end local v5    # "resultJson":Lorg/json/JSONObject;
    .end local v6    # "serviceName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "BrowserComponentsMgr"

    const-string/jumbo v9, "exec error"

    invoke-static {v8, v9, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->onDestroy()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    .line 60
    return-void
.end method

.method public registerComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "components"    # Lcom/iflytek/mmp/core/componentsManager/Components;

    .prologue
    .line 40
    const-string/jumbo v0, "BrowserComponentsMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerComponents, serviceName is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->addComponents(Ljava/lang/String;Lcom/iflytek/mmp/core/componentsManager/Components;)V

    .line 42
    return-void
.end method

.method public unRegisterComponents(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "BrowserComponentsMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterComponents, serviceName is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponentsMgr;->mComponentsManager:Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;

    invoke-virtual {v0, p1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsManager;->removeComponents(Ljava/lang/String;)V

    .line 52
    return-void
.end method
