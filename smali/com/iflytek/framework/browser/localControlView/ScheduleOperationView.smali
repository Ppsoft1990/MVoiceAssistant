.class public Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;
.super Lcom/iflytek/framework/browser/localControlView/OperationView;
.source "ScheduleOperationView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/browser/localControlView/OperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/iflytek/framework/browser/localControlView/OperationView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->e()V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrj;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->f()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string/jumbo v0, "schedule"

    invoke-static {p2, v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lrj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->onAttachedToWindow()V

    .line 29
    invoke-direct {p0}, Lcom/iflytek/framework/browser/localControlView/ScheduleOperationView;->j()V

    .line 30
    return-void
.end method
