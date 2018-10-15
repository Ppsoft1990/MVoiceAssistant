.class Laoi$1$1;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi$1;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi$1;


# direct methods
.method constructor <init>(Laoi$1;)V
    .locals 0
    .param p1, "this$1"    # Laoi$1;

    .prologue
    .line 131
    iput-object p1, p0, Laoi$1$1;->a:Laoi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string/jumbo v1, "resultCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "errorCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "102000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string/jumbo v1, "MiguUiLoginHelper"

    const-string/jumbo v2, "clean sso success"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0    # "errorCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "MiguUiLoginHelper"

    const-string/jumbo v2, "clean sso fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
