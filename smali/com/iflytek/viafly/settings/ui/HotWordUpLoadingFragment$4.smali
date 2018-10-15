.class Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$4;
.super Ljava/lang/Object;
.source "HotWordUpLoadingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->onStartUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dlg"    # Landroid/content/DialogInterface;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;->access$502(Lcom/iflytek/viafly/settings/ui/HotWordUpLoadingFragment;Z)Z

    .line 276
    const-string/jumbo v0, "HotWordUpLoadingActivity"

    const-string/jumbo v1, "mProgressDlg onCancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method
