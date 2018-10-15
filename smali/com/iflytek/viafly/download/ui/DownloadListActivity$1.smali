.class Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;
.super Ljava/lang/Object;
.source "DownloadListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/download/ui/DownloadListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 91
    const-string/jumbo v0, "DownloadListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreDraw, mAdapter is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lagi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->b(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lagi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$1;->a:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lagi;

    move-result-object v0

    invoke-virtual {v0}, Lagi;->notifyDataSetChanged()V

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
