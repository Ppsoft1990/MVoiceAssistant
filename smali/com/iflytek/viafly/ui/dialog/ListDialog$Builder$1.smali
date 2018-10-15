.class Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder$1;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

.field final synthetic val$dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;Lcom/iflytek/viafly/ui/dialog/ListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder$1;->this$0:Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder$1;->val$dialog:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->dismiss()V

    .line 214
    return-void
.end method
