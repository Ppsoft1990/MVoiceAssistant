.class Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;
.super Ljava/lang/Object;
.source "LocalBusinessWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    iput-object p2, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    iget-object v1, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->d(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)I

    .line 626
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->e(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView$2;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-static {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b(Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;)V

    .line 630
    :cond_0
    return-void
.end method
