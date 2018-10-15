.class Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;
.super Ljava/lang/Object;
.source "LxBusinessWebViewComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->viaflyShare(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;->c:Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    iput-object p2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;->c:Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;

    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxBusinessWebViewComponents;->shareToOther(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
