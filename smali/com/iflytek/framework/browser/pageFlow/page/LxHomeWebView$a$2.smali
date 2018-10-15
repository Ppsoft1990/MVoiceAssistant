.class Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$2;
.super Ljava/lang/Object;
.source "LxHomeWebView.java"

# interfaces
.implements Lve$a;


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
    .line 575
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "channnelId"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string/jumbo v1, "HOMEPAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lve;->a(Landroid/content/Context;)Lve;

    move-result-object v1

    const-string/jumbo v2, "HOMEPAGE"

    invoke-virtual {v1, v2}, Lve;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 581
    .local v0, "bannerDataJsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;

    iget-object v1, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView$a;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshBannerView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxHomeWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 583
    .end local v0    # "bannerDataJsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
