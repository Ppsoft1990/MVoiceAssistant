.class Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;
.super Lrl;
.source "LxDirectWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;-><init>(Landroid/content/Context;Lcom/iflytek/framework/browser/pageFlow/page/WebInfo;Lrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-direct {p0}, Lrl;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsPlayBegin()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTtsPlayBegin()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->c:I

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a(I)V

    .line 53
    return-void
.end method

.method public onTtsPlayComplete(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTtsPlayComplete()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->b:I

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a(I)V

    .line 59
    return-void
.end method

.method public onTtsPlayInterrupt()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTtsPlayInterrupt()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->b:I

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a(I)V

    .line 65
    return-void
.end method

.method public onTtsPlayPause()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTtsPlayPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->b:I

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a(I)V

    .line 76
    return-void
.end method

.method public onTtsPlayProgress(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTtsPlayProgress()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onTtsPlayResume()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;->a(Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTtsPlayResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget v0, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->c:I

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxDirectWebView$1;->a(I)V

    .line 82
    return-void
.end method
