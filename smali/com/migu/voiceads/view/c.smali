.class Lcom/migu/voiceads/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/j$a;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/AdView;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/c;->a:Lcom/migu/voiceads/view/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;I)V
    .locals 2

    iget-object v0, p0, Lcom/migu/voiceads/view/c;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    return-void
.end method

.method public a([B)V
    .locals 4

    const/4 v3, 0x5

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/view/c;->a:Lcom/migu/voiceads/view/AdView;

    invoke-static {v1, v0}, Lcom/migu/voiceads/view/AdView;->a(Lcom/migu/voiceads/view/AdView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Invalid response data!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/migu/voiceads/MIGUAdError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/view/c;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v1, v1, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    invoke-virtual {v0}, Lcom/migu/voiceads/MIGUAdError;->getErrorCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/view/c;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v1, v1, Lcom/migu/voiceads/view/AdView;->m:Lcom/migu/voiceads/bussiness/b;

    const v2, 0x1155b

    invoke-virtual {v1, v3, v2}, Lcom/migu/voiceads/bussiness/b;->a(II)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b([B)V
    .locals 0

    return-void
.end method
