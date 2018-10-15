.class Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setNegativeButton(Landroid/widget/Button;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->access$400(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;->this$0:Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->access$400(Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;->val$dialog:Landroid/app/Dialog;

    const/4 v2, -0x2

    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 426
    invoke-interface {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;Ljava/lang/Object;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 430
    return-void
.end method
