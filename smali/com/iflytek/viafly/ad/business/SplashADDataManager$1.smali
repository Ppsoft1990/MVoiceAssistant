.class Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;
.super Ljava/lang/Object;
.source "SplashADDataManager.java"

# interfaces
.implements Lcom/migu/voiceads/MIGUNativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ad/business/SplashADDataManager;->requestMiguBySDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ad/business/SplashADDataManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ad/business/SplashADDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V
    .locals 3
    .param p1, "error"    # Lcom/migu/voiceads/MIGUAdError;

    .prologue
    const/4 v2, 0x0

    .line 293
    const-string/jumbo v0, "SplashADDataManager"

    const-string/jumbo v1, "get Migu Ad By SDK error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    invoke-static {v0, v2, v2}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->access$000(Lcom/iflytek/viafly/ad/business/SplashADDataManager;Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    .line 295
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/migu/voiceads/MIGUNativeAdDataRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "lst":Ljava/util/List;, "Ljava/util/List<Lcom/migu/voiceads/MIGUNativeAdDataRef;>;"
    const/4 v4, 0x0

    .line 299
    const-string/jumbo v2, "SplashADDataManager"

    const-string/jumbo v3, "get Migu Ad By SDK Success"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 303
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .line 305
    .local v1, "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    invoke-static {v1}, Ltw;->a(Lcom/migu/voiceads/MIGUNativeAdDataRef;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->access$100(Lcom/iflytek/viafly/ad/business/SplashADDataManager;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    .line 312
    .end local v0    # "i":I
    .end local v1    # "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    :goto_1
    return-void

    .line 301
    .restart local v0    # "i":I
    .restart local v1    # "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    .end local v1    # "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/SplashADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/SplashADDataManager;

    invoke-static {v2, v4, v4}, Lcom/iflytek/viafly/ad/business/SplashADDataManager;->access$000(Lcom/iflytek/viafly/ad/business/SplashADDataManager;Lorg/json/JSONObject;Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    goto :goto_1
.end method
