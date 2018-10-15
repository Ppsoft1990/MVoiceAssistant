.class public Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;
.super Lcom/iflytek/viafly/ui/activity/BaseDialog;
.source "DataChangeConfirmDialog.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XButton;

.field private b:Lcom/iflytek/base/skin/customView/XButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a:Lcom/iflytek/base/skin/customView/XButton;

    .line 25
    iput-object v0, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->b:Lcom/iflytek/base/skin/customView/XButton;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 30
    const-string/jumbo v2, "DataChangeConfirmDialog"

    const-string/jumbo v3, "initUi"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const v2, 0x7f030103

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->setContentView(I)V

    .line 33
    const v2, 0x7f0b0602

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    .line 34
    .local v1, "title":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v2, 0x7f0b03a7

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->b:Lcom/iflytek/base/skin/customView/XButton;

    .line 37
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->b:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v3, "\u9000\u51fa"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->b:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v3, "statelist.dialog_btn_warn_status"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 40
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->b:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v3, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$1;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v2, 0x7f0b03a6

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a:Lcom/iflytek/base/skin/customView/XButton;

    .line 50
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v3, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog$2;-><init>(Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v3, "statelist.dialog_btn_cancel_status"

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/base/skin/customView/XButton;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 60
    const v2, 0x7f0b03a4

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    .line 61
    .local v0, "content":Lcom/iflytek/base/skin/customView/XTextView;
    const-string/jumbo v2, "\u5185\u5bb9\u7f16\u8f91\u672a\u5b8c\u6210\uff0c\u662f\u5426\u9000\u51fa\uff1f"

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    return-void
.end method

.method protected registerListener()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected setView()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/personalizedtone/DataChangeConfirmDialog;->a()V

    .line 73
    return-void
.end method
