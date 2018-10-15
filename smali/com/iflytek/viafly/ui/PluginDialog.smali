.class public Lcom/iflytek/viafly/ui/PluginDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PluginDialog.java"


# static fields
.field private static final CONTENT_VIEW_ID:I = 0x6f0b0189

.field private static final TAG:Ljava/lang/String; = "PluginDialog"

.field private static mFragment:Lcom/iflytek/yd/ui/BaseFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static attachFragment(Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 0
    .param p0, "fragment"    # Lcom/iflytek/yd/ui/BaseFragment;

    .prologue
    .line 30
    sput-object p0, Lcom/iflytek/viafly/ui/PluginDialog;->mFragment:Lcom/iflytek/yd/ui/BaseFragment;

    .line 31
    return-void
.end method

.method private perform()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginDialog;->getSupportFragmentManager()Lh;

    move-result-object v2

    invoke-virtual {v2}, Lh;->a()Lj;

    move-result-object v1

    .line 73
    .local v1, "fragmentTransaction":Lj;
    const v2, 0x6f0b0189

    sget-object v3, Lcom/iflytek/viafly/ui/PluginDialog;->mFragment:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v1, v2, v3}, Lj;->a(ILandroid/support/v4/app/Fragment;)Lj;

    .line 74
    invoke-virtual {v1}, Lj;->a()I

    .line 75
    const/4 v2, 0x0

    sput-object v2, Lcom/iflytek/viafly/ui/PluginDialog;->mFragment:Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "fragmentTransaction":Lj;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginDialog"

    const-string/jumbo v3, "perform()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/PluginDialog;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/PluginDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "contentView":Landroid/widget/RelativeLayout;
    const v2, 0x6f0b0189

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/PluginDialog;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/PluginDialog;->perform()V

    .line 49
    return-void

    .line 40
    .end local v0    # "contentView":Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PluginDialog"

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/PluginDialog;->perform()V

    .line 56
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 67
    const-string/jumbo v0, "PluginDialog"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 61
    const-string/jumbo v0, "PluginDialog"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
