.class Lcom/iflytek/framework/business/components/ShareComponents$3;
.super Ljava/lang/Object;
.source "ShareComponents.java"

# interfaces
.implements Lno$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/ShareComponents;->handleDownloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/ShareComponents;

.field final synthetic val$imgWebUrl:Ljava/lang/String;

.field final synthetic val$isParamsUnified:Z

.field final synthetic val$isTimeLine:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$shareFrom:Ljava/lang/String;

.field final synthetic val$shareText:Ljava/lang/String;

.field final synthetic val$shareTitle:Ljava/lang/String;

.field final synthetic val$shareUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/ShareComponents;Landroid/app/ProgressDialog;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/ShareComponents;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$imgWebUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$isParamsUnified:Z

    iput-object p5, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareText:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareFrom:Ljava/lang/String;

    iput-object p9, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$packageName:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$isTimeLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadError(ILandroid/content/Intent;)V
    .locals 10
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 493
    const-string/jumbo v0, "Business_ShareComponents"

    const-string/jumbo v1, "downloadError called"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 496
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$imgWebUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lno;->d(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v1, "Business_ShareComponents"

    invoke-virtual {v0, v1}, Lno;->a(Ljava/lang/String;)V

    .line 498
    iget-boolean v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$isParamsUnified:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    iget-object v1, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareText:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareFrom:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/iflytek/framework/business/components/ShareComponents;->access$100(Lcom/iflytek/framework/business/components/ShareComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareTitle:Ljava/lang/String;

    iget-object v8, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareText:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$isTimeLine:Z

    invoke-static/range {v3 .. v9}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 16
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 441
    if-nez p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 446
    .local v15, "type":I
    const/16 v1, 0x16

    if-ne v15, v1, :cond_0

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 451
    .local v11, "action":Ljava/lang/String;
    const-string/jumbo v1, "Business_ShareComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "downloadStatusChanged, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.finished"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const-string/jumbo v1, "Business_ShareComponents"

    const-string/jumbo v2, "onCancel called"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 457
    const-string/jumbo v1, "file_path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "filePath":Ljava/lang/String;
    const-string/jumbo v1, "Business_ShareComponents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-static {v1}, Lcom/iflytek/framework/business/components/ShareComponents;->access$200(Lcom/iflytek/framework/business/components/ShareComponents;)Ljava/lang/String;

    move-result-object v12

    .line 463
    .local v12, "cacheImgPath":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    invoke-static {v12}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 467
    :cond_2
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v14, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "imgWebUrl"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$imgWebUrl:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v1, "localImgPath"

    invoke-virtual {v14, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SHARE_IMG_SAVE"

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$imgWebUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lno;->d(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v1

    const-string/jumbo v2, "Business_ShareComponents"

    invoke-virtual {v1, v2}, Lno;->a(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$isParamsUnified:Z

    if-eqz v1, :cond_3

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareFrom:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/iflytek/framework/business/components/ShareComponents;->access$100(Lcom/iflytek/framework/business/components/ShareComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :catch_0
    move-exception v13

    .line 474
    .local v13, "e":Lorg/json/JSONException;
    const-string/jumbo v1, "Business_ShareComponents"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v13}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 484
    .end local v13    # "e":Lorg/json/JSONException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$shareText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/iflytek/framework/business/components/ShareComponents$3;->val$isTimeLine:Z

    invoke-static/range {v4 .. v10}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    .line 436
    return-void
.end method
