.class public Lcom/migu/voiceads/MIGUNativeAd;
.super Ljava/lang/Object;


# instance fields
.field private nativeAd:Lcom/migu/voiceads/bussiness/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUNativeAdListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/migu/voiceads/bussiness/c/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/migu/voiceads/bussiness/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUNativeAdListener;)V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUNativeAd;->nativeAd:Lcom/migu/voiceads/bussiness/c/a;

    return-void
.end method


# virtual methods
.method public backLandingUrl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUNativeAd;->nativeAd:Lcom/migu/voiceads/bussiness/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUNativeAd;->nativeAd:Lcom/migu/voiceads/bussiness/c/a;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/bussiness/c/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public loadAd(I)V
    .locals 2

    const/16 v1, 0x1e

    const/4 v0, 0x1

    if-le p1, v1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/migu/voiceads/MIGUNativeAd;->nativeAd:Lcom/migu/voiceads/bussiness/c/a;

    invoke-virtual {v1, v0}, Lcom/migu/voiceads/bussiness/c/a;->a(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUNativeAd;->nativeAd:Lcom/migu/voiceads/bussiness/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUNativeAd;->nativeAd:Lcom/migu/voiceads/bussiness/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/bussiness/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
