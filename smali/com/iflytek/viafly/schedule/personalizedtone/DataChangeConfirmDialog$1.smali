.class Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$1;
.super Ljava/lang/Object;
.source "DataChangeConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->setResult(I)V

    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$1;->a:Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->finish()V

    .line 46
    return-void
.end method
