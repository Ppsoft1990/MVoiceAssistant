.class Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;
.super Ljava/lang/Object;
.source "DownloadProgressBodyView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->access$000(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)Lcom/iflytek/base/skin/customView/XImageProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->access$100(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)I

    move-result v2

    if-eq v2, v8, :cond_0

    .line 53
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->access$000(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)Lcom/iflytek/base/skin/customView/XImageProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->access$100(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->setProgress(JJ)V

    .line 54
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-static {v2, v8}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->access$102(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;I)I

    .line 57
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;

    invoke-static {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;->access$000(Lcom/iflytek/viafly/ui/dialog/DownloadProgressBodyView;)Lcom/iflytek/base/skin/customView/XImageProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/skin/customView/XImageProgressBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 61
    .local v1, "tempVto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "tempVto":Landroid/view/ViewTreeObserver;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DownloadProgressBodyView"

    const-string/jumbo v3, "onGlobalLayout()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
