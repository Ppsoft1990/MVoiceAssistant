.class public Lcom/migu/voiceads/MIGUHtmlJavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field private mMiguHtmlAdDataRef:Lcom/migu/voiceads/MIGUHtmlAdDataRef;


# direct methods
.method public constructor <init>(Lcom/migu/voiceads/MIGUHtmlAdDataRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/voiceads/MIGUHtmlJavaScriptInterface;->mMiguHtmlAdDataRef:Lcom/migu/voiceads/MIGUHtmlAdDataRef;

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlJavaScriptInterface;->mMiguHtmlAdDataRef:Lcom/migu/voiceads/MIGUHtmlAdDataRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlJavaScriptInterface;->mMiguHtmlAdDataRef:Lcom/migu/voiceads/MIGUHtmlAdDataRef;

    invoke-virtual {v0}, Lcom/migu/voiceads/MIGUHtmlAdDataRef;->b()V

    :cond_0
    return-void
.end method

.method public onExposured()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "migu"

    const-string/jumbo v1, "onExposured"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlJavaScriptInterface;->mMiguHtmlAdDataRef:Lcom/migu/voiceads/MIGUHtmlAdDataRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/MIGUHtmlJavaScriptInterface;->mMiguHtmlAdDataRef:Lcom/migu/voiceads/MIGUHtmlAdDataRef;

    invoke-virtual {v0}, Lcom/migu/voiceads/MIGUHtmlAdDataRef;->a()V

    :cond_0
    return-void
.end method
