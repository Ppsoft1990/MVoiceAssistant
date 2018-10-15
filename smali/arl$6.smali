.class Larl$6;
.super Ljava/lang/Object;
.source "PluginControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->b(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

.field final synthetic b:Larl;


# direct methods
.method constructor <init>(Larl;Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 230
    iput-object p1, p0, Larl$6;->b:Larl;

    iput-object p2, p0, Larl$6;->a:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Larl$6;->a:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dismiss()V

    .line 235
    return-void
.end method
