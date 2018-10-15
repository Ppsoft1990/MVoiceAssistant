.class Laoi$8;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi;


# direct methods
.method constructor <init>(Laoi;)V
    .locals 0
    .param p1, "this$0"    # Laoi;

    .prologue
    .line 460
    iput-object p1, p0, Laoi$8;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, -0x1

    .line 463
    const-string/jumbo v1, "MiguUiLoginHelper"

    const-string/jumbo v2, "onGetTokenComplete"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz p1, :cond_1

    const-string/jumbo v1, "resultCode"

    .line 465
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0x18e70

    if-ne v1, v2, :cond_1

    .line 467
    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "token":Ljava/lang/String;
    const-string/jumbo v1, "MiguUiLoginHelper"

    const-string/jumbo v2, "onGetTokenComplete success"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    iget-object v1, p0, Laoi$8;->a:Laoi;

    invoke-static {v1}, Laoi;->c(Laoi;)Lanz;

    move-result-object v1

    if-nez v1, :cond_0

    .line 471
    iget-object v1, p0, Laoi$8;->a:Laoi;

    new-instance v2, Lanz;

    iget-object v3, p0, Laoi$8;->a:Laoi;

    invoke-static {v3}, Laoi;->b(Laoi;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Laoi$8;->a:Laoi;

    .line 472
    invoke-static {v4}, Laoi;->d(Laoi;)Lyn;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lanz;-><init>(Landroid/content/Context;Lyn;)V

    .line 471
    invoke-static {v1, v2}, Laoi;->a(Laoi;Lanz;)Lanz;

    .line 474
    :cond_0
    iget-object v1, p0, Laoi$8;->a:Laoi;

    invoke-static {v1}, Laoi;->c(Laoi;)Lanz;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v0, v2, v5}, Lanz;->a(Ljava/lang/String;Ljava/lang/String;I)J

    .line 478
    .end local v0    # "token":Ljava/lang/String;
    :cond_1
    return-void
.end method
