.class public Lcom/migu/voiceads/MIGUHtmlAd;
.super Ljava/lang/Object;


# instance fields
.field private htmlAd:Lcom/migu/voiceads/bussiness/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUHtmlAdListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/migu/voiceads/bussiness/b/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/migu/voiceads/bussiness/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/migu/voiceads/MIGUHtmlAdListener;)V

    iput-object v0, p0, Lcom/migu/voiceads/MIGUHtmlAd;->htmlAd:Lcom/migu/voiceads/bussiness/b/a;

    return-void
.end method


# virtual methods
.method public backLandingUrl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlAd;->htmlAd:Lcom/migu/voiceads/bussiness/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlAd;->htmlAd:Lcom/migu/voiceads/bussiness/b/a;

    invoke-virtual {v0, p1}, Lcom/migu/voiceads/bussiness/b/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlAd;->htmlAd:Lcom/migu/voiceads/bussiness/b/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/bussiness/b/a;->a()V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlAd;->htmlAd:Lcom/migu/voiceads/bussiness/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlAd;->htmlAd:Lcom/migu/voiceads/bussiness/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/migu/voiceads/bussiness/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
