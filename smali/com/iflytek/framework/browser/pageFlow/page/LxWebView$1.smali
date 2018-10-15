.class Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;
.super Ljava/lang/Object;
.source "LxWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->g:Z

    .line 148
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    const-string/jumbo v1, "LxWebView"

    const-string/jumbo v2, "webview OnTouchListener requestFocus"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView$1;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    invoke-virtual {v1}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "LxWebView"

    const-string/jumbo v2, "onTouch error"

    invoke-static {v1, v2, v0}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
