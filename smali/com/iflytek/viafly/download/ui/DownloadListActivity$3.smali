.class Lcom/iflytek/viafly/download/ui/DownloadListActivity$3;
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
    .line 669
    iput-object p1, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$3;->b:Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$3;->a:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadListActivity$3;->a:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialog$Builder;->dismiss()V

    .line 674
    return-void
.end method
