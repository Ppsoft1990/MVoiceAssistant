.class Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;
.super Ljava/lang/Object;
.source "CategoryManagerEditActivity.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 233
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 234
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 239
    const-string/jumbo v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "result_code":Ljava/lang/String;
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "000000"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-static {v5, v1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->access$000(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;Lorg/json/JSONObject;)V

    .line 244
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->access$100(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->access$200(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 245
    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->access$200(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "result_code":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;->this$0:Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    invoke-virtual {v6}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1$1;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1$1;-><init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void

    .line 251
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "CategoryManagerEditActivity"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
