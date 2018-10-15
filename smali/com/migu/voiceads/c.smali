.class Lcom/migu/voiceads/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/j$a;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/MIGUVideoAd;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/MIGUVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/c;->a:Lcom/migu/voiceads/MIGUVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;I)V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/c;->a:Lcom/migu/voiceads/MIGUVideoAd;

    invoke-static {v0}, Lcom/migu/voiceads/MIGUVideoAd;->access$1(Lcom/migu/voiceads/MIGUVideoAd;)Lcom/migu/voiceads/bussiness/videoad/d;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/migu/voiceads/MIGUAdError;

    invoke-direct {v2, p2}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/migu/voiceads/bussiness/videoad/d;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a([B)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/c;->a:Lcom/migu/voiceads/MIGUVideoAd;

    invoke-static {v1, v0}, Lcom/migu/voiceads/MIGUVideoAd;->access$0(Lcom/migu/voiceads/MIGUVideoAd;Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/migu/voiceads/c;->a:Lcom/migu/voiceads/MIGUVideoAd;

    invoke-static {v1}, Lcom/migu/voiceads/MIGUVideoAd;->access$1(Lcom/migu/voiceads/MIGUVideoAd;)Lcom/migu/voiceads/bussiness/videoad/d;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lcom/migu/voiceads/bussiness/videoad/d;->a(ILjava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/migu/voiceads/c;->a:Lcom/migu/voiceads/MIGUVideoAd;

    invoke-static {v1}, Lcom/migu/voiceads/MIGUVideoAd;->access$1(Lcom/migu/voiceads/MIGUVideoAd;)Lcom/migu/voiceads/bussiness/videoad/d;

    move-result-object v1

    new-instance v2, Lcom/migu/voiceads/MIGUAdError;

    const v3, 0x1155b

    invoke-direct {v2, v3}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Lcom/migu/voiceads/bussiness/videoad/d;->a(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b([B)V
    .locals 0

    return-void
.end method
