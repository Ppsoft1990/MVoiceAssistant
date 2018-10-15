.class public Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;
.super Ljava/lang/Object;
.source "LocalBusinessWebView.java"

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string/jumbo v13, "LocalBusinessView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "exec start, aciton is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,args is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, "args":Lorg/json/JSONArray;
    const-string/jumbo v13, "removeViewForJs"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 492
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 493
    .local v12, "viewId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v13, v12}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v12    # "viewId":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v13, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v13}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    .end local v1    # "args":Lorg/json/JSONArray;
    :goto_1
    return-object v13

    .line 494
    .restart local v1    # "args":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string/jumbo v13, "toast"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 495
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 496
    .local v10, "toastText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v10, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 572
    .end local v1    # "args":Lorg/json/JSONArray;
    .end local v10    # "toastText":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 573
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "LocalBusinessView"

    const-string/jumbo v14, "exec error"

    invoke-static {v13, v14, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    new-instance v13, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v14, "JSON error"

    const-string/jumbo v15, ""

    invoke-direct {v13, v14, v15}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 497
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":Lorg/json/JSONArray;
    :cond_2
    :try_start_2
    const-string/jumbo v13, "baseXcssParseFinish"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 498
    const-string/jumbo v13, "LocalBusinessView"

    const-string/jumbo v14, "baseXcssParseFinish is callBack"

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;Z)Z

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V

    goto :goto_0

    .line 501
    :cond_3
    const-string/jumbo v13, "businessXcssParseFinish"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 502
    const-string/jumbo v13, "LocalBusinessView"

    const-string/jumbo v14, "businessXcssParseFinish is callBack"

    invoke-static {v13, v14}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;Z)Z

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V

    goto/16 :goto_0

    .line 507
    :cond_4
    const-string/jumbo v13, "getEnvironmentInfo"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 509
    const-string/jumbo v8, "../skin/theme_new/"

    .line 510
    .local v8, "skinPath":Ljava/lang/String;
    const/4 v4, 0x1

    .line 511
    .local v4, "isCmcc":Z
    new-instance v13, Lazg;

    invoke-direct {v13}, Lazg;-><init>()V

    invoke-virtual {v13}, Lazg;->b()I

    move-result v2

    .line 513
    .local v2, "cpuCount":I
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 514
    .local v7, "object":Lorg/json/JSONObject;
    const-string/jumbo v13, "skinPath"

    invoke-virtual {v7, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v13, "isCmcc"

    invoke-virtual {v7, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v13, "cpuCount"

    invoke-virtual {v7, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 517
    new-instance v13, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v14, "OK"

    invoke-direct {v13, v14, v7}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    .line 520
    .end local v2    # "cpuCount":I
    .end local v4    # "isCmcc":Z
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "skinPath":Ljava/lang/String;
    :cond_5
    const-string/jumbo v13, "openUrl"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 521
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 522
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Lazo;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    .end local v11    # "url":Ljava/lang/String;
    :cond_6
    const-string/jumbo v13, "startCall"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 524
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 525
    .local v9, "tel":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "nam":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 527
    .local v5, "isDefault":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_7

    .line 528
    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6, v9}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v13, "true"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 531
    const-string/jumbo v13, "LocalBusinessView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "----->>isDefault: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v13

    const-string/jumbo v14, "FD02019"

    invoke-virtual {v13, v14}, Labu;->a(Ljava/lang/String;)V

    .line 538
    :cond_7
    :goto_2
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v13

    invoke-virtual {v13, v9}, Lgx;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_8
    const-string/jumbo v13, "false"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 534
    const-string/jumbo v13, "LocalBusinessView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "----->>isDefault: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v13

    const-string/jumbo v14, "FD02020"

    invoke-virtual {v13, v14}, Labu;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 567
    .end local v5    # "isDefault":Ljava/lang/String;
    .end local v6    # "nam":Ljava/lang/String;
    .end local v9    # "tel":Ljava/lang/String;
    :cond_9
    const-string/jumbo v13, "showMockDialog"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$a;->a:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v13}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->c(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lazp;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 569
    :cond_a
    const-string/jumbo v13, "startTranslation"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 570
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 587
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 582
    return-void
.end method
