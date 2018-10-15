.class Lcom/migu/voiceads/utils/browser/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;


# direct methods
.method constructor <init>(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/browser/d;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/d;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->g(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/d;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-static {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->h(Lcom/migu/voiceads/utils/browser/MIGUBrowser;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/browser/d;->a:Lcom/migu/voiceads/utils/browser/MIGUBrowser;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/browser/MIGUBrowser;->finish()V

    goto :goto_0
.end method
