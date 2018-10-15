.class Lcom/migu/voiceads/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/view/AdView;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/view/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->d()V

    iget-object v0, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->j()V

    iget-object v0, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    invoke-virtual {v0}, Lcom/migu/voiceads/view/AdView;->h()V

    iget-object v0, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    invoke-interface {v0}, Lcom/migu/voiceads/MIGUAdListener;->onAdExposure()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/view/g;->a:Lcom/migu/voiceads/view/AdView;

    iget-object v0, v0, Lcom/migu/voiceads/view/AdView;->k:Lcom/migu/voiceads/MIGUAdListener;

    new-instance v1, Lcom/migu/voiceads/MIGUAdError;

    const v2, 0x1155a

    invoke-direct {v1, v2}, Lcom/migu/voiceads/MIGUAdError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/migu/voiceads/MIGUAdListener;->onAdFailed(Lcom/migu/voiceads/MIGUAdError;)V

    const-string/jumbo v0, "Ad_Android_SDK"

    const-string/jumbo v1, "Ad is invisible, invalid exposure!"

    invoke-static {v0, v1}, Lcom/migu/voiceads/utils/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
