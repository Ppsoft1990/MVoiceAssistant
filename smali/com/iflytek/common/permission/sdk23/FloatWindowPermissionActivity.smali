.class public Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;
.super Landroid/app/Activity;
.source "FloatWindowPermissionActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->a:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030010

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 42
    .local v6, "root":Landroid/view/View;
    const v7, 0x7f0b00b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 43
    .local v3, "message":Landroid/widget/TextView;
    new-instance v4, Landroid/text/SpannableString;

    const-string/jumbo v7, "\u8981\u5141\u8bb8\u7075\u7280\u4f7f\u7528\u60ac\u6d6e\u7a97\u5417\uff1f\u5141\u8bb8\u540e\u80fd\u6b63\u5e38\u4f7f\u7528\u3002"

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 44
    .local v4, "msgText":Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v8, "#ff000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x7

    const/16 v9, 0x21

    invoke-virtual {v4, v7, v11, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 45
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v7, 0x7f0b00b1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 48
    .local v2, "doNotAsk":Landroid/widget/CheckBox;
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "com.iflytek.cmcc.IFLY_FLOAT_WINDOW_PERMISSION_REQUEST_TIMES"

    invoke-virtual {v7, v8, v10}, Lil;->b(Ljava/lang/String;I)I

    move-result v5

    .line 49
    .local v5, "refuseTimes":I
    if-lt v5, v11, :cond_0

    .line 50
    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 51
    new-instance v7, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$1;

    invoke-direct {v7, p0}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$1;-><init>(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    const-string/jumbo v7, "\u53bb\u5f00\u542f"

    new-instance v8, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$2;

    invoke-direct {v8, p0}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$2;-><init>(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    const-string/jumbo v7, "\u62d2\u7edd"

    new-instance v8, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;

    invoke-direct {v8, p0, v5, v2}, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity$3;-><init>(Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;ILandroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 100
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 103
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/iflytek/common/permission/sdk23/FloatWindowPermissionActivity;->a:Landroid/widget/Button;

    .line 104
    return-void
.end method
