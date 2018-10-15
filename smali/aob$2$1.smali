.class Laob$2$1;
.super Ljava/lang/Object;
.source "MiguAuthHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laob$2;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laob$2;


# direct methods
.method constructor <init>(Laob$2;)V
    .locals 0
    .param p1, "this$1"    # Laob$2;

    .prologue
    .line 363
    iput-object p1, p0, Laob$2$1;->a:Laob$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-object v1, p0, Laob$2$1;->a:Laob$2;

    iget-object v1, v1, Laob$2;->a:Laob;

    invoke-static {v1, v3}, Laob;->a(Laob;Z)Z

    .line 367
    if-eqz p1, :cond_0

    .line 368
    const-string/jumbo v1, "resultCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "errorCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "102000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const-string/jumbo v1, "MiguAuthHelper"

    const-string/jumbo v2, "clean sso success,retry..."

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Laob$2$1;->a:Laob$2;

    iget-object v1, v1, Laob$2;->a:Laob;

    invoke-static {v1}, Laob;->c(Laob;)I

    .line 372
    iget-object v1, p0, Laob$2$1;->a:Laob$2;

    iget-object v1, v1, Laob$2;->a:Laob;

    invoke-static {v1, v3}, Laob;->b(Laob;Z)V

    .line 374
    const-string/jumbo v1, "MiguAuthHelper"

    const-string/jumbo v2, "start auto with 3S later"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Laob$2$1;->a:Laob$2;

    iget-object v1, v1, Laob$2;->a:Laob;

    invoke-static {v1}, Laob;->a(Laob;)Laob$a;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Laob$a;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    .end local v0    # "errorCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local v0    # "errorCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "MiguAuthHelper"

    const-string/jumbo v2, "clean sso fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Laob$2$1;->a:Laob$2;

    iget-object v1, v1, Laob$2;->a:Laob;

    invoke-static {v1}, Laob;->c(Laob;)I

    .line 380
    iget-object v1, p0, Laob$2$1;->a:Laob$2;

    iget-object v1, v1, Laob$2;->a:Laob;

    const/16 v2, 0x7df

    invoke-static {v1, v2}, Laob;->a(Laob;I)V

    goto :goto_0
.end method
