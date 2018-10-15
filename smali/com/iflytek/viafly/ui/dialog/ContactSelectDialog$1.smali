.class Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$1;
.super Ljava/lang/Object;
.source "ContactSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$1;->this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->dismiss()V

    .line 134
    return-void
.end method
