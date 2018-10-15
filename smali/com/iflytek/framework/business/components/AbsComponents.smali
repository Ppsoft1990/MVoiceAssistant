.class public abstract Lcom/iflytek/framework/business/components/AbsComponents;
.super Ljava/lang/Object;
.source "AbsComponents.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_Components"


# instance fields
.field private mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mCallbackIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addCallbackId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mCallbackIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mCallbackIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method

.method public final destroyComponents()V
    .locals 3

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AbsComponents;->onRelease()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_Components"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const-string/jumbo v3, "Business_Components"

    const-string/jumbo v4, "exec action is empty"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-object v2

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "args":Lorg/json/JSONArray;
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/framework/business/components/AbsComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 71
    .end local v0    # "args":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Business_Components"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-object v0
.end method

.method protected getCallbackId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mCallbackIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mCallbackIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getComponentHandler()Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mHandler:Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 59
    return-void
.end method

.method public initComponents(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mContext:Landroid/content/Context;

    .line 43
    :cond_0
    iput-object p2, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mBrowserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 44
    new-instance v0, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;-><init>(Lcom/iflytek/framework/business/components/AbsComponents;Lcom/iflytek/framework/business/components/AbsComponents$1;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mHandler:Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mCallbackIdMap:Ljava/util/HashMap;

    .line 46
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/iflytek/framework/business/components/AbsComponents;->onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    .line 47
    return-void
.end method

.method public onBeforePageLoad(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public abstract onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public onHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 155
    return-void
.end method

.method public abstract onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public parseJsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsMethod"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "Business_Components"

    const-string/jumbo v2, "parseJsCallback jsMethod is empty"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    invoke-static {p2}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected sendHandlerMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mHandler:Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mHandler:Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 97
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AbsComponents;->mHandler:Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;

    invoke-virtual {v1, v0}, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
