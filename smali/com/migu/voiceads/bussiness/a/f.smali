.class Lcom/migu/voiceads/bussiness/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/j$a;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/bussiness/a/e;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/bussiness/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/a/e;->a(Lcom/migu/voiceads/bussiness/a/e;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/migu/voiceads/MIGUAdError;

    invoke-direct {v0, p2}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-static {v1}, Lcom/migu/voiceads/bussiness/a/e;->b(Lcom/migu/voiceads/bussiness/a/e;)Lcom/migu/voiceads/bussiness/a/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-static {v0}, Lcom/migu/voiceads/bussiness/a/e;->a(Lcom/migu/voiceads/bussiness/a/e;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-static {v1, v0}, Lcom/migu/voiceads/bussiness/a/e;->a(Lcom/migu/voiceads/bussiness/a/e;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/migu/voiceads/MIGUAdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-static {v1}, Lcom/migu/voiceads/bussiness/a/e;->b(Lcom/migu/voiceads/bussiness/a/e;)Lcom/migu/voiceads/bussiness/a/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Invalid response data!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/migu/voiceads/MIGUAdError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/migu/voiceads/MIGUAdError;

    const v2, 0x1155b

    invoke-direct {v1, v2}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    iget-object v2, p0, Lcom/migu/voiceads/bussiness/a/f;->a:Lcom/migu/voiceads/bussiness/a/e;

    invoke-static {v2}, Lcom/migu/voiceads/bussiness/a/e;->b(Lcom/migu/voiceads/bussiness/a/e;)Lcom/migu/voiceads/bussiness/a/c;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/migu/voiceads/bussiness/a/c;->a(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b([B)V
    .locals 0

    return-void
.end method
