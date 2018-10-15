.class public final Lcom/iflytek/framework/business/components/ShareComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "ShareComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;
    }
.end annotation


# static fields
.field private static final MSG_SHARE_ERROR:I = 0x1

.field private static final MSG_SHARE_SUCCESS:I = 0x2

.field public static final SHARE_URL:Ljava/lang/String; = "http://a.app.qq.com/o/simple.jsp?pkgname=com.iflytek.cmcc&g_f=991802"

.field private static final TAG:Ljava/lang/String; = "Business_ShareComponents"


# instance fields
.field private final PACKAGE_NAME:Ljava/lang/String;

.field private final PACKAGE_NAME_ITEM:Ljava/lang/String;

.field private final WX_PACKAGE_NAME:Ljava/lang/String;

.field private mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    .line 55
    const-string/jumbo v0, "packageName"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents;->PACKAGE_NAME:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "packageNameItem"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents;->PACKAGE_NAME_ITEM:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "com.tencent.mm"

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents;->WX_PACKAGE_NAME:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$1;

    invoke-direct {v0, p0}, Lcom/iflytek/framework/business/components/ShareComponents$1;-><init>(Lcom/iflytek/framework/business/components/ShareComponents;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/ShareComponents;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/ShareComponents;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/ShareComponents;->onShareResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/framework/business/components/ShareComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/ShareComponents;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/iflytek/framework/business/components/ShareComponents;->callShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/framework/business/components/ShareComponents;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/ShareComponents;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getCacheLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "shareFrom"    # Ljava/lang/String;
    .param p5, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 363
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-virtual {v0, p3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 364
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lazu;->a(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 365
    return-void
.end method

.method private getCacheImgPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmccIFLY_SHARE_IMG_SAVE"

    invoke-virtual {v7, v8}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "imgCacheInfo":Ljava/lang/String;
    if-nez v4, :cond_2

    move-object v0, v6

    .line 281
    goto :goto_0

    .line 284
    :cond_2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    .local v5, "jsonCacheInfo":Lorg/json/JSONObject;
    const-string/jumbo v7, "imgWebUrl"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "cacheWebUrl":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 288
    const-string/jumbo v7, "localImgPath"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "cacheLocalPathString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v6

    .line 290
    goto :goto_0

    .line 292
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    move-object v0, v6

    .line 297
    goto :goto_0

    .end local v0    # "cacheLocalPathString":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    move-object v0, v6

    .line 301
    goto :goto_0

    .line 303
    .end local v1    # "cacheWebUrl":Ljava/lang/String;
    .end local v5    # "jsonCacheInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v6

    .line 304
    goto :goto_0
.end method

.method private getCacheLocalPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmccIFLY_SHARE_IMG_SAVE"

    invoke-virtual {v4, v5}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "imgCacheInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    :goto_0
    return-object v0

    .line 317
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    .local v3, "jsonCacheInfo":Lorg/json/JSONObject;
    const-string/jumbo v4, "localImgPath"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    .local v0, "cacheLocalPathString":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v0    # "cacheLocalPathString":Ljava/lang/String;
    .end local v3    # "jsonCacheInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_ShareComponents"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDownloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 13
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "imgWebUrl"    # Ljava/lang/String;
    .param p3, "shareTitle"    # Ljava/lang/String;
    .param p4, "shareText"    # Ljava/lang/String;
    .param p5, "shareFrom"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "isTimeLine"    # Z
    .param p8, "isParamsUnified"    # Z

    .prologue
    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    if-eqz p8, :cond_0

    .line 396
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, p1

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/framework/business/components/ShareComponents;->callShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    move-object v1, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0300

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    const-string/jumbo v0, "Business_ShareComponents"

    const-string/jumbo v1, "SD card is not mounted -> return null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 411
    .local v2, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 412
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 413
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 414
    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$2;

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/iflytek/framework/business/components/ShareComponents$2;-><init>(Lcom/iflytek/framework/business/components/ShareComponents;Landroid/app/ProgressDialog;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 432
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v11

    const-string/jumbo v12, "Business_ShareComponents"

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$3;

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/iflytek/framework/business/components/ShareComponents$3;-><init>(Lcom/iflytek/framework/business/components/ShareComponents;Landroid/app/ProgressDialog;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v12, v0}, Lno;->a(Ljava/lang/String;Lno$c;)V

    .line 509
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 510
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v3

    const/16 v4, 0x16

    const-string/jumbo v5, "share_pic"

    const/4 v6, 0x0

    const-string/jumbo v7, "\u5206\u4eab\u56fe\u7247"

    const/4 v9, 0x0

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onShareResult(I)V
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    .line 259
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 262
    .local v0, "callbackID":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "shareToWXWithCallback"

    invoke-virtual {p0, v4}, Lcom/iflytek/framework/business/components/ShareComponents;->getCallbackId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string/jumbo v4, "Business_ShareComponents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShareResult callbackID  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string/jumbo v4, "callbackId"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    new-instance v4, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v5, "OK"

    invoke-direct {v4, v5, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;->getJSONString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getBrowserCore()Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v4

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

    .line 273
    return-void

    .line 266
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Business_ShareComponents"

    const-string/jumbo v5, "onShareResult assemble json error "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private shareToWB(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "jsonParams"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 194
    const-string/jumbo v3, "Business_ShareComponents"

    const-string/jumbo v4, "shareToWB "

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    .local v0, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "Business_ShareComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shareToWB object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 198
    .local v1, "packageArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v2, "packageObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "packageNameItem"

    const-string/jumbo v4, "com.sina.weibo"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-virtual {p0, p1, v6}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToApp(Lorg/json/JSONArray;Z)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 204
    return-void
.end method

.method private shareToWX(Lorg/json/JSONArray;Z)V
    .locals 6
    .param p1, "jsonParams"    # Lorg/json/JSONArray;
    .param p2, "isParamsUnified"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    const-string/jumbo v3, "Business_ShareComponents"

    const-string/jumbo v4, "shareToWX "

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    .local v0, "object":Lorg/json/JSONObject;
    const-string/jumbo v3, "Business_ShareComponents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shareToWX object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 180
    .local v1, "packageArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 181
    .local v2, "packageObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "packageNameItem"

    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 184
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToApp(Lorg/json/JSONArray;Z)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 186
    return-void
.end method

.method private shareToWXWithCallback(Lorg/json/JSONArray;)V
    .locals 18
    .param p1, "jsonParams"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const-string/jumbo v1, "Business_ShareComponents"

    const-string/jumbo v4, "no network error"

    invoke-static {v1, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const v1, 0x927cf

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/ShareComponents;->onShareResult(I)V

    .line 242
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 219
    .local v16, "object":Lorg/json/JSONObject;
    const-string/jumbo v1, "shareType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, "type":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 221
    const-string/jumbo v1, "isTimeLine"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 222
    .local v7, "isTimeLine":Z
    const-string/jumbo v1, "text"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string/jumbo v1, "shareUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "shareUrl":Ljava/lang/String;
    const-string/jumbo v1, "imgWebUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "imgWebUrl":Ljava/lang/String;
    const-string/jumbo v1, "shareTitle"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "shareTitle":Ljava/lang/String;
    const-string/jumbo v1, "shareText"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "shareText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "com.tencent.mm"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/framework/business/components/ShareComponents;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    invoke-static/range {v1 .. v8}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/framework/ui/share/IShareResultListener;)V

    goto :goto_0

    .line 229
    .end local v2    # "shareUrl":Ljava/lang/String;
    .end local v3    # "imgWebUrl":Ljava/lang/String;
    .end local v5    # "shareTitle":Ljava/lang/String;
    .end local v6    # "shareText":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "image"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string/jumbo v1, "imgWebUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, "imageUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, ""

    const-string/jumbo v11, "com.tencent.mm"

    const-string/jumbo v12, ""

    const-string/jumbo v13, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/framework/business/components/ShareComponents;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    move v14, v7

    invoke-static/range {v8 .. v15}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/framework/ui/share/IShareResultListener;)V

    goto/16 :goto_0

    .line 232
    .end local v10    # "imageUrl":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "local"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    const-string/jumbo v1, "imgWebUrl"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 234
    .restart local v10    # "imageUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, ""

    const-string/jumbo v11, "com.tencent.mm"

    const-string/jumbo v12, ""

    const-string/jumbo v13, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iflytek/framework/business/components/ShareComponents;->mShareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    move v14, v7

    invoke-static/range {v8 .. v15}, Lcom/iflytek/framework/ui/share/ShareUtils;->shareWithCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iflytek/framework/ui/share/IShareResultListener;)V

    goto/16 :goto_0

    .line 236
    .end local v10    # "imageUrl":Ljava/lang/String;
    :cond_3
    const v1, 0x927cc

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/ShareComponents;->onShareResult(I)V

    goto/16 :goto_0

    .line 239
    .end local v7    # "isTimeLine":Z
    :cond_4
    const v1, 0x927cc

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/ShareComponents;->onShareResult(I)V

    goto/16 :goto_0
.end method

.method private tranferShareTrigger(Ljava/lang/String;)Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;
    .locals 2
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const-string/jumbo v0, "Business_ShareComponents"

    const-string/jumbo v1, "tranferShareTrigger trigger is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->UNKOWN:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    .line 357
    :goto_0
    return-object v0

    .line 336
    :cond_0
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->APP:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->APP:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 338
    :cond_1
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->BLUETOOTH_DETECTION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->BLUETOOTH_DETECTION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 340
    :cond_2
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->DIALOG:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->DIALOG:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 342
    :cond_3
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->FLIGHT:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->FLIGHT:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 344
    :cond_4
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->LOCSEARCH:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 345
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->LOCSEARCH:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 346
    :cond_5
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->HOME:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->HOME:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 348
    :cond_6
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->TRANSLATION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 349
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->TRANSLATION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 350
    :cond_7
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->MY_MUSIC_ORDER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 351
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->MY_MUSIC_ORDER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto :goto_0

    .line 352
    :cond_8
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->WEATHER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->WEATHER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto/16 :goto_0

    .line 354
    :cond_9
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->STOCK:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 355
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->STOCK:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto/16 :goto_0

    .line 357
    :cond_a
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->UNKOWN:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonParams"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 136
    const-string/jumbo v6, "Business_ShareComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onExec action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " jsonParams = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v6, "share"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "shareContent":Ljava/lang/String;
    invoke-virtual {p2, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "shareAction":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "url":Ljava/lang/String;
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 143
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    invoke-virtual {v0, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 144
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v11}, Lazu;->a(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 165
    .end local v0    # "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .end local v3    # "shareAction":Ljava/lang/String;
    .end local v4    # "shareContent":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v11

    .line 145
    :cond_1
    const-string/jumbo v6, "shareToApp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-virtual {p0, p2, v9}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToApp(Lorg/json/JSONArray;Z)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    goto :goto_0

    .line 147
    :cond_2
    const-string/jumbo v6, "shareCallDialog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 148
    invoke-virtual {p0, p2, v10}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToApp(Lorg/json/JSONArray;Z)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v6, "shareToWX"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    invoke-direct {p0, p2, v9}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToWX(Lorg/json/JSONArray;Z)V

    goto :goto_0

    .line 151
    :cond_4
    const-string/jumbo v6, "shareToWB"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 152
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToWB(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 153
    :cond_5
    const-string/jumbo v6, "shareToWXWithCallback"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 157
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v6, "callbackId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "callbackId":Ljava/lang/String;
    const-string/jumbo v6, "Business_ShareComponents"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get callbackId  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 161
    const-string/jumbo v6, "shareToWXWithCallback"

    invoke-virtual {p0, v6, v1}, Lcom/iflytek/framework/business/components/ShareComponents;->addCallbackId(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_6
    invoke-direct {p0, p2}, Lcom/iflytek/framework/business/components/ShareComponents;->shareToWXWithCallback(Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/iflytek/framework/business/components/AbsComponents;->onHandleMessage(Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 328
    return-void
.end method

.method public shareToApp(Lorg/json/JSONArray;Z)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 26
    .param p1, "jsonParams"    # Lorg/json/JSONArray;
    .param p2, "isParamsUnified"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    const-string/jumbo v2, "Business_ShareComponents"

    const-string/jumbo v10, "shareToApp "

    invoke-static {v2, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 68
    .local v23, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "shareUrl"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "shareUrl":Ljava/lang/String;
    const-string/jumbo v2, "imgWebUrl"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "imgWebUrl":Ljava/lang/String;
    const-string/jumbo v2, "shareTitle"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "shareTitle":Ljava/lang/String;
    const-string/jumbo v2, "shareText"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "shareText":Ljava/lang/String;
    const-string/jumbo v2, "shareFrom"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "shareFrom":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 74
    .local v8, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "packageName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 75
    .local v24, "packageNameArray":Lorg/json/JSONArray;
    const-string/jumbo v2, "isTimeLine"

    const/4 v10, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 78
    .local v9, "isTimeLine":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v10, "\u5206\u4eab\u5931\u8d25"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 80
    const/4 v2, 0x0

    .line 131
    :goto_0
    return-object v2

    .line 83
    :cond_0
    if-nez p2, :cond_6

    .line 87
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string/jumbo v5, "\u7075\u7280"

    .line 92
    :cond_1
    const/16 v21, 0x0

    .line 93
    .local v21, "isSupportShare":Z
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 94
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v10, "\u8be5\u5e94\u7528\u672a\u5b89\u88c5\u6216\u4e0d\u652f\u6301\u5206\u4eab"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 95
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    :cond_3
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 98
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 99
    .local v22, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "packageNameItem"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 101
    .local v25, "temp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    move-object/from16 v8, v25

    .line 103
    const/16 v21, 0x1

    .line 109
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v25    # "temp":Ljava/lang/String;
    :cond_4
    if-nez v21, :cond_6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v10, "\u8be5\u5e94\u7528\u672a\u5b89\u88c5\u6216\u4e0d\u652f\u6301\u5206\u4eab"

    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 111
    const/4 v2, 0x0

    goto :goto_0

    .line 97
    .restart local v22    # "jsonObject":Lorg/json/JSONObject;
    .restart local v25    # "temp":Ljava/lang/String;
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 116
    .end local v20    # "i":I
    .end local v21    # "isSupportShare":Z
    .end local v22    # "jsonObject":Lorg/json/JSONObject;
    .end local v25    # "temp":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/iflytek/framework/business/components/ShareComponents;->getCacheImgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 117
    .local v15, "cacheLocalImgPathString":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, p0

    move/from16 v10, p2

    .line 119
    invoke-direct/range {v2 .. v10}, Lcom/iflytek/framework/business/components/ShareComponents;->handleDownloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 131
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v10, p0

    move-object v11, v5

    move-object v12, v6

    move-object v13, v3

    move-object v14, v7

    .line 125
    invoke-direct/range {v10 .. v15}, Lcom/iflytek/framework/business/components/ShareComponents;->callShareDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object v14, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v9

    invoke-static/range {v13 .. v19}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method
