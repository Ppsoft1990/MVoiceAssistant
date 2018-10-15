.class Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

.field final synthetic val$dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->access$100(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->access$100(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;Ljava/lang/Object;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog;->dismiss()V

    .line 302
    return-void
.end method
