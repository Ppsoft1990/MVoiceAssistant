.class public Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ScheduleDelayGuideActivity.java"


# instance fields
.field private a:Lcom/iflytek/base/skin/customView/XButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a:Lcom/iflytek/base/skin/customView/XButton;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;)Lcom/iflytek/base/skin/customView/XButton;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->b()V

    .line 51
    const v1, 0x7f0b0575

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a:Lcom/iflytek/base/skin/customView/XButton;

    .line 52
    invoke-static {}, Laqv;->a()Laqv;

    move-result-object v1

    const-string/jumbo v2, "bootcomplete|bootbackground"

    invoke-virtual {v1, p0, v2}, Laqv;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const v1, 0x7f0b0574

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a:Lcom/iflytek/base/skin/customView/XButton;

    const-string/jumbo v2, "\u77e5\u9053\u4e86"

    invoke-virtual {v1, v2}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "ScheduleDelayGuideActivity"

    const-string/jumbo v1, "setTitle()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$1;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$2;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0300e6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->a()V

    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->c()V

    .line 44
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
