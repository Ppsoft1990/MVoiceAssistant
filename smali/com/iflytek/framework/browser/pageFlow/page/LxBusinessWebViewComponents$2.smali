.class Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$2;
.super Ljava/lang/Object;
.source "LxBusinessWebViewComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->showMockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 517
    const-string/jumbo v0, "BusinessViewComponents"

    const-string/jumbo v1, "MockDialogForInputUtil.showMockDialog(mActivity) is invoded"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$2;->a:Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    invoke-static {v0}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->access$000(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lazp;->a(Landroid/content/Context;)V

    .line 519
    return-void
.end method
