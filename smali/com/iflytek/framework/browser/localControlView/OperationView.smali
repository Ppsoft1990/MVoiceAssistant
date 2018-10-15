.class public Lcom/iflytek/framework/browser/localControlView/OperationView;
.super Landroid/widget/LinearLayout;
.source "OperationView.java"

# interfaces
.implements Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;
.implements Lcom/iflytek/framework/ui/container/WidgetContainerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/browser/localControlView/OperationView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

.field private b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

.field private c:Lcom/iflytek/framework/browser/localControlView/OperationView$a;

.field private d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "focus"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p3}, Lcom/iflytek/framework/browser/localControlView/OperationView;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/iflytek/framework/browser/localControlView/OperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/iflytek/yd/util/UIUtil;->closeLayerHardware(Landroid/view/View;)V

    .line 58
    :cond_1
    invoke-static {p1, p2}, Lqo;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    .line 59
    new-instance v0, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->setOrientation(I)V

    .line 61
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    invoke-virtual {v0, p0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->setOperationTitleEventListener(Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle$a;)V

    .line 63
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->addView(Landroid/view/View;)V

    .line 65
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/framework/browser/localControlView/OperationView;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    invoke-direct {v0, p1}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    .line 78
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->f()V

    .line 124
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string/jumbo v0, "tag_opetation_translate_title_back"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tag_opetation_call_title_back"

    .line 146
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tag_opetation_schedule_title_back"

    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tag_opetation_smarthome_title_back"

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->c:Lcom/iflytek/framework/browser/localControlView/OperationView$a;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->c:Lcom/iflytek/framework/browser/localControlView/OperationView$a;

    invoke-interface {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView$a;->a()V

    .line 153
    :cond_1
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public addDisplayComponent(Lcom/iflytek/framework/ui/DisplayComponent;)V
    .locals 1
    .param p1, "displayComponent"    # Lcom/iflytek/framework/ui/DisplayComponent;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Lcom/iflytek/framework/ui/DisplayComponent;)V

    .line 89
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->cancel_local_business:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public changeSkin()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a()V

    .line 114
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->showOrHideMenu()V

    .line 162
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->setVisibility(I)V

    .line 168
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAddDisplayComponent()Lcom/iflytek/framework/ui/DisplayComponent;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getCurrentAddDisplayComponent()Lcom/iflytek/framework/ui/DisplayComponent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayComponentCounts()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->getDisplayComponentCounts()I

    move-result v0

    return v0
.end method

.method public getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    return-object v0
.end method

.method public getOpetationTitle()Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->d:Lcom/iflytek/framework/browser/pageFlow/page/PermissionGuideView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->a:Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/pageFlow/titleBar/AbsOperationTitle;->refreshTitle()V

    .line 192
    :cond_0
    return-void
.end method

.method public onTouchEventFromChild(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeCurrentAddDisplayComponent()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->b:Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 94
    return-void
.end method

.method public setOperationViewEventListener(Lcom/iflytek/framework/browser/localControlView/OperationView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/iflytek/framework/browser/localControlView/OperationView$a;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/framework/browser/localControlView/OperationView;->c:Lcom/iflytek/framework/browser/localControlView/OperationView$a;

    .line 51
    return-void
.end method
