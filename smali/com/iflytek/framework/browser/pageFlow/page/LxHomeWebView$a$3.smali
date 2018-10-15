.class Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$3;
.super Ljava/lang/Object;
.source "LxHomeWebView.java"

# interfaces
.implements Lvh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$3;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/String;)V
    .locals 0
    .param p1, "failType"    # Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .param p2, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 607
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$3;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v0, v0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshBannerImage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 602
    :cond_0
    return-void
.end method
