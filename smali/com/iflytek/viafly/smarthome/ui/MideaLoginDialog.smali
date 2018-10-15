.class public Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;
.super Landroid/app/Dialog;
.source "MideaLoginDialog.java"

# interfaces
.implements Lcom/iflytek/viafly/smarthome/base/LoginListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MideaLoginActivity"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnLogin:Landroid/widget/Button;

.field private etPassword:Landroid/widget/EditText;

.field private etPhone:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->onClickLogin(Landroid/view/View;)V

    return-void
.end method

.method private initUI()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 49
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 50
    .local v4, "rootview":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setFormat(I)V

    .line 52
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->setContentView(Landroid/view/View;)V

    .line 56
    const v5, 0x7f0b00a6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->etPhone:Landroid/widget/EditText;

    .line 57
    const v5, 0x7f0b00a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->etPassword:Landroid/widget/EditText;

    .line 59
    const v5, 0x7f0b00a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->btnLogin:Landroid/widget/Button;

    .line 60
    const v5, 0x7f0b00a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->btnCancel:Landroid/widget/Button;

    .line 62
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->btnLogin:Landroid/widget/Button;

    new-instance v6, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$1;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$1;-><init>(Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v5, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->btnCancel:Landroid/widget/Button;

    new-instance v6, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$2;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog$2;-><init>(Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 77
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 78
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 80
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    return-void
.end method

.method private onClickLogin(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 84
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->etPhone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "phone":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "password":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u7528\u6237\u540d\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u5bc6\u7801\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->loginMideaAccount(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/viafly/smarthome/base/LoginListener;)V

    .line 97
    const-string/jumbo v2, "\u6b63\u5728\u767b\u9646"

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->showProgressBar(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected dismissProgressBar()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Laao;->a()Laao;

    move-result-object v0

    invoke-virtual {v0}, Laao;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Laao;->a()Laao;

    move-result-object v0

    invoke-virtual {v0}, Laao;->b()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->initUI()V

    .line 45
    return-void
.end method

.method public onLoginFailed(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->dismissProgressBar()V

    .line 129
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u9646\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void
.end method

.method public onLoginSuccess()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->dismissProgressBar()V

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u9646\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->onMideaLoginSuccess()V

    .line 123
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->dismiss()V

    .line 124
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 104
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->dismissProgressBar()V

    .line 105
    return-void
.end method

.method protected showProgressBar(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {}, Laao;->a()Laao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Laao;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method
