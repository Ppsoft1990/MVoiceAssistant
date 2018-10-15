.class Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;
.super Ljava/lang/Object;
.source "BannerADDataManager.java"

# interfaces
.implements Lcom/migu/voiceads/MIGUNativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ad/business/BannerADDataManager;->requestMiguBySDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V
    .locals 2
    .param p1, "error"    # Lcom/migu/voiceads/MIGUAdError;

    .prologue
    .line 345
    const-string/jumbo v0, "BannerADDataManager"

    const-string/jumbo v1, "MIGU SDK onAdLoaded Fail"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    iget-object v1, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    invoke-static {v1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->access$000(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V

    .line 347
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 4
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
    .line 352
    .local p1, "lst":Ljava/util/List;, "Ljava/util/List<Lcom/migu/voiceads/MIGUNativeAdDataRef;>;"
    const-string/jumbo v2, "BannerADDataManager"

    const-string/jumbo v3, "MIGU SDK onAdLoaded Success"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 356
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/migu/voiceads/MIGUNativeAdDataRef;

    .line 358
    .local v1, "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    invoke-static {v1}, Ltw;->a(Lcom/migu/voiceads/MIGUNativeAdDataRef;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->hasFirstPlantAd(Lcom/migu/voiceads/MIGUNativeAdDataRef;)V

    .line 365
    .end local v0    # "i":I
    .end local v1    # "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    :goto_1
    return-void

    .line 354
    .restart local v0    # "i":I
    .restart local v1    # "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "i":I
    .end local v1    # "result":Lcom/migu/voiceads/MIGUNativeAdDataRef;
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    iget-object v3, p0, Lcom/iflytek/viafly/ad/business/BannerADDataManager$1;->this$0:Lcom/iflytek/viafly/ad/business/BannerADDataManager;

    invoke-static {v3}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->access$000(Lcom/iflytek/viafly/ad/business/BannerADDataManager;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ad/business/BannerADDataManager;->noFirstPlantAd(Lorg/json/JSONArray;)V

    goto :goto_1
.end method
