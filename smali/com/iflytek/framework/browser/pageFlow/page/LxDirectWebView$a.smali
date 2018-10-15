.class public Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;
.super Ljava/lang/Object;
.source "LxDirectWebView.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 148
    iget-object v8, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v8}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exec start, aciton is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,args is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    const-string/jumbo v8, "getEnvironmentInfo"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 154
    const-string/jumbo v7, "../skin/theme_new/"

    .line 155
    .local v7, "skinPath":Ljava/lang/String;
    const/4 v3, 0x1

    .line 156
    .local v3, "isCmcc":Z
    new-instance v8, Lazg;

    invoke-direct {v8}, Lazg;-><init>()V

    invoke-virtual {v8}, Lazg;->b()I

    move-result v0

    .line 158
    .local v0, "cpuCount":I
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "skinPath"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string/jumbo v8, "isCmcc"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    const-string/jumbo v8, "cpuCount"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    new-instance v8, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v10, "OK"

    invoke-direct {v8, v10, v6}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 182
    .end local v0    # "cpuCount":I
    .end local v3    # "isCmcc":Z
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "skinPath":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 163
    :cond_0
    const-string/jumbo v8, "addWebViewForLocation"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 164
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, "ja":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 166
    .local v5, "jo":Lorg/json/JSONObject;
    new-instance v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;

    invoke-direct {v2}, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;-><init>()V

    .line 167
    .local v2, "info":Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    const-string/jumbo v8, "mTextSearchMode"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mTextSearchMode:Z

    .line 168
    const-string/jumbo v8, "mIsVoiceResult"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mIsVoiceResult:Z

    .line 169
    const-string/jumbo v8, "mSpeechText"

    const-string/jumbo v10, ""

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mSpeechText:Ljava/lang/String;

    .line 170
    const-string/jumbo v8, "mRawText"

    const-string/jumbo v10, ""

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mRawText:Ljava/lang/String;

    .line 171
    const-string/jumbo v8, "mUrl"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    .line 172
    iget-object v8, v2, Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 173
    iget-object v8, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v8}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "open url is null or empty"

    invoke-static {v8, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 174
    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v8

    iget-object v10, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-virtual {v8, v10, v2}, Lqh;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "info":Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;
    .end local v4    # "ja":Lorg/json/JSONArray;
    .end local v5    # "jo":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move-object v8, v9

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v8}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "exec error"

    invoke-static {v8, v10, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
