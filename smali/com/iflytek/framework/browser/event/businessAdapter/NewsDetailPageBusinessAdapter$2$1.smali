.class Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2$1;
.super Ljava/lang/Object;
.source "NewsDetailPageBusinessAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->onTtsPlayComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;

    iget-object v0, v0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$2;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v0}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->p(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u64ad\u653e\u51fa\u9519"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    return-void
.end method
