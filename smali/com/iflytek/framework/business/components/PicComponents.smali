.class public Lcom/iflytek/framework/business/components/PicComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "PicComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_PicComponents"


# instance fields
.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private mChooseResultListener:Lazd$a;

.field private mUploadResultListener:Lazd$a;

.field private picChooseManager:Lazr;

.field private picUploadManager:Lazs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 125
    new-instance v0, Lcom/iflytek/framework/business/components/PicComponents$2;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/PicComponents$2;-><init>(Lcom/iflytek/framework/business/components/PicComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->mUploadResultListener:Lazd$a;

    .line 174
    new-instance v0, Lcom/iflytek/framework/business/components/PicComponents$3;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/PicComponents$3;-><init>(Lcom/iflytek/framework/business/components/PicComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->mChooseResultListener:Lazd$a;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/PicComponents;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/PicComponents;->onSynthesisPicResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/PicComponents;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/PicComponents;->onUploadPicResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/components/PicComponents;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/PicComponents;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/business/components/PicComponents;->onChoosePicResult(ILjava/lang/String;)V

    return-void
.end method

.method private onChoosePicResult(ILjava/lang/String;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v5, "Business_PicComponents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onChoosePicResult errorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 225
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "choosePic"

    invoke-virtual {p0, v5}, Lcom/iflytek/framework/business/components/PicComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string/jumbo v5, "Business_PicComponents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onChoosePicResult callbackID  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string/jumbo v5, "callbackId"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v5, "errorCode"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 231
    const-string/jumbo v5, "localIds"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    new-instance v5, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v6, "OK"

    invoke-direct {v5, v6, v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/iflytek/framework/business/components/PicComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 238
    return-void

    .line 232
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Business_PicComponents"

    const-string/jumbo v6, "onUploadPicResult assemble json error "

    invoke-static {v5, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onSynthesisPicResult(ILjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "localId"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string/jumbo v4, "Business_PicComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSynthesisPicResult errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 251
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "synthesisPic"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/PicComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string/jumbo v4, "Business_PicComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSynthesisPicResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v4, "localPath"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/PicComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 262
    return-void

    .line 256
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_PicComponents"

    const-string/jumbo v5, "onUploadPicResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onUploadPicResult(ILjava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "remmoteId"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v4, "Business_PicComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUploadPicResult errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 200
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "uploadPic"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/PicComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string/jumbo v4, "Business_PicComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUploadPicResult errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string/jumbo v4, "Business_PicComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUploadPicResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string/jumbo v4, "serverId"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/framework/business/components/PicComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:LXJSBridge.callbackFromNative(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\',\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->loadJavaScript(Ljava/lang/String;)V

    .line 212
    return-void

    .line 206
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_PicComponents"

    const-string/jumbo v5, "onUploadPicResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    invoke-virtual {v0, p1, p2, p3}, Lazr;->a(IILandroid/content/Intent;)V

    .line 271
    :cond_0
    return-void
.end method

.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 40
    new-instance v8, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v9, "Invalid action"

    const-string/jumbo v10, "Error"

    invoke-direct {v8, v9, v10}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v8

    .line 43
    :cond_0
    const-string/jumbo v8, "Business_PicComponents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onExec action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " params = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v8, "uploadPic"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 46
    invoke-virtual {p2, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    .local v4, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "uploadType"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 48
    .local v7, "uploadType":I
    const-string/jumbo v8, "localId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "localId":Ljava/lang/String;
    const-string/jumbo v8, "appId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v8, "Business_PicComponents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pic upload appId  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string/jumbo v8, "Business_PicComponents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pic upload type  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v8, "Business_PicComponents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pic upload localId  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v7, :cond_1

    if-ne v7, v12, :cond_5

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 54
    const-string/jumbo v8, "callbackId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "callbackId":Ljava/lang/String;
    const-string/jumbo v8, "Business_PicComponents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get callbackId  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 58
    const-string/jumbo v8, "uploadPic"

    invoke-virtual {p0, v8, v1}, Lcom/iflytek/framework/business/components/PicComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    iget-object v8, p0, Lcom/iflytek/framework/business/components/PicComponents;->picUploadManager:Lazs;

    if-nez v8, :cond_3

    .line 62
    new-instance v8, Lazs;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PicComponents;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/framework/business/components/PicComponents;->mUploadResultListener:Lazd$a;

    invoke-direct {v8, v9, v10}, Lazs;-><init>(Landroid/content/Context;Lazd$a;)V

    iput-object v8, p0, Lcom/iflytek/framework/business/components/PicComponents;->picUploadManager:Lazs;

    .line 64
    :cond_3
    iget-object v8, p0, Lcom/iflytek/framework/business/components/PicComponents;->picUploadManager:Lazs;

    invoke-virtual {v8, v7, v3, v0}, Lazs;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "callbackId":Ljava/lang/String;
    .end local v3    # "localId":Ljava/lang/String;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v7    # "uploadType":I
    :cond_4
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 65
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v3    # "localId":Ljava/lang/String;
    .restart local v4    # "object":Lorg/json/JSONObject;
    .restart local v7    # "uploadType":I
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 66
    const v8, 0x35b62

    const-string/jumbo v9, ""

    invoke-direct {p0, v8, v9}, Lcom/iflytek/framework/business/components/PicComponents;->onUploadPicResult(ILjava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_6
    const v8, 0x35b63

    const-string/jumbo v9, ""

    invoke-direct {p0, v8, v9}, Lcom/iflytek/framework/business/components/PicComponents;->onUploadPicResult(ILjava/lang/String;)V

    goto :goto_1

    .line 70
    .end local v0    # "appId":Ljava/lang/String;
    .end local v3    # "localId":Ljava/lang/String;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v7    # "uploadType":I
    :cond_7
    const-string/jumbo v8, "choosePic"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 71
    invoke-virtual {p2, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 72
    .restart local v4    # "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "count"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 74
    .local v2, "count":I
    if-ne v2, v12, :cond_a

    .line 75
    const-string/jumbo v8, "callbackId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "callbackId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 78
    const-string/jumbo v8, "choosePic"

    invoke-virtual {p0, v8, v1}, Lcom/iflytek/framework/business/components/PicComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_8
    iget-object v8, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    if-nez v8, :cond_9

    .line 83
    new-instance v8, Lazr;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PicComponents;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/framework/business/components/PicComponents;->mChooseResultListener:Lazd$a;

    invoke-direct {v8, v9, v10}, Lazr;-><init>(Landroid/content/Context;Lazd$a;)V

    iput-object v8, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    .line 85
    :cond_9
    iget-object v8, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    invoke-virtual {v8}, Lazr;->a()V

    goto :goto_1

    .line 88
    .end local v1    # "callbackId":Ljava/lang/String;
    :cond_a
    const v8, 0x33451

    const-string/jumbo v9, ""

    invoke-direct {p0, v8, v9}, Lcom/iflytek/framework/business/components/PicComponents;->onChoosePicResult(ILjava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v2    # "count":I
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_b
    const-string/jumbo v8, "synthesisPic"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 91
    invoke-virtual {p2, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 92
    .restart local v4    # "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "original"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "original":Ljava/lang/String;
    const-string/jumbo v8, "translated"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "translated":Ljava/lang/String;
    const-string/jumbo v8, "callbackId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "callbackId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 97
    const-string/jumbo v8, "synthesisPic"

    invoke-virtual {p0, v8, v1}, Lcom/iflytek/framework/business/components/PicComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/PicComponents;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/iflytek/framework/business/components/PicComponents$1;

    invoke-direct {v9, p0}, Lcom/iflytek/framework/business/components/PicComponents$1;-><init>(Lcom/iflytek/framework/business/components/PicComponents;)V

    invoke-static {v8, v5, v6, v9}, Lbad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbad$a;)V

    goto/16 :goto_1

    .line 113
    :cond_d
    const v8, 0x3a982

    const-string/jumbo v9, ""

    invoke-direct {p0, v8, v9}, Lcom/iflytek/framework/business/components/PicComponents;->onSynthesisPicResult(ILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 122
    iput-object p2, p0, Lcom/iflytek/framework/business/components/PicComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .line 123
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    const-string/jumbo v0, "Business_PicComponents"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->picUploadManager:Lazs;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->picUploadManager:Lazs;

    invoke-virtual {v0}, Lazs;->a()V

    .line 280
    iput-object v2, p0, Lcom/iflytek/framework/business/components/PicComponents;->picUploadManager:Lazs;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    invoke-virtual {v0}, Lazr;->b()V

    .line 286
    iput-object v2, p0, Lcom/iflytek/framework/business/components/PicComponents;->picChooseManager:Lazr;

    .line 288
    :cond_1
    return-void
.end method
