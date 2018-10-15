.class Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;
.super Ljava/lang/Object;
.source "SimpleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->create()Lcom/iflytek/viafly/ui/SimpleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

.field final synthetic val$dialog:Lcom/iflytek/viafly/ui/SimpleDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;Lcom/iflytek/viafly/ui/SimpleDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->access$200(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->access$200(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->access$300(Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/SimpleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog;->dismiss()V

    .line 455
    :cond_1
    return-void
.end method
