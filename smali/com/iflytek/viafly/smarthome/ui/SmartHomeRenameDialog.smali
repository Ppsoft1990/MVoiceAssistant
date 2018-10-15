.class public Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;
.super Landroid/app/Dialog;
.source "SmartHomeRenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartHomeRenameDialog"


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mConfirmBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/widget/EditText;

.field private mIdentity:Ljava/lang/String;

.field private mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const v0, 0x7f08000a

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/framework/browser/localControlView/OperationView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "operationView"    # Lcom/iflytek/framework/browser/localControlView/OperationView;

    .prologue
    .line 42
    const v0, 0x7f08000a

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mIdentity:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 45
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v2, 0x23

    const/4 v3, 0x0

    .line 61
    const v0, 0x7f030124

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->setContentView(I)V

    .line 62
    const v0, 0x7f0b068c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mCancelBtn:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0b068d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mConfirmBtn:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0b068b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mDeviceName:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0b068a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mTitle:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mConfirmBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "SmartHomeRenameDialog"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 88
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mCancelBtn:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->dismiss()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mConfirmBtn:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mDeviceName:Landroid/widget/EditText;

    .line 96
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u8bbe\u5907\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mIdentity:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->onRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mOperationView:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateItemText(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->mDeviceName:Landroid/widget/EditText;

    .line 106
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02043b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->initView()V

    .line 58
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeRenameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
