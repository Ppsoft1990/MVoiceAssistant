.class public Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "PermissionGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/iflytek/base/skin/customView/XTextView;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->d:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->d:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->a()V

    .line 49
    return-void
.end method

.method private a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030163

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->a:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->a:Landroid/view/View;

    const v2, 0x7f0b07fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    .line 56
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->a:Landroid/view/View;

    const v2, 0x7f0b07fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 58
    const-string/jumbo v0, "<font color=\"#333333\" size=\"28\">\u4e3a\u786e\u4fdd\u63d0\u9192\u6309\u65f6\u54cd\u94c3\uff0c\u8bf7\u5f00\u542f\u76f8\u5173\u6743\u9650\uff0c</font><font color=\"#4282f7\" size=\"28\"><u>\u70b9\u51fb\u8fdb\u5165</u></font>"

    .line 59
    .local v0, "html":Ljava/lang/String;
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 60
    const-string/jumbo v0, "<font color=\"#333333\" size=\"28\">\u4e3a\u786e\u4fdd\u63d0\u9192\u6b63\u5e38\u4f7f\u7528\uff0c\u8bf7\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650\uff0c</font><font color=\"#4282f7\" size=\"28\"><u>\u53bb\u5f00\u542f</u></font>"

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->b:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->c:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->k()V

    .line 68
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_SCHEDULE_PERMiSSION_CLOSED"

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Z)V

    .line 87
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->m()V

    .line 90
    const-string/jumbo v0, "\u53ef\u5728\u7075\u7280\u8bbe\u7f6e\u4e2d\u8fdb\u884c\u6743\u9650\u7ba1\u7406"

    .line 91
    .local v0, "tip":Ljava/lang/String;
    invoke-static {}, Lhl;->k()I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 92
    const-string/jumbo v0, "\u53ef\u5728\u7cfb\u7edf\u8bbe\u7f6e>\u5e94\u7528>\u53f3\u4e0a\u89d2\u8bbe\u7f6e>\u5176\u4ed6\u5e94\u7528\u7684\u4e0a\u5c42\u663e\u793a>\u7075\u7280\u4e2d\u5f00\u542f"

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 99
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->c()V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrj;->d(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->l()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->c()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->b()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f0b07fa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
