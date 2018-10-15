.class Laob$1;
.super Ljava/lang/Object;
.source "MiguAuthHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laob;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laob;


# direct methods
.method constructor <init>(Laob;)V
    .locals 0
    .param p1, "this$0"    # Laob;

    .prologue
    .line 214
    iput-object p1, p0, Laob$1;->a:Laob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    iget-object v1, p0, Laob$1;->a:Laob;

    invoke-static {v1}, Laob;->a(Laob;)Laob$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    const-string/jumbo v1, "MiguAuthHelper"

    const-string/jumbo v2, "remove time out handler"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Laob$1;->a:Laob;

    invoke-static {v1}, Laob;->a(Laob;)Laob$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Laob$a;->removeMessages(I)V

    .line 221
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "resultCode"

    const/4 v2, -0x1

    .line 222
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0x18e70

    if-ne v1, v2, :cond_1

    .line 224
    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    const-string/jumbo v1, "MiguAuthHelper"

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

    .line 227
    iget-object v1, p0, Laob$1;->a:Laob;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Laob;->a(Laob;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Laob$1;->a:Laob;

    invoke-virtual {v1, v0}, Laob;->a(Ljava/lang/String;)V

    .line 237
    .end local v0    # "token":Ljava/lang/String;
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Laob$1;->a:Laob;

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Laob;->a(Laob;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "MiguAuthHelper"

    const-string/jumbo v2, "login: get Migu info fail"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Laob$1;->a:Laob;

    const/16 v2, 0x7d6

    invoke-static {v1, v2}, Laob;->a(Laob;I)V

    goto :goto_0
.end method
