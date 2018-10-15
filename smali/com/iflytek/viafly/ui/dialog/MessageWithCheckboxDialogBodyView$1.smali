.class Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;
.super Ljava/lang/Object;
.source "MessageWithCheckboxDialogBodyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$000(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$002(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;Z)Z

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$000(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$100(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v3, "image.ic_checkbox_carmode_sel_new"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$200(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iget-object v3, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v3}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$200(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v4}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$000(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v0, v3, v1}, Lil;->a(Ljava/lang/String;Z)V

    .line 77
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 67
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView$1;->this$0:Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;->access$100(Lcom/iflytek/viafly/ui/dialog/MessageWithCheckboxDialogBodyView;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v3, "image.ic_checkbox_carmode_nor_new"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 75
    goto :goto_2
.end method
