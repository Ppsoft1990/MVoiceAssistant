.class Lcom/migu/voiceads/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/InterstitialAdView;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/InterstitialAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/l;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/view/l;->a:Lcom/migu/voiceads/view/InterstitialAdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/InterstitialAdView;->l:Lcom/migu/voiceads/bussiness/d;

    invoke-interface {v0}, Lcom/migu/voiceads/bussiness/d;->a()Z

    return-void
.end method
