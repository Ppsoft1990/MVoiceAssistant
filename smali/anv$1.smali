.class Lanv$1;
.super Ljava/lang/Object;
.source "BookTokenHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanv;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanv;


# direct methods
.method constructor <init>(Lanv;)V
    .locals 0
    .param p1, "this$0"    # Lanv;

    .prologue
    .line 203
    iput-object p1, p0, Lanv$1;->a:Lanv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 206
    iget-object v1, p0, Lanv$1;->a:Lanv;

    invoke-static {v1}, Lanv;->a(Lanv;)Lanv$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    const-string/jumbo v1, "BookTokenHelper"

    const-string/jumbo v2, "remove time out handler"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lanv$1;->a:Lanv;

    invoke-static {v1}, Lanv;->a(Lanv;)Lanv$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lanv$a;->removeMessages(I)V

    .line 210
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v1, "resultCode"

    const/4 v2, -0x1

    .line 211
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0x18e70

    if-ne v1, v2, :cond_2

    .line 213
    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    const-string/jumbo v1, "BookTokenHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "login: get Migu Token success , token is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lanv$1;->a:Lanv;

    invoke-static {v1}, Lanv;->b(Lanv;)Lant;

    move-result-object v1

    if-nez v1, :cond_1

    .line 218
    iget-object v1, p0, Lanv$1;->a:Lanv;

    new-instance v2, Lant;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lanv$1;->a:Lanv;

    invoke-static {v4}, Lanv;->c(Lanv;)Lyn;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lant;-><init>(Landroid/content/Context;Lyn;)V

    invoke-static {v1, v2}, Lanv;->a(Lanv;Lant;)Lant;

    .line 220
    :cond_1
    iget-object v1, p0, Lanv$1;->a:Lanv;

    invoke-static {v1}, Lanv;->b(Lanv;)Lant;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lant;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 225
    .end local v0    # "token":Ljava/lang/String;
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-object v1, p0, Lanv$1;->a:Lanv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lanv;->a(Lanv;Z)Z

    goto :goto_0
.end method
