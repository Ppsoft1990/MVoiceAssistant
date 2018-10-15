.class Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;
.super Ljava/lang/Object;
.source "DownloadListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/download/ui/DownloadListActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/download/ui/DownloadListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/download/ui/DownloadListActivity;Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;->b:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 681
    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->getSelectedState()Z

    move-result v0

    .line 682
    .local v0, "deleteFile":Z
    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;->b:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;)Lagi;

    move-result-object v4

    invoke-virtual {v4}, Lagi;->f()Ljava/util/ArrayList;

    move-result-object v3

    .line 683
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    const-string/jumbo v4, "DownloadListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tasks size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string/jumbo v4, "DownloadListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 686
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/iflytek/common/download/entities/DownloadInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 688
    .local v1, "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;->b:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-static {v4, v1, v0}, Lcom/iflytek/viafly/download/ui/DownloadListActivity;->a(Lcom/iflytek/viafly/download/ui/DownloadListActivity;Lcom/iflytek/common/download/entities/DownloadInfo;Z)V

    .line 689
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 692
    .end local v1    # "info":Lcom/iflytek/common/download/entities/DownloadInfo;
    :cond_0
    iget-object v4, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$4;->a:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    .line 693
    return-void
.end method
